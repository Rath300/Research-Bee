INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('8c92d99a-63c9-59f7-9fbc-e3ff60ec0ba4'::uuid, '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('8c92d99a-63c9-59f7-9fbc-e3ff60ec0ba4'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('8c92d99a-63c9-59f7-9fbc-e3ff60ec0ba4'::uuid, 'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('8c92d99a-63c9-59f7-9fbc-e3ff60ec0ba4'::uuid, '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('8c92d99a-63c9-59f7-9fbc-e3ff60ec0ba4'::uuid, 'cbc72d17-40df-503c-9380-64860d555aeb'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '3a8979a7-d967-508c-b4a9-6e558a721d8e'::uuid,
  '8c92d99a-63c9-59f7-9fbc-e3ff60ec0ba4'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '0e609dc5-acc2-5ab6-bd10-eeba596c2231'::uuid,
  '8c92d99a-63c9-59f7-9fbc-e3ff60ec0ba4'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'c582fd52-8912-5edf-908e-d0fc9d9e3488'::uuid,
  '8c92d99a-63c9-59f7-9fbc-e3ff60ec0ba4'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'ecededdb-9d8a-569e-ab3c-0fbf8518779c'::uuid,
  '8c92d99a-63c9-59f7-9fbc-e3ff60ec0ba4'::uuid,
  'Draft related work section',
  'Workspace task',
  'todo',
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '88eeeb27-6821-58d3-af21-cf36ca421862'::uuid,
  '8c92d99a-63c9-59f7-9fbc-e3ff60ec0ba4'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'in_progress',
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '91e8cc60-0bac-5ca0-900d-a376aeaa24b5'::uuid,
  '8c92d99a-63c9-59f7-9fbc-e3ff60ec0ba4'::uuid,
  'Run baseline model',
  'Workspace task',
  'completed',
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '50394f58-8be0-5fbd-91b9-a382af86a739'::uuid,
  '8c92d99a-63c9-59f7-9fbc-e3ff60ec0ba4'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'todo',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '3e2e2a40-3b62-5ee2-b144-3fdbdceed6fd'::uuid,
  '8c92d99a-63c9-59f7-9fbc-e3ff60ec0ba4'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'in_progress',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'e453412f-6707-59d9-94cf-b7f203dd3bd5'::uuid,
  'Paper writing room 2',
  'Shared workspace for documents, tasks, and team chat.',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e453412f-6707-59d9-94cf-b7f203dd3bd5'::uuid, '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e453412f-6707-59d9-94cf-b7f203dd3bd5'::uuid, '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e453412f-6707-59d9-94cf-b7f203dd3bd5'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e453412f-6707-59d9-94cf-b7f203dd3bd5'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e453412f-6707-59d9-94cf-b7f203dd3bd5'::uuid, 'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '7da107ad-ad17-5ab3-abb0-7012a8462e6b'::uuid,
  'e453412f-6707-59d9-94cf-b7f203dd3bd5'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'd7732101-96b7-5ecf-a24a-204ef7ae9667'::uuid,
  'e453412f-6707-59d9-94cf-b7f203dd3bd5'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'd1dd85b3-1295-51d5-a398-4fe546ec16c2'::uuid,
  'e453412f-6707-59d9-94cf-b7f203dd3bd5'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '47034ba4-5766-5047-9b04-edcd76cdaec1'::uuid,
  'e453412f-6707-59d9-94cf-b7f203dd3bd5'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'todo',
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '8676ac54-485a-5c3d-b11b-c785798168f0'::uuid,
  'e453412f-6707-59d9-94cf-b7f203dd3bd5'::uuid,
  'Run baseline model',
  'Workspace task',
  'in_progress',
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e4c1f089-fd6b-5c80-a87a-9c7d303add8b'::uuid,
  'e453412f-6707-59d9-94cf-b7f203dd3bd5'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'completed',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '599487fb-c6ca-51c9-8a6b-4db3b3806ca5'::uuid,
  'e453412f-6707-59d9-94cf-b7f203dd3bd5'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'todo',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '9bfa082f-bdf9-5e75-993d-4c597f827d0d'::uuid,
  'e453412f-6707-59d9-94cf-b7f203dd3bd5'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'in_progress',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '211a7577-d201-5aca-bd0d-a7f52a6c1f1a'::uuid,
  'Grant workspace 3',
  'Shared workspace for documents, tasks, and team chat.',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('211a7577-d201-5aca-bd0d-a7f52a6c1f1a'::uuid, 'a26aee00-05f2-505c-a479-ae1852915911'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('211a7577-d201-5aca-bd0d-a7f52a6c1f1a'::uuid, 'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('211a7577-d201-5aca-bd0d-a7f52a6c1f1a'::uuid, '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('211a7577-d201-5aca-bd0d-a7f52a6c1f1a'::uuid, '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('211a7577-d201-5aca-bd0d-a7f52a6c1f1a'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '84114806-bfdd-502e-b758-123b73d62cac'::uuid,
  '211a7577-d201-5aca-bd0d-a7f52a6c1f1a'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '081980ca-1a5f-59d6-8788-f335da64eea6'::uuid,
  '211a7577-d201-5aca-bd0d-a7f52a6c1f1a'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '8798ea6f-99d0-507c-a87e-de61c11b802a'::uuid,
  '211a7577-d201-5aca-bd0d-a7f52a6c1f1a'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'bca0d8dd-70f4-51f5-9d70-632486ac03d3'::uuid,
  '211a7577-d201-5aca-bd0d-a7f52a6c1f1a'::uuid,
  'Run baseline model',
  'Workspace task',
  'todo',
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd18504b8-1689-540e-8a9c-9145b95fbd33'::uuid,
  '211a7577-d201-5aca-bd0d-a7f52a6c1f1a'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'in_progress',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'f3bb3348-5d07-524f-a11a-667b4e84479e'::uuid,
  '211a7577-d201-5aca-bd0d-a7f52a6c1f1a'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'completed',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd6f968f2-8611-5c70-aba1-fc00081eceda'::uuid,
  '211a7577-d201-5aca-bd0d-a7f52a6c1f1a'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'todo',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;