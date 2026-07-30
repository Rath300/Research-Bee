-- Fix workspace create: owners can SELECT their row on INSERT...RETURNING,
-- and auto-add owner membership via trigger.

DROP POLICY IF EXISTS "Members can view workspaces" ON public.workspaces;
CREATE POLICY "Members can view workspaces"
  ON public.workspaces FOR SELECT TO authenticated
  USING (
    owner_id = auth.uid()
    OR EXISTS (
      SELECT 1 FROM public.workspace_members wm
      WHERE wm.workspace_id = workspaces.id
        AND wm.user_id = auth.uid()
        AND wm.invitation_status IN ('accepted', 'pending')
    )
  );

CREATE OR REPLACE FUNCTION public.handle_new_workspace()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
  VALUES (NEW.id, NEW.owner_id, 'owner', 'accepted', now())
  ON CONFLICT (workspace_id, user_id) DO NOTHING;
  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS on_workspace_created ON public.workspaces;
CREATE TRIGGER on_workspace_created
  AFTER INSERT ON public.workspaces
  FOR EACH ROW
  EXECUTE FUNCTION public.handle_new_workspace();

REVOKE EXECUTE ON FUNCTION public.handle_new_workspace() FROM PUBLIC, anon;
GRANT EXECUTE ON FUNCTION public.handle_new_workspace() TO authenticated;
