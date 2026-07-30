-- Production hardening + workspace RLS for ResearchCollab

-- ---------------------------------------------------------------------------
-- 1) Fix unrestricted notifications INSERT
-- ---------------------------------------------------------------------------
DROP POLICY IF EXISTS "System can insert notifications" ON public.notifications;

CREATE POLICY "Authenticated project members can insert notifications"
  ON public.notifications
  FOR INSERT
  TO authenticated
  WITH CHECK (
    project_id IS NULL
    OR EXISTS (
      SELECT 1
      FROM public.project_collaborators pc
      WHERE pc.project_id = notifications.project_id
        AND pc.user_id = auth.uid()
        AND pc.status = 'active'
    )
  );

-- ---------------------------------------------------------------------------
-- 2) Revoke broad anon privileges on application tables
-- ---------------------------------------------------------------------------
REVOKE ALL ON ALL TABLES IN SCHEMA public FROM anon;
REVOKE ALL ON ALL SEQUENCES IN SCHEMA public FROM anon;
REVOKE ALL ON ALL FUNCTIONS IN SCHEMA public FROM anon;

GRANT USAGE ON SCHEMA public TO anon, authenticated;

-- Authenticated retains table access; RLS still applies
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO authenticated;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO authenticated;

-- ---------------------------------------------------------------------------
-- 3) Tighten public / everyone policies
-- ---------------------------------------------------------------------------
DROP POLICY IF EXISTS "Public profiles are viewable by everyone" ON public.profiles;
CREATE POLICY "Authenticated users can view profiles"
  ON public.profiles
  FOR SELECT
  TO authenticated
  USING (true);

DROP POLICY IF EXISTS "Research posts are viewable by everyone" ON public.research_posts;
-- Keep visibility / owner policies already present; authenticated can read public posts
DROP POLICY IF EXISTS "Authenticated can view public research posts" ON public.research_posts;
CREATE POLICY "Authenticated can view public research posts"
  ON public.research_posts
  FOR SELECT
  TO authenticated
  USING (
    visibility = 'public'
    OR user_id = auth.uid()
  );

-- ---------------------------------------------------------------------------
-- 4) Lock SECURITY DEFINER execute away from anon/public
-- ---------------------------------------------------------------------------
DO $$
DECLARE
  fn record;
BEGIN
  FOR fn IN
    SELECT p.oid::regprocedure AS sig
    FROM pg_proc p
    JOIN pg_namespace n ON n.oid = p.pronamespace
    WHERE n.nspname = 'public'
      AND p.proname IN (
        'get_user_projects',
        'get_user_owned_projects',
        'handle_new_user',
        'add_project_creator_as_owner',
        'update_post_comments_count',
        'update_post_likes_count',
        'is_collaborator',
        'is_workspace_member_with_roles'
      )
  LOOP
    EXECUTE format('REVOKE EXECUTE ON FUNCTION %s FROM PUBLIC, anon', fn.sig);
    EXECUTE format('GRANT EXECUTE ON FUNCTION %s TO authenticated', fn.sig);
    EXECUTE format('ALTER FUNCTION %s SET search_path = public', fn.sig);
  END LOOP;
END $$;

-- Triggers still need to run as definer for handle_new_user etc.; revoke from clients is enough.

-- ---------------------------------------------------------------------------
-- 5) Storage: private project_files + unused buckets; keep avatars public-read
-- ---------------------------------------------------------------------------
UPDATE storage.buckets
SET public = false,
    file_size_limit = 52428800
WHERE id IN ('project_files', 'documents', 'attachments');

UPDATE storage.buckets
SET file_size_limit = 5242880
WHERE id = 'avatars';

-- Workspace files bucket
INSERT INTO storage.buckets (id, name, public, file_size_limit)
VALUES ('workspace_files', 'workspace_files', false, 52428800)
ON CONFLICT (id) DO UPDATE
SET public = false,
    file_size_limit = 52428800;

DROP POLICY IF EXISTS "Workspace members can read workspace files" ON storage.objects;
DROP POLICY IF EXISTS "Workspace members can upload workspace files" ON storage.objects;
DROP POLICY IF EXISTS "Workspace members can update workspace files" ON storage.objects;
DROP POLICY IF EXISTS "Workspace members can delete workspace files" ON storage.objects;

CREATE POLICY "Workspace members can read workspace files"
  ON storage.objects FOR SELECT TO authenticated
  USING (
    bucket_id = 'workspace_files'
    AND EXISTS (
      SELECT 1 FROM public.workspace_members wm
      WHERE wm.workspace_id::text = (storage.foldername(name))[1]
        AND wm.user_id = auth.uid()
        AND wm.invitation_status = 'accepted'
    )
  );

CREATE POLICY "Workspace members can upload workspace files"
  ON storage.objects FOR INSERT TO authenticated
  WITH CHECK (
    bucket_id = 'workspace_files'
    AND EXISTS (
      SELECT 1 FROM public.workspace_members wm
      WHERE wm.workspace_id::text = (storage.foldername(name))[1]
        AND wm.user_id = auth.uid()
        AND wm.invitation_status = 'accepted'
        AND wm.role IN ('owner', 'admin', 'editor')
    )
  );

CREATE POLICY "Workspace members can update workspace files"
  ON storage.objects FOR UPDATE TO authenticated
  USING (
    bucket_id = 'workspace_files'
    AND EXISTS (
      SELECT 1 FROM public.workspace_members wm
      WHERE wm.workspace_id::text = (storage.foldername(name))[1]
        AND wm.user_id = auth.uid()
        AND wm.invitation_status = 'accepted'
        AND wm.role IN ('owner', 'admin', 'editor')
    )
  );

CREATE POLICY "Workspace members can delete workspace files"
  ON storage.objects FOR DELETE TO authenticated
  USING (
    bucket_id = 'workspace_files'
    AND EXISTS (
      SELECT 1 FROM public.workspace_members wm
      WHERE wm.workspace_id::text = (storage.foldername(name))[1]
        AND wm.user_id = auth.uid()
        AND wm.invitation_status = 'accepted'
        AND wm.role IN ('owner', 'admin', 'editor')
    )
  );

-- ---------------------------------------------------------------------------
-- 6) Workspace table RLS
-- ---------------------------------------------------------------------------
DROP POLICY IF EXISTS "Members can view workspaces" ON public.workspaces;
DROP POLICY IF EXISTS "Authenticated can create workspaces" ON public.workspaces;
DROP POLICY IF EXISTS "Owners can update workspaces" ON public.workspaces;
DROP POLICY IF EXISTS "Owners can delete workspaces" ON public.workspaces;

CREATE POLICY "Members can view workspaces"
  ON public.workspaces FOR SELECT TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM public.workspace_members wm
      WHERE wm.workspace_id = workspaces.id
        AND wm.user_id = auth.uid()
        AND wm.invitation_status IN ('accepted', 'pending')
    )
  );

CREATE POLICY "Authenticated can create workspaces"
  ON public.workspaces FOR INSERT TO authenticated
  WITH CHECK (auth.uid() = owner_id);

CREATE POLICY "Owners can update workspaces"
  ON public.workspaces FOR UPDATE TO authenticated
  USING (auth.uid() = owner_id)
  WITH CHECK (auth.uid() = owner_id);

CREATE POLICY "Owners can delete workspaces"
  ON public.workspaces FOR DELETE TO authenticated
  USING (auth.uid() = owner_id);

-- Members
DROP POLICY IF EXISTS "Members can view memberships" ON public.workspace_members;
DROP POLICY IF EXISTS "Owners admins can insert members" ON public.workspace_members;
DROP POLICY IF EXISTS "Users can update own membership" ON public.workspace_members;
DROP POLICY IF EXISTS "Owners admins can update memberships" ON public.workspace_members;
DROP POLICY IF EXISTS "Owners admins can delete memberships" ON public.workspace_members;
DROP POLICY IF EXISTS "Users can leave workspace" ON public.workspace_members;

CREATE POLICY "Members can view memberships"
  ON public.workspace_members FOR SELECT TO authenticated
  USING (
    user_id = auth.uid()
    OR EXISTS (
      SELECT 1 FROM public.workspace_members me
      WHERE me.workspace_id = workspace_members.workspace_id
        AND me.user_id = auth.uid()
        AND me.invitation_status = 'accepted'
    )
  );

CREATE POLICY "Owners admins can insert members"
  ON public.workspace_members FOR INSERT TO authenticated
  WITH CHECK (
    -- Owner adding themselves on create
    (user_id = auth.uid() AND role = 'owner' AND invitation_status = 'accepted')
    OR EXISTS (
      SELECT 1 FROM public.workspace_members me
      WHERE me.workspace_id = workspace_members.workspace_id
        AND me.user_id = auth.uid()
        AND me.invitation_status = 'accepted'
        AND me.role IN ('owner', 'admin')
    )
  );

CREATE POLICY "Users can update own membership"
  ON public.workspace_members FOR UPDATE TO authenticated
  USING (user_id = auth.uid())
  WITH CHECK (user_id = auth.uid());

CREATE POLICY "Owners admins can update memberships"
  ON public.workspace_members FOR UPDATE TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM public.workspace_members me
      WHERE me.workspace_id = workspace_members.workspace_id
        AND me.user_id = auth.uid()
        AND me.invitation_status = 'accepted'
        AND me.role IN ('owner', 'admin')
    )
  )
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM public.workspace_members me
      WHERE me.workspace_id = workspace_members.workspace_id
        AND me.user_id = auth.uid()
        AND me.invitation_status = 'accepted'
        AND me.role IN ('owner', 'admin')
    )
  );

CREATE POLICY "Owners admins can delete memberships"
  ON public.workspace_members FOR DELETE TO authenticated
  USING (
    user_id = auth.uid()
    OR EXISTS (
      SELECT 1 FROM public.workspace_members me
      WHERE me.workspace_id = workspace_members.workspace_id
        AND me.user_id = auth.uid()
        AND me.invitation_status = 'accepted'
        AND me.role IN ('owner', 'admin')
    )
  );

-- Documents (replace existing with consistent set)
DROP POLICY IF EXISTS "Enable read access for workspace members" ON public.workspace_documents;
DROP POLICY IF EXISTS "Enable insert for workspace editors" ON public.workspace_documents;
DROP POLICY IF EXISTS "Enable update for workspace editors" ON public.workspace_documents;
DROP POLICY IF EXISTS "Enable delete for workspace editors" ON public.workspace_documents;
DROP POLICY IF EXISTS "Members can view documents" ON public.workspace_documents;
DROP POLICY IF EXISTS "Editors can insert documents" ON public.workspace_documents;
DROP POLICY IF EXISTS "Editors can update documents" ON public.workspace_documents;
DROP POLICY IF EXISTS "Editors can delete documents" ON public.workspace_documents;

CREATE POLICY "Members can view documents"
  ON public.workspace_documents FOR SELECT TO authenticated
  USING (public.is_workspace_member_with_roles(workspace_id, auth.uid(), ARRAY['owner','admin','editor','commenter','viewer']));

CREATE POLICY "Editors can insert documents"
  ON public.workspace_documents FOR INSERT TO authenticated
  WITH CHECK (
    created_by_user_id = auth.uid()
    AND public.is_workspace_member_with_roles(workspace_id, auth.uid(), ARRAY['owner','admin','editor'])
  );

CREATE POLICY "Editors can update documents"
  ON public.workspace_documents FOR UPDATE TO authenticated
  USING (public.is_workspace_member_with_roles(workspace_id, auth.uid(), ARRAY['owner','admin','editor']))
  WITH CHECK (public.is_workspace_member_with_roles(workspace_id, auth.uid(), ARRAY['owner','admin','editor']));

CREATE POLICY "Editors can delete documents"
  ON public.workspace_documents FOR DELETE TO authenticated
  USING (public.is_workspace_member_with_roles(workspace_id, auth.uid(), ARRAY['owner','admin','editor']));

-- Tasks
DROP POLICY IF EXISTS "Members can view tasks" ON public.workspace_tasks;
DROP POLICY IF EXISTS "Editors can insert tasks" ON public.workspace_tasks;
DROP POLICY IF EXISTS "Editors can update tasks" ON public.workspace_tasks;
DROP POLICY IF EXISTS "Editors can delete tasks" ON public.workspace_tasks;

CREATE POLICY "Members can view tasks"
  ON public.workspace_tasks FOR SELECT TO authenticated
  USING (public.is_workspace_member_with_roles(workspace_id, auth.uid(), ARRAY['owner','admin','editor','commenter','viewer']));

CREATE POLICY "Editors can insert tasks"
  ON public.workspace_tasks FOR INSERT TO authenticated
  WITH CHECK (
    created_by_user_id = auth.uid()
    AND public.is_workspace_member_with_roles(workspace_id, auth.uid(), ARRAY['owner','admin','editor'])
  );

CREATE POLICY "Editors can update tasks"
  ON public.workspace_tasks FOR UPDATE TO authenticated
  USING (public.is_workspace_member_with_roles(workspace_id, auth.uid(), ARRAY['owner','admin','editor']))
  WITH CHECK (public.is_workspace_member_with_roles(workspace_id, auth.uid(), ARRAY['owner','admin','editor']));

CREATE POLICY "Editors can delete tasks"
  ON public.workspace_tasks FOR DELETE TO authenticated
  USING (public.is_workspace_member_with_roles(workspace_id, auth.uid(), ARRAY['owner','admin','editor']));

-- Files
DROP POLICY IF EXISTS "Members can view files" ON public.workspace_files;
DROP POLICY IF EXISTS "Editors can insert files" ON public.workspace_files;
DROP POLICY IF EXISTS "Editors can delete files" ON public.workspace_files;

CREATE POLICY "Members can view files"
  ON public.workspace_files FOR SELECT TO authenticated
  USING (public.is_workspace_member_with_roles(workspace_id, auth.uid(), ARRAY['owner','admin','editor','commenter','viewer']));

CREATE POLICY "Editors can insert files"
  ON public.workspace_files FOR INSERT TO authenticated
  WITH CHECK (
    uploaded_by_user_id = auth.uid()
    AND public.is_workspace_member_with_roles(workspace_id, auth.uid(), ARRAY['owner','admin','editor'])
  );

CREATE POLICY "Editors can delete files"
  ON public.workspace_files FOR DELETE TO authenticated
  USING (public.is_workspace_member_with_roles(workspace_id, auth.uid(), ARRAY['owner','admin','editor']));

-- Chat
DROP POLICY IF EXISTS "Members can view chat" ON public.workspace_chat_messages;
DROP POLICY IF EXISTS "Members can insert chat" ON public.workspace_chat_messages;
DROP POLICY IF EXISTS "Authors can delete chat" ON public.workspace_chat_messages;

CREATE POLICY "Members can view chat"
  ON public.workspace_chat_messages FOR SELECT TO authenticated
  USING (public.is_workspace_member_with_roles(workspace_id, auth.uid(), ARRAY['owner','admin','editor','commenter','viewer']));

CREATE POLICY "Members can insert chat"
  ON public.workspace_chat_messages FOR INSERT TO authenticated
  WITH CHECK (
    user_id = auth.uid()
    AND public.is_workspace_member_with_roles(workspace_id, auth.uid(), ARRAY['owner','admin','editor','commenter','viewer'])
  );

CREATE POLICY "Authors can delete chat"
  ON public.workspace_chat_messages FOR DELETE TO authenticated
  USING (
    user_id = auth.uid()
    OR public.is_workspace_member_with_roles(workspace_id, auth.uid(), ARRAY['owner','admin'])
  );
