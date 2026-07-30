import { z } from 'zod';
import { router, protectedProcedure } from '../trpc';
import { TRPCError } from '@trpc/server';

const requestSchema = z.object({
  id: z.string().uuid(),
  user_id: z.string().uuid(),
  target_user_id: z.string().uuid(),
  status: z.string(),
  created_at: z.string(),
  updated_at: z.string().nullable().optional(),
  requester_profile: z
    .object({
      id: z.string().uuid(),
      first_name: z.string().nullable().optional(),
      last_name: z.string().nullable().optional(),
      avatar_url: z.string().nullable().optional(),
    })
    .nullable(),
});

export const collaborationRouter = router({
  listRequests: protectedProcedure
    .output(z.array(requestSchema))
    .query(async ({ ctx }) => {
      const { supabase, user } = ctx;
      const { data, error } = await supabase
        .from('collaborator_matches')
        .select(
          `
          id,
          user_id,
          target_user_id,
          status,
          created_at,
          updated_at,
          requester_profile:profiles!collaborator_matches_user_id_fkey(id, first_name, last_name, avatar_url)
        `
        )
        .eq('target_user_id', user.id)
        .eq('status', 'pending')
        .order('created_at', { ascending: false });

      if (error) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: 'Failed to fetch collaboration requests.',
          cause: error,
        });
      }

      return (data ?? []).map((row: any) => ({
        ...row,
        requester_profile: Array.isArray(row.requester_profile)
          ? row.requester_profile[0] ?? null
          : row.requester_profile ?? null,
      }));
    }),

  respondToRequest: protectedProcedure
    .input(
      z.object({
        requestId: z.string().uuid(),
        newStatus: z.enum(['matched', 'rejected']),
      })
    )
    .mutation(async ({ ctx, input }) => {
      const { supabase, user } = ctx;
      const { requestId, newStatus } = input;

      const { error } = await supabase
        .from('collaborator_matches')
        .update({ status: newStatus, updated_at: new Date().toISOString() })
        .eq('id', requestId)
        .eq('target_user_id', user.id);

      if (error) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: 'Failed to respond to request.',
          cause: error,
        });
      }

      return { success: true };
    }),
});
