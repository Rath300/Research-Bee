import { z } from 'zod';
import { router, protectedProcedure } from '../trpc';
import { TRPCError } from '@trpc/server';

const profileSummarySchema = z.object({
  id: z.string().uuid(),
  first_name: z.string().nullable().optional(),
  last_name: z.string().nullable().optional(),
  full_name: z.string().nullable().optional(),
  title: z.string().nullable().optional(),
  bio: z.string().nullable().optional(),
  institution: z.string().nullable().optional(),
  avatar_url: z.string().nullable().optional(),
  interests: z.array(z.string()).nullable().optional(),
  skills: z.array(z.string()).nullable().optional(),
  field_of_study: z.string().nullable().optional(),
});

function orderedPair(a: string, b: string): [string, string] {
  return a < b ? [a, b] : [b, a];
}

async function ensureMatchesRow(
  supabase: any,
  userA: string,
  userB: string
): Promise<string> {
  const [user_id_1, user_id_2] = orderedPair(userA, userB);

  const { data: existing, error: fetchError } = await supabase
    .from('matches')
    .select('id')
    .eq('user_id_1', user_id_1)
    .eq('user_id_2', user_id_2)
    .maybeSingle();

  if (fetchError) {
    throw new TRPCError({
      code: 'INTERNAL_SERVER_ERROR',
      message: 'Failed to look up DM thread.',
      cause: fetchError,
    });
  }

  if (existing?.id) return existing.id as string;

  const { data: created, error: createError } = await supabase
    .from('matches')
    .insert({
      user_id_1,
      user_id_2,
      status: 'matched',
      updated_at: new Date().toISOString(),
    })
    .select('id')
    .single();

  if (createError || !created?.id) {
    // Race: another request may have created it
    const { data: raced } = await supabase
      .from('matches')
      .select('id')
      .eq('user_id_1', user_id_1)
      .eq('user_id_2', user_id_2)
      .maybeSingle();
    if (raced?.id) return raced.id as string;

    throw new TRPCError({
      code: 'INTERNAL_SERVER_ERROR',
      message: 'Failed to create DM thread.',
      cause: createError,
    });
  }

  return created.id as string;
}

async function notifyUser(
  supabase: any,
  userId: string,
  senderId: string,
  content: string,
  linkTo: string
) {
  await supabase.from('user_notifications').insert({
    user_id: userId,
    sender_id: senderId,
    type: 'new_direct_match',
    content,
    link_to: linkTo,
    is_read: false,
  });
}

export const matchingRouter = router({
  listCandidates: protectedProcedure
    .output(z.array(profileSummarySchema))
    .query(async ({ ctx }) => {
      const userId = ctx.user.id;

      const { data: interacted, error: interactedError } = await ctx.supabase
        .from('profile_matches')
        .select('matchee_user_id')
        .eq('matcher_user_id', userId);

      if (interactedError) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: 'Failed to load swipe history.',
          cause: interactedError,
        });
      }

      const excludeIds = [userId, ...(interacted ?? []).map((r) => r.matchee_user_id)];

      let query = ctx.supabase
        .from('profiles')
        .select(
          'id, first_name, last_name, full_name, title, bio, institution, avatar_url, interests, skills, field_of_study'
        )
        .neq('id', userId)
        .not('first_name', 'is', null)
        .not('bio', 'is', null)
        .limit(50) as any;

      if (excludeIds.length > 1) {
        query = query.not('id', 'in', `(${excludeIds.join(',')})`);
      }

      const { data, error } = await query;
      if (error) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: 'Failed to load candidates.',
          cause: error,
        });
      }

      return data ?? [];
    }),

  swipe: protectedProcedure
    .input(
      z.object({
        targetUserId: z.string().uuid(),
        direction: z.enum(['left', 'right']),
      })
    )
    .output(
      z.object({
        status: z.enum(['rejected', 'pending', 'matched']),
        isMutual: z.boolean(),
        matchId: z.string().uuid().nullable(),
      })
    )
    .mutation(async ({ ctx, input }) => {
      const userId = ctx.user.id;
      const { targetUserId, direction } = input;

      if (targetUserId === userId) {
        throw new TRPCError({ code: 'BAD_REQUEST', message: 'Cannot swipe on yourself.' });
      }

      if (direction === 'left') {
        const { error } = await ctx.supabase.from('profile_matches').upsert(
          {
            matcher_user_id: userId,
            matchee_user_id: targetUserId,
            status: 'rejected',
          },
          { onConflict: 'matcher_user_id,matchee_user_id' }
        );
        if (error) {
          throw new TRPCError({
            code: 'INTERNAL_SERVER_ERROR',
            message: 'Failed to record rejection.',
            cause: error,
          });
        }
        return { status: 'rejected' as const, isMutual: false, matchId: null };
      }

      // Right swipe — check reverse interest
      const { data: reverse } = await ctx.supabase
        .from('profile_matches')
        .select('id, status')
        .eq('matcher_user_id', targetUserId)
        .eq('matchee_user_id', userId)
        .maybeSingle();

      const isMutual =
        !!reverse && (reverse.status === 'pending' || reverse.status === 'matched');

      if (isMutual) {
        await ctx.supabase.from('profile_matches').upsert(
          {
            matcher_user_id: userId,
            matchee_user_id: targetUserId,
            status: 'matched',
          },
          { onConflict: 'matcher_user_id,matchee_user_id' }
        );
        await ctx.supabase
          .from('profile_matches')
          .update({ status: 'matched' })
          .eq('matcher_user_id', targetUserId)
          .eq('matchee_user_id', userId);

        const matchId = await ensureMatchesRow(ctx.supabase, userId, targetUserId);

        const { data: me } = await ctx.supabase
          .from('profiles')
          .select('first_name, last_name')
          .eq('id', userId)
          .maybeSingle();
        const myName = [me?.first_name, me?.last_name].filter(Boolean).join(' ') || 'Someone';

        await notifyUser(
          ctx.supabase,
          targetUserId,
          userId,
          `${myName} matched with you!`,
          `/chats?matchId=${matchId}`
        );

        return { status: 'matched' as const, isMutual: true, matchId };
      }

      const { error } = await ctx.supabase.from('profile_matches').upsert(
        {
          matcher_user_id: userId,
          matchee_user_id: targetUserId,
          status: 'pending',
        },
        { onConflict: 'matcher_user_id,matchee_user_id' }
      );
      if (error) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: 'Failed to record interest.',
          cause: error,
        });
      }

      return { status: 'pending' as const, isMutual: false, matchId: null };
    }),

  listMatches: protectedProcedure
    .output(
      z.array(
        z.object({
          profile: profileSummarySchema,
          matchedAt: z.string(),
          matchId: z.string().uuid().nullable(),
        })
      )
    )
    .query(async ({ ctx }) => {
      const userId = ctx.user.id;

      const { data: rows, error } = await ctx.supabase
        .from('profile_matches')
        .select('matcher_user_id, matchee_user_id, created_at, status')
        .or(`matcher_user_id.eq.${userId},matchee_user_id.eq.${userId}`)
        .eq('status', 'matched');

      if (error) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: 'Failed to load matches.',
          cause: error,
        });
      }

      const otherIds = Array.from(
        new Set(
          (rows ?? [])
            .map((r) => (r.matcher_user_id === userId ? r.matchee_user_id : r.matcher_user_id))
            .filter(Boolean)
        )
      );

      if (otherIds.length === 0) return [];

      const { data: profiles, error: profilesError } = await ctx.supabase
        .from('profiles')
        .select(
          'id, first_name, last_name, full_name, title, bio, institution, avatar_url, interests, skills, field_of_study'
        )
        .in('id', otherIds);

      if (profilesError) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: 'Failed to load match profiles.',
          cause: profilesError,
        });
      }

      const profileMap = new Map((profiles ?? []).map((p) => [p.id, p]));
      const createdMap = new Map<string, string>();
      for (const r of rows ?? []) {
        const other = r.matcher_user_id === userId ? r.matchee_user_id : r.matcher_user_id;
        if (!createdMap.has(other) || (r.created_at && r.created_at < (createdMap.get(other) ?? ''))) {
          createdMap.set(other, r.created_at);
        }
      }

      const results = [];
      for (const otherId of otherIds) {
        const profile = profileMap.get(otherId);
        if (!profile) continue;
        const matchId = await ensureMatchesRow(ctx.supabase, userId, otherId);
        results.push({
          profile,
          matchedAt: createdMap.get(otherId) ?? new Date().toISOString(),
          matchId,
        });
      }
      return results;
    }),

  listPendingIncoming: protectedProcedure
    .output(
      z.array(
        z.object({
          profile: profileSummarySchema,
          createdAt: z.string(),
        })
      )
    )
    .query(async ({ ctx }) => {
      const userId = ctx.user.id;
      const { data: rows, error } = await ctx.supabase
        .from('profile_matches')
        .select('matcher_user_id, created_at')
        .eq('matchee_user_id', userId)
        .eq('status', 'pending');

      if (error) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: 'Failed to load pending requests.',
          cause: error,
        });
      }

      const ids = (rows ?? []).map((r) => r.matcher_user_id);
      if (ids.length === 0) return [];

      const { data: profiles } = await ctx.supabase
        .from('profiles')
        .select(
          'id, first_name, last_name, full_name, title, bio, institution, avatar_url, interests, skills, field_of_study'
        )
        .in('id', ids);

      const profileMap = new Map((profiles ?? []).map((p) => [p.id, p]));
      return (rows ?? [])
        .map((r) => {
          const profile = profileMap.get(r.matcher_user_id);
          if (!profile) return null;
          return { profile, createdAt: r.created_at };
        })
        .filter(Boolean) as { profile: z.infer<typeof profileSummarySchema>; createdAt: string }[];
    }),

  ensureDmThread: protectedProcedure
    .input(z.object({ partnerId: z.string().uuid() }))
    .output(z.object({ matchId: z.string().uuid() }))
    .mutation(async ({ ctx, input }) => {
      if (input.partnerId === ctx.user.id) {
        throw new TRPCError({ code: 'BAD_REQUEST', message: 'Invalid partner.' });
      }
      const matchId = await ensureMatchesRow(ctx.supabase, ctx.user.id, input.partnerId);
      return { matchId };
    }),

  listConversations: protectedProcedure
    .output(
      z.array(
        z.object({
          matchId: z.string().uuid(),
          partnerId: z.string().uuid(),
          partnerName: z.string(),
          partnerAvatarUrl: z.string().nullable(),
          lastMessage: z.string().nullable(),
          lastMessageAt: z.string().nullable(),
          updatedAt: z.string(),
        })
      )
    )
    .query(async ({ ctx }) => {
      const userId = ctx.user.id;
      const { data: matchRows, error } = await ctx.supabase
        .from('matches')
        .select('id, user_id_1, user_id_2, updated_at, created_at')
        .or(`user_id_1.eq.${userId},user_id_2.eq.${userId}`)
        .order('updated_at', { ascending: false });

      if (error) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: 'Failed to load conversations.',
          cause: error,
        });
      }

      if (!matchRows?.length) return [];

      const partnerIds = matchRows.map((m) =>
        m.user_id_1 === userId ? m.user_id_2 : m.user_id_1
      );

      const { data: profiles } = await ctx.supabase
        .from('profiles')
        .select('id, first_name, last_name, full_name, avatar_url')
        .in('id', partnerIds);

      const profileMap = new Map((profiles ?? []).map((p) => [p.id, p]));

      const conversations = await Promise.all(
        matchRows.map(async (m) => {
          const partnerId = m.user_id_1 === userId ? m.user_id_2 : m.user_id_1;
          const profile = profileMap.get(partnerId);
          const partnerName =
            profile?.full_name ||
            [profile?.first_name, profile?.last_name].filter(Boolean).join(' ') ||
            'Researcher';

          const { data: lastMsg } = await ctx.supabase
            .from('messages')
            .select('content, created_at')
            .eq('match_id', m.id)
            .order('created_at', { ascending: false })
            .limit(1)
            .maybeSingle();

          return {
            matchId: m.id,
            partnerId,
            partnerName,
            partnerAvatarUrl: profile?.avatar_url ?? null,
            lastMessage: lastMsg?.content ?? null,
            lastMessageAt: lastMsg?.created_at ?? null,
            updatedAt: m.updated_at || m.created_at,
          };
        })
      );

      return conversations;
    }),

  listMessages: protectedProcedure
    .input(z.object({ matchId: z.string().uuid() }))
    .output(
      z.array(
        z.object({
          id: z.string().uuid(),
          match_id: z.string().uuid(),
          sender_id: z.string().uuid(),
          receiver_id: z.string().uuid(),
          content: z.string(),
          is_read: z.boolean().nullable(),
          created_at: z.string(),
        })
      )
    )
    .query(async ({ ctx, input }) => {
      const userId = ctx.user.id;
      const { data: match, error: matchError } = await ctx.supabase
        .from('matches')
        .select('id, user_id_1, user_id_2')
        .eq('id', input.matchId)
        .maybeSingle();

      if (matchError || !match) {
        throw new TRPCError({ code: 'NOT_FOUND', message: 'Conversation not found.' });
      }
      if (match.user_id_1 !== userId && match.user_id_2 !== userId) {
        throw new TRPCError({ code: 'FORBIDDEN', message: 'Not a participant.' });
      }

      const { data, error } = await ctx.supabase
        .from('messages')
        .select('*')
        .eq('match_id', input.matchId)
        .order('created_at', { ascending: true });

      if (error) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: 'Failed to load messages.',
          cause: error,
        });
      }

      // Mark received as read
      await ctx.supabase
        .from('messages')
        .update({ is_read: true })
        .eq('match_id', input.matchId)
        .eq('receiver_id', userId)
        .eq('is_read', false);

      return data ?? [];
    }),

  sendMessage: protectedProcedure
    .input(
      z.object({
        matchId: z.string().uuid(),
        content: z.string().min(1).max(5000),
      })
    )
    .output(
      z.object({
        id: z.string().uuid(),
        match_id: z.string().uuid(),
        sender_id: z.string().uuid(),
        receiver_id: z.string().uuid(),
        content: z.string(),
        is_read: z.boolean().nullable(),
        created_at: z.string(),
      })
    )
    .mutation(async ({ ctx, input }) => {
      const userId = ctx.user.id;
      const { data: match, error: matchError } = await ctx.supabase
        .from('matches')
        .select('id, user_id_1, user_id_2')
        .eq('id', input.matchId)
        .maybeSingle();

      if (matchError || !match) {
        throw new TRPCError({ code: 'NOT_FOUND', message: 'Conversation not found.' });
      }
      if (match.user_id_1 !== userId && match.user_id_2 !== userId) {
        throw new TRPCError({ code: 'FORBIDDEN', message: 'Not a participant.' });
      }

      const receiverId = match.user_id_1 === userId ? match.user_id_2 : match.user_id_1;

      const { data, error } = await ctx.supabase
        .from('messages')
        .insert({
          match_id: input.matchId,
          sender_id: userId,
          receiver_id: receiverId,
          content: input.content.trim(),
          is_read: false,
        })
        .select('*')
        .single();

      if (error || !data) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: 'Failed to send message.',
          cause: error,
        });
      }

      await ctx.supabase
        .from('matches')
        .update({ updated_at: new Date().toISOString() })
        .eq('id', input.matchId);

      return data;
    }),
});
