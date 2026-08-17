INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'c3eb1a4b-08ea-5a8f-a167-1aabf2265bd2'::uuid,
  'c67a41e9-06a0-5761-a4c7-2fdebb6f9896'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'in_progress',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;