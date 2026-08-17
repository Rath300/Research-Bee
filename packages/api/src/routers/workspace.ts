import { z } from 'zod';
import { TRPCError } from '@trpc/server';
import { router, protectedProcedure } from '../trpc';
import {
  workspaceDocumentTypeSchema,
  workspaceRoleSchema,
  workspaceTaskStatusSchema,
} from '@research-collab/db';

async function requireAcceptedMember(
  supabase: any,
  workspaceId: string,
  userId: string,
  roles?: string[]
) {
  const { data, error } = await supabase
    .from('workspace_members')
    .select('role, invitation_status')
    .eq('workspace_id', workspaceId)
    .eq('user_id', userId)
    .eq('invitation_status', 'accepted')
    .maybeSingle();

  if (error) {
    throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
  }
  if (!data) {
    throw new TRPCError({ code: 'FORBIDDEN', message: 'Workspace not found or access denied.' });
  }
  if (roles && !roles.includes(data.role)) {
    throw new TRPCError({ code: 'FORBIDDEN', message: 'Insufficient workspace permissions.' });
  }
  return data as { role: string; invitation_status: string };
}

export const workspaceRouter = router({
  createWorkspace: protectedProcedure
    .input(
      z.object({
        name: z.string().min(1).max(120),
        description: z.string().max(2000).optional().nullable(),
      })
    )
    .mutation(async ({ ctx, input }) => {
      const { data, error } = await ctx.supabase
        .from('workspaces')
        .insert({
          name: input.name.trim(),
          description: input.description?.trim() || null,
          owner_id: ctx.user.id,
        })
        .select()
        .single();

      if (error || !data) {
        throw new TRPCError({
          code: error?.code === '42501' || error?.message?.toLowerCase().includes('policy')
            ? 'FORBIDDEN'
            : 'INTERNAL_SERVER_ERROR',
          message: error?.message || 'Failed to create workspace.',
        });
      }

      // Trigger handle_new_workspace also inserts owner membership; this is a safe fallback.
      const { error: memberError } = await ctx.supabase.from('workspace_members').upsert(
        {
          workspace_id: data.id,
          user_id: ctx.user.id,
          role: 'owner',
          invitation_status: 'accepted',
          joined_at: new Date().toISOString(),
        },
        { onConflict: 'workspace_id,user_id' }
      );

      if (memberError) {
        console.warn('Workspace owner membership upsert warning:', memberError.message);
      }

      return data;
    }),

  getWorkspaceById: protectedProcedure
    .input(z.object({ workspaceId: z.string().uuid() }))
    .query(async ({ ctx, input }) => {
      await requireAcceptedMember(ctx.supabase, input.workspaceId, ctx.user.id);

      const { data, error } = await ctx.supabase
        .from('workspaces')
        .select('*')
        .eq('id', input.workspaceId)
        .single();

      if (error || !data) {
        throw new TRPCError({ code: 'NOT_FOUND', message: 'Workspace not found.' });
      }
      return data;
    }),

  listUserWorkspaces: protectedProcedure.query(async ({ ctx }) => {
    const { data, error } = await ctx.supabase
      .from('workspace_members')
      .select(
        `
        role,
        invitation_status,
        joined_at,
        workspaces (id, name, description, owner_id, created_at, updated_at)
      `
      )
      .eq('user_id', ctx.user.id)
      .eq('invitation_status', 'accepted')
      .order('joined_at', { ascending: false });

    if (error) {
      throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
    }

    return (data || [])
      .filter((row: any) => row.workspaces)
      .map((row: any) => ({
        role: row.role as string,
        joinedAt: row.joined_at as string,
        workspace: row.workspaces,
      }));
  }),

  updateWorkspace: protectedProcedure
    .input(
      z.object({
        workspaceId: z.string().uuid(),
        name: z.string().min(1).max(120).optional(),
        description: z.string().max(2000).optional().nullable(),
      })
    )
    .mutation(async ({ ctx, input }) => {
      await requireAcceptedMember(ctx.supabase, input.workspaceId, ctx.user.id, ['owner']);
      const { workspaceId, ...patch } = input;
      if (Object.keys(patch).length === 0) {
        throw new TRPCError({ code: 'BAD_REQUEST', message: 'No update data provided.' });
      }

      const { data, error } = await ctx.supabase
        .from('workspaces')
        .update({
          ...(patch.name !== undefined ? { name: patch.name.trim() } : {}),
          ...(patch.description !== undefined ? { description: patch.description } : {}),
          updated_at: new Date().toISOString(),
        })
        .eq('id', workspaceId)
        .select()
        .single();

      if (error || !data) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: error?.message || 'Failed to update workspace.',
        });
      }
      return data;
    }),

  deleteWorkspace: protectedProcedure
    .input(z.object({ workspaceId: z.string().uuid() }))
    .mutation(async ({ ctx, input }) => {
      await requireAcceptedMember(ctx.supabase, input.workspaceId, ctx.user.id, ['owner']);
      const { error } = await ctx.supabase.from('workspaces').delete().eq('id', input.workspaceId);
      if (error) {
        throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
      }
      return { success: true };
    }),

  inviteUserToWorkspace: protectedProcedure
    .input(
      z.object({
        workspaceId: z.string().uuid(),
        invitedUserId: z.string().uuid(),
        role: workspaceRoleSchema.default('editor'),
      })
    )
    .mutation(async ({ ctx, input }) => {
      if (input.invitedUserId === ctx.user.id) {
        throw new TRPCError({ code: 'BAD_REQUEST', message: 'Cannot invite yourself.' });
      }
      if (input.role === 'owner') {
        throw new TRPCError({ code: 'BAD_REQUEST', message: 'Cannot invite as owner.' });
      }

      await requireAcceptedMember(ctx.supabase, input.workspaceId, ctx.user.id, ['owner', 'admin']);

      const { data: existing } = await ctx.supabase
        .from('workspace_members')
        .select('invitation_status')
        .eq('workspace_id', input.workspaceId)
        .eq('user_id', input.invitedUserId)
        .maybeSingle();

      if (existing?.invitation_status === 'accepted') {
        throw new TRPCError({ code: 'BAD_REQUEST', message: 'User is already a member.' });
      }
      if (existing?.invitation_status === 'pending') {
        throw new TRPCError({ code: 'BAD_REQUEST', message: 'User already has a pending invite.' });
      }

      const payload = {
        workspace_id: input.workspaceId,
        user_id: input.invitedUserId,
        role: input.role,
        invitation_status: 'pending',
      };

      const { data: member, error } = existing
        ? await ctx.supabase
            .from('workspace_members')
            .update(payload)
            .eq('workspace_id', input.workspaceId)
            .eq('user_id', input.invitedUserId)
            .select()
            .single()
        : await ctx.supabase.from('workspace_members').insert(payload).select().single();

      if (error || !member) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: error?.message || 'Failed to invite user.',
        });
      }

      const { data: workspace } = await ctx.supabase
        .from('workspaces')
        .select('name')
        .eq('id', input.workspaceId)
        .single();

      await ctx.supabase.from('user_notifications').insert({
        user_id: input.invitedUserId,
        type: 'general_alert',
        content: `You were invited to join workspace "${workspace?.name || 'Untitled'}".`,
        link_to: `/workspaces/${input.workspaceId}`,
        sender_id: ctx.user.id,
      });

      return { success: true, member };
    }),

  listWorkspaceMembers: protectedProcedure
    .input(z.object({ workspaceId: z.string().uuid() }))
    .query(async ({ ctx, input }) => {
      await requireAcceptedMember(ctx.supabase, input.workspaceId, ctx.user.id);

      const { data: members, error } = await ctx.supabase
        .from('workspace_members')
        .select('user_id, role, joined_at, invitation_status')
        .eq('workspace_id', input.workspaceId)
        .in('invitation_status', ['accepted', 'pending'])
        .order('joined_at', { ascending: true });

      if (error) {
        throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
      }

      const userIds = [...new Set((members || []).map((m) => m.user_id))];
      const profilesById: Record<string, any> = {};
      if (userIds.length > 0) {
        const { data: profiles } = await ctx.supabase
          .from('profiles')
          .select('id, first_name, last_name, avatar_url, full_name')
          .in('id', userIds);
        for (const p of profiles || []) profilesById[p.id] = p;
      }

      return (members || []).map((m) => ({
        ...m,
        profile: profilesById[m.user_id] ?? null,
      }));
    }),

  listPendingInvitationsForUser: protectedProcedure.query(async ({ ctx }) => {
    const { data, error } = await ctx.supabase
      .from('workspace_members')
      .select(
        `
        workspace_id,
        role,
        joined_at,
        workspace:workspaces (id, name, description)
      `
      )
      .eq('user_id', ctx.user.id)
      .eq('invitation_status', 'pending');

    if (error) {
      throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
    }
    return data || [];
  }),

  acceptWorkspaceInvitation: protectedProcedure
    .input(z.object({ workspaceId: z.string().uuid() }))
    .mutation(async ({ ctx, input }) => {
      const { data, error } = await ctx.supabase
        .from('workspace_members')
        .update({
          invitation_status: 'accepted',
          joined_at: new Date().toISOString(),
        })
        .eq('workspace_id', input.workspaceId)
        .eq('user_id', ctx.user.id)
        .eq('invitation_status', 'pending')
        .select()
        .maybeSingle();

      if (error) {
        throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
      }
      if (!data) {
        throw new TRPCError({ code: 'NOT_FOUND', message: 'No pending invitation found.' });
      }
      return { success: true, member: data };
    }),

  declineWorkspaceInvitation: protectedProcedure
    .input(z.object({ workspaceId: z.string().uuid() }))
    .mutation(async ({ ctx, input }) => {
      const { data, error } = await ctx.supabase
        .from('workspace_members')
        .update({ invitation_status: 'declined' })
        .eq('workspace_id', input.workspaceId)
        .eq('user_id', ctx.user.id)
        .eq('invitation_status', 'pending')
        .select()
        .maybeSingle();

      if (error) {
        throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
      }
      if (!data) {
        throw new TRPCError({ code: 'NOT_FOUND', message: 'No pending invitation found.' });
      }
      return { success: true };
    }),

  updateWorkspaceMemberRole: protectedProcedure
    .input(
      z.object({
        workspaceId: z.string().uuid(),
        memberUserId: z.string().uuid(),
        newRole: workspaceRoleSchema,
      })
    )
    .mutation(async ({ ctx, input }) => {
      if (input.newRole === 'owner') {
        throw new TRPCError({ code: 'BAD_REQUEST', message: 'Use ownership transfer instead.' });
      }
      await requireAcceptedMember(ctx.supabase, input.workspaceId, ctx.user.id, ['owner', 'admin']);

      const { data, error } = await ctx.supabase
        .from('workspace_members')
        .update({ role: input.newRole })
        .eq('workspace_id', input.workspaceId)
        .eq('user_id', input.memberUserId)
        .neq('role', 'owner')
        .select()
        .maybeSingle();

      if (error) {
        throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
      }
      if (!data) {
        throw new TRPCError({ code: 'NOT_FOUND', message: 'Member not found or is owner.' });
      }
      return { success: true, member: data };
    }),

  removeUserFromWorkspace: protectedProcedure
    .input(
      z.object({
        workspaceId: z.string().uuid(),
        memberUserIdToRemove: z.string().uuid(),
      })
    )
    .mutation(async ({ ctx, input }) => {
      const me = await requireAcceptedMember(ctx.supabase, input.workspaceId, ctx.user.id);
      const isSelf = input.memberUserIdToRemove === ctx.user.id;

      if (!isSelf && !['owner', 'admin'].includes(me.role)) {
        throw new TRPCError({ code: 'FORBIDDEN', message: 'Insufficient permissions.' });
      }

      const { data: target } = await ctx.supabase
        .from('workspace_members')
        .select('role')
        .eq('workspace_id', input.workspaceId)
        .eq('user_id', input.memberUserIdToRemove)
        .maybeSingle();

      if (!target) {
        throw new TRPCError({ code: 'NOT_FOUND', message: 'Member not found.' });
      }
      if (target.role === 'owner') {
        throw new TRPCError({
          code: 'BAD_REQUEST',
          message: 'Cannot remove the owner. Transfer ownership or delete the workspace.',
        });
      }

      const { error } = await ctx.supabase
        .from('workspace_members')
        .delete()
        .eq('workspace_id', input.workspaceId)
        .eq('user_id', input.memberUserIdToRemove);

      if (error) {
        throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
      }
      return { success: true };
    }),

  // Documents
  createWorkspaceDocument: protectedProcedure
    .input(
      z.object({
        workspaceId: z.string().uuid(),
        title: z.string().min(1).max(255),
        documentType: workspaceDocumentTypeSchema.default('Generic Document'),
        content: z.record(z.any()).optional().nullable(),
      })
    )
    .mutation(async ({ ctx, input }) => {
      await requireAcceptedMember(ctx.supabase, input.workspaceId, ctx.user.id, [
        'owner',
        'admin',
        'editor',
      ]);

      const { data, error } = await ctx.supabase
        .from('workspace_documents')
        .insert({
          workspace_id: input.workspaceId,
          title: input.title.trim(),
          document_type: input.documentType,
          content: input.content ?? { text: '' },
          created_by_user_id: ctx.user.id,
          last_edited_by_user_id: ctx.user.id,
        })
        .select()
        .single();

      if (error || !data) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: error?.message || 'Failed to create document.',
        });
      }
      return data;
    }),

  getWorkspaceDocumentById: protectedProcedure
    .input(z.object({ documentId: z.string().uuid() }))
    .query(async ({ ctx, input }) => {
      const { data, error } = await ctx.supabase
        .from('workspace_documents')
        .select('*')
        .eq('id', input.documentId)
        .single();

      if (error || !data) {
        throw new TRPCError({ code: 'NOT_FOUND', message: 'Document not found or access denied.' });
      }
      await requireAcceptedMember(ctx.supabase, data.workspace_id, ctx.user.id);
      return data;
    }),

  listWorkspaceDocuments: protectedProcedure
    .input(z.object({ workspaceId: z.string().uuid() }))
    .query(async ({ ctx, input }) => {
      await requireAcceptedMember(ctx.supabase, input.workspaceId, ctx.user.id);

      const { data, error } = await ctx.supabase
        .from('workspace_documents')
        .select(
          'id, title, document_type, updated_at, created_by:profiles!created_by_user_id(first_name, last_name, avatar_url)'
        )
        .eq('workspace_id', input.workspaceId)
        .order('updated_at', { ascending: false });

      if (error) {
        throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
      }
      return data || [];
    }),

  updateWorkspaceDocument: protectedProcedure
    .input(
      z.object({
        documentId: z.string().uuid(),
        title: z.string().min(1).max(255).optional(),
        content: z.record(z.any()).optional().nullable(),
        documentType: workspaceDocumentTypeSchema.optional(),
      })
    )
    .mutation(async ({ ctx, input }) => {
      const { data: existing, error: findError } = await ctx.supabase
        .from('workspace_documents')
        .select('workspace_id')
        .eq('id', input.documentId)
        .single();

      if (findError || !existing) {
        throw new TRPCError({ code: 'NOT_FOUND', message: 'Document not found.' });
      }
      await requireAcceptedMember(ctx.supabase, existing.workspace_id, ctx.user.id, [
        'owner',
        'admin',
        'editor',
      ]);

      const { documentId, ...patch } = input;
      const { data, error } = await ctx.supabase
        .from('workspace_documents')
        .update({
          ...patch,
          last_edited_by_user_id: ctx.user.id,
          updated_at: new Date().toISOString(),
        })
        .eq('id', documentId)
        .select()
        .single();

      if (error || !data) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: error?.message || 'Failed to update document.',
        });
      }
      return data;
    }),

  deleteWorkspaceDocument: protectedProcedure
    .input(z.object({ documentId: z.string().uuid() }))
    .mutation(async ({ ctx, input }) => {
      const { data: existing } = await ctx.supabase
        .from('workspace_documents')
        .select('workspace_id')
        .eq('id', input.documentId)
        .single();
      if (!existing) {
        throw new TRPCError({ code: 'NOT_FOUND', message: 'Document not found.' });
      }
      await requireAcceptedMember(ctx.supabase, existing.workspace_id, ctx.user.id, [
        'owner',
        'admin',
        'editor',
      ]);

      const { error } = await ctx.supabase
        .from('workspace_documents')
        .delete()
        .eq('id', input.documentId);
      if (error) {
        throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
      }
      return { success: true };
    }),

  // Tasks
  listWorkspaceTasks: protectedProcedure
    .input(z.object({ workspaceId: z.string().uuid() }))
    .query(async ({ ctx, input }) => {
      await requireAcceptedMember(ctx.supabase, input.workspaceId, ctx.user.id);
      const { data, error } = await ctx.supabase
        .from('workspace_tasks')
        .select(
          `
          *,
          assignee:profiles!assigned_to_user_id(id, first_name, last_name, avatar_url)
        `
        )
        .eq('workspace_id', input.workspaceId)
        .order('updated_at', { ascending: false });
      if (error) {
        throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
      }
      return data || [];
    }),

  createWorkspaceTask: protectedProcedure
    .input(
      z.object({
        workspaceId: z.string().uuid(),
        title: z.string().min(1).max(255),
        description: z.string().max(5000).optional().nullable(),
        status: workspaceTaskStatusSchema.default('todo'),
        assignedToUserId: z.string().uuid().optional().nullable(),
        dueDate: z.string().optional().nullable(),
      })
    )
    .mutation(async ({ ctx, input }) => {
      await requireAcceptedMember(ctx.supabase, input.workspaceId, ctx.user.id, [
        'owner',
        'admin',
        'editor',
      ]);
      const { data, error } = await ctx.supabase
        .from('workspace_tasks')
        .insert({
          workspace_id: input.workspaceId,
          title: input.title.trim(),
          description: input.description ?? null,
          status: input.status,
          assigned_to_user_id: input.assignedToUserId ?? null,
          due_date: input.dueDate ?? null,
          created_by_user_id: ctx.user.id,
        })
        .select()
        .single();
      if (error || !data) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: error?.message || 'Failed to create task.',
        });
      }
      return data;
    }),

  updateWorkspaceTask: protectedProcedure
    .input(
      z.object({
        taskId: z.string().uuid(),
        title: z.string().min(1).max(255).optional(),
        description: z.string().max(5000).optional().nullable(),
        status: workspaceTaskStatusSchema.optional(),
        assignedToUserId: z.string().uuid().optional().nullable(),
        dueDate: z.string().optional().nullable(),
      })
    )
    .mutation(async ({ ctx, input }) => {
      const { data: existing } = await ctx.supabase
        .from('workspace_tasks')
        .select('workspace_id')
        .eq('id', input.taskId)
        .single();
      if (!existing) {
        throw new TRPCError({ code: 'NOT_FOUND', message: 'Task not found.' });
      }
      await requireAcceptedMember(ctx.supabase, existing.workspace_id, ctx.user.id, [
        'owner',
        'admin',
        'editor',
      ]);

      const { taskId, assignedToUserId, dueDate, ...rest } = input;
      const { data, error } = await ctx.supabase
        .from('workspace_tasks')
        .update({
          ...rest,
          ...(assignedToUserId !== undefined ? { assigned_to_user_id: assignedToUserId } : {}),
          ...(dueDate !== undefined ? { due_date: dueDate } : {}),
          updated_at: new Date().toISOString(),
        })
        .eq('id', taskId)
        .select()
        .single();
      if (error || !data) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: error?.message || 'Failed to update task.',
        });
      }
      return data;
    }),

  deleteWorkspaceTask: protectedProcedure
    .input(z.object({ taskId: z.string().uuid() }))
    .mutation(async ({ ctx, input }) => {
      const { data: existing } = await ctx.supabase
        .from('workspace_tasks')
        .select('workspace_id')
        .eq('id', input.taskId)
        .single();
      if (!existing) {
        throw new TRPCError({ code: 'NOT_FOUND', message: 'Task not found.' });
      }
      await requireAcceptedMember(ctx.supabase, existing.workspace_id, ctx.user.id, [
        'owner',
        'admin',
        'editor',
      ]);
      const { error } = await ctx.supabase.from('workspace_tasks').delete().eq('id', input.taskId);
      if (error) {
        throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
      }
      return { success: true };
    }),

  // Files
  listWorkspaceFiles: protectedProcedure
    .input(z.object({ workspaceId: z.string().uuid() }))
    .query(async ({ ctx, input }) => {
      await requireAcceptedMember(ctx.supabase, input.workspaceId, ctx.user.id);
      const { data, error } = await ctx.supabase
        .from('workspace_files')
        .select(
          `
          *,
          uploader:profiles!uploaded_by_user_id(id, first_name, last_name, avatar_url)
        `
        )
        .eq('workspace_id', input.workspaceId)
        .order('created_at', { ascending: false });
      if (error) {
        throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
      }
      return data || [];
    }),

  registerWorkspaceFile: protectedProcedure
    .input(
      z.object({
        workspaceId: z.string().uuid(),
        fileName: z.string().min(1).max(255),
        storageObjectPath: z.string().min(1),
        fileType: z.string().optional().nullable(),
        fileSizeBytes: z.number().int().nonnegative().optional().nullable(),
        description: z.string().max(500).optional().nullable(),
      })
    )
    .mutation(async ({ ctx, input }) => {
      await requireAcceptedMember(ctx.supabase, input.workspaceId, ctx.user.id, [
        'owner',
        'admin',
        'editor',
      ]);
      const { data, error } = await ctx.supabase
        .from('workspace_files')
        .insert({
          workspace_id: input.workspaceId,
          file_name: input.fileName,
          storage_object_path: input.storageObjectPath,
          file_type: input.fileType ?? null,
          file_size_bytes: input.fileSizeBytes ?? null,
          description: input.description ?? null,
          uploaded_by_user_id: ctx.user.id,
        })
        .select()
        .single();
      if (error || !data) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: error?.message || 'Failed to register file.',
        });
      }
      return data;
    }),

  getWorkspaceFileSignedUrl: protectedProcedure
    .input(z.object({ fileId: z.string().uuid() }))
    .mutation(async ({ ctx, input }) => {
      const { data: file } = await ctx.supabase
        .from('workspace_files')
        .select('*')
        .eq('id', input.fileId)
        .single();
      if (!file) {
        throw new TRPCError({ code: 'NOT_FOUND', message: 'File not found.' });
      }
      await requireAcceptedMember(ctx.supabase, file.workspace_id, ctx.user.id);

      const { data, error } = await ctx.supabase.storage
        .from('workspace_files')
        .createSignedUrl(file.storage_object_path, 60 * 10);

      if (error || !data?.signedUrl) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: error?.message || 'Could not create download link.',
        });
      }
      return { url: data.signedUrl, fileName: file.file_name };
    }),

  deleteWorkspaceFile: protectedProcedure
    .input(z.object({ fileId: z.string().uuid() }))
    .mutation(async ({ ctx, input }) => {
      const { data: file } = await ctx.supabase
        .from('workspace_files')
        .select('*')
        .eq('id', input.fileId)
        .single();
      if (!file) {
        throw new TRPCError({ code: 'NOT_FOUND', message: 'File not found.' });
      }
      await requireAcceptedMember(ctx.supabase, file.workspace_id, ctx.user.id, [
        'owner',
        'admin',
        'editor',
      ]);

      await ctx.supabase.storage.from('workspace_files').remove([file.storage_object_path]);
      const { error } = await ctx.supabase.from('workspace_files').delete().eq('id', input.fileId);
      if (error) {
        throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
      }
      return { success: true };
    }),

  // Chat
  listWorkspaceMessages: protectedProcedure
    .input(z.object({ workspaceId: z.string().uuid(), limit: z.number().min(1).max(200).default(100) }))
    .query(async ({ ctx, input }) => {
      await requireAcceptedMember(ctx.supabase, input.workspaceId, ctx.user.id);
      const { data, error } = await ctx.supabase
        .from('workspace_chat_messages')
        .select(
          `
          id, content, created_at, user_id, parent_message_id,
          sender:profiles!user_id(id, first_name, last_name, avatar_url)
        `
        )
        .eq('workspace_id', input.workspaceId)
        .order('created_at', { ascending: true })
        .limit(input.limit);
      if (error) {
        throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
      }
      return data || [];
    }),

  sendWorkspaceMessage: protectedProcedure
    .input(
      z.object({
        workspaceId: z.string().uuid(),
        content: z.string().min(1).max(5000),
        parentMessageId: z.string().uuid().optional().nullable(),
      })
    )
    .mutation(async ({ ctx, input }) => {
      await requireAcceptedMember(ctx.supabase, input.workspaceId, ctx.user.id);
      const { data, error } = await ctx.supabase
        .from('workspace_chat_messages')
        .insert({
          workspace_id: input.workspaceId,
          user_id: ctx.user.id,
          content: input.content.trim(),
          parent_message_id: input.parentMessageId ?? null,
        })
        .select()
        .single();
      if (error || !data) {
        throw new TRPCError({
          code: 'INTERNAL_SERVER_ERROR',
          message: error?.message || 'Failed to send message.',
        });
      }
      return data;
    }),

  searchProfilesForInvite: protectedProcedure
    .input(
      z.object({
        query: z.string().max(80).optional().default(''),
        limit: z.number().min(1).max(100).default(50),
      })
    )
    .query(async ({ ctx, input }) => {
      const q = input.query.trim();

      let query = ctx.supabase
        .from('profiles')
        .select('id, first_name, last_name, full_name, avatar_url, institution, title, field_of_study, location')
        .neq('id', ctx.user.id)
        .not('first_name', 'is', null)
        .order('first_name', { ascending: true })
        .limit(input.limit);

      if (q.length > 0) {
        query = query.or(
          `first_name.ilike.%${q}%,last_name.ilike.%${q}%,full_name.ilike.%${q}%`
        );
      }

      const { data, error } = await query;

      if (error) {
        throw new TRPCError({ code: 'INTERNAL_SERVER_ERROR', message: error.message });
      }
      return data || [];
    }),
});
