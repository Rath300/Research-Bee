-- workspaces

INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '8c92d99a-63c9-59f7-9fbc-e3ff60ec0ba4'::uuid,
  'Lab coordination 1',
  'Shared workspace for documents, tasks, and team chat.',
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


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


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '6d37a246-36fa-56c4-b0bd-09b4f3949806'::uuid,
  '211a7577-d201-5aca-bd0d-a7f52a6c1f1a'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'in_progress',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '4e4bdb43-36f3-54b8-9090-1d29c02bf713'::uuid,
  'Methods club 4',
  'Shared workspace for documents, tasks, and team chat.',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('4e4bdb43-36f3-54b8-9090-1d29c02bf713'::uuid, '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('4e4bdb43-36f3-54b8-9090-1d29c02bf713'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('4e4bdb43-36f3-54b8-9090-1d29c02bf713'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('4e4bdb43-36f3-54b8-9090-1d29c02bf713'::uuid, 'e82aadde-599d-5823-9c92-7aa26f607621'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('4e4bdb43-36f3-54b8-9090-1d29c02bf713'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'a95b306e-f97e-5524-a062-ecd471c7e2d6'::uuid,
  '4e4bdb43-36f3-54b8-9090-1d29c02bf713'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '73d26871-d3b8-5e1e-854b-b94d08b169df'::uuid,
  '4e4bdb43-36f3-54b8-9090-1d29c02bf713'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '72f1598b-af42-502f-9151-6c74bf3d8795'::uuid,
  '4e4bdb43-36f3-54b8-9090-1d29c02bf713'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '1eaff845-d4f4-55fa-a12b-c7410dcfe5d9'::uuid,
  '4e4bdb43-36f3-54b8-9090-1d29c02bf713'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'todo',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'b60b2e17-2bdc-5ee8-9a6a-6d109744551e'::uuid,
  '4e4bdb43-36f3-54b8-9090-1d29c02bf713'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'in_progress',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'cde6610b-d550-5bf7-b04d-f5ae69b40f6f'::uuid,
  '4e4bdb43-36f3-54b8-9090-1d29c02bf713'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'completed',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'dba79f6a-85ae-53ce-9dde-b9d58211370e'::uuid,
  '4e4bdb43-36f3-54b8-9090-1d29c02bf713'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'todo',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd6d11d53-deda-5004-9cfe-03a0de58a642'::uuid,
  '4e4bdb43-36f3-54b8-9090-1d29c02bf713'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'in_progress',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '4e8f69b0-cc54-5f29-8377-793367db9a9c'::uuid,
  'Data room 5',
  'Shared workspace for documents, tasks, and team chat.',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('4e8f69b0-cc54-5f29-8377-793367db9a9c'::uuid, 'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('4e8f69b0-cc54-5f29-8377-793367db9a9c'::uuid, '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('4e8f69b0-cc54-5f29-8377-793367db9a9c'::uuid, 'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('4e8f69b0-cc54-5f29-8377-793367db9a9c'::uuid, '89b2a66e-af73-5706-9535-645704dc5830'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('4e8f69b0-cc54-5f29-8377-793367db9a9c'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'f36ef56f-e2e8-5301-bf12-b705578638c6'::uuid,
  '4e8f69b0-cc54-5f29-8377-793367db9a9c'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'e63df531-8ce9-5771-af79-68e92aacc29b'::uuid,
  '4e8f69b0-cc54-5f29-8377-793367db9a9c'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'fd2daaec-df52-5a98-aadd-484ed7545137'::uuid,
  '4e8f69b0-cc54-5f29-8377-793367db9a9c'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'fca83613-46ba-549c-bf16-cb7b79fa10c6'::uuid,
  '4e8f69b0-cc54-5f29-8377-793367db9a9c'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'todo',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '7b1cc447-52dd-5f72-aeaa-2ab3d50fbdd2'::uuid,
  '4e8f69b0-cc54-5f29-8377-793367db9a9c'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'in_progress',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '4325f245-367e-58d5-a17d-24f1dbd6bc14'::uuid,
  '4e8f69b0-cc54-5f29-8377-793367db9a9c'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'completed',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '89e85ef1-a136-52d5-9ed0-9c1eb307e610'::uuid,
  '4e8f69b0-cc54-5f29-8377-793367db9a9c'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'todo',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd37c58da-2260-554f-9543-a6db7a12e655'::uuid,
  '4e8f69b0-cc54-5f29-8377-793367db9a9c'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'in_progress',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid,
  'Lab coordination 6',
  'Shared workspace for documents, tasks, and team chat.',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid, '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid, 'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '100c976c-9c5e-51fc-9c3b-872a6c8bba7d'::uuid,
  '32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '0f7e1a43-24d7-5f22-abb2-d2a2784828f5'::uuid,
  '32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '50342f6b-ac39-5e04-8424-ef01b86005b9'::uuid,
  '32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'eb4e74ca-40d3-51a9-a010-8e25ed59842a'::uuid,
  '32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'todo',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '3a3cf873-2b57-557f-990f-5e8d4e5674af'::uuid,
  '32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'in_progress',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '64ad9dea-1f30-59f2-b7b4-691ea2596def'::uuid,
  '32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'completed',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'b0de60da-c759-5e1a-8f92-687c33bff66e'::uuid,
  '32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'todo',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '6d645f29-f7db-5154-a462-d96b802c140e'::uuid,
  '32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'in_progress',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Paper writing room 7',
  'Shared workspace for documents, tasks, and team chat.',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('9c735818-dd7b-502f-b05a-fc71321ac626'::uuid, 'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('9c735818-dd7b-502f-b05a-fc71321ac626'::uuid, 'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('9c735818-dd7b-502f-b05a-fc71321ac626'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('9c735818-dd7b-502f-b05a-fc71321ac626'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('9c735818-dd7b-502f-b05a-fc71321ac626'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '1452bade-bfa0-52d3-b1b6-c5dd5535220c'::uuid,
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '149b6bef-f3fe-5a25-9ba5-29218275208e'::uuid,
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '77a0a11c-a3a2-560f-8859-e7c2a8bbe511'::uuid,
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '50cc310f-a956-5c28-a63d-6893b0df7540'::uuid,
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'todo',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'bee5f70e-a0b0-5fc3-ba18-54b59f356f0e'::uuid,
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'in_progress',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '9cf5f782-8646-51fb-bd83-b7a910e4b3bb'::uuid,
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'completed',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'bea40693-327b-599f-a868-53cc8bbdb8c6'::uuid,
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'todo',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e9c14305-5ddf-575c-a62a-5fd83f4252b0'::uuid,
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Submit internal review',
  'Workspace task',
  'in_progress',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Grant workspace 8',
  'Shared workspace for documents, tasks, and team chat.',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid, 'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid, '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '64567d29-0979-5653-96c2-3ed5c07db340'::uuid,
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '4e09f1bd-7d9f-58bd-91c8-6c4567e9c641'::uuid,
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '3efda69f-c2e4-5ee6-b8da-1f748ec94fcc'::uuid,
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd6d79b21-841a-539c-90a2-0feea2476bd1'::uuid,
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'todo',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'fd40906e-1e20-52b2-861b-635b44075ace'::uuid,
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'in_progress',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '86e297d4-bd4b-5afe-9dab-ac71fce7de2b'::uuid,
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'completed',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd3a1c80c-f40d-5fa8-9cd3-6cb5fbd9c4a9'::uuid,
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Submit internal review',
  'Workspace task',
  'todo',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '4f9e8cd6-c520-50a5-880e-7c72e1aadd15'::uuid,
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Update project README',
  'Workspace task',
  'in_progress',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Methods club 9',
  'Shared workspace for documents, tasks, and team chat.',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid, '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid, 'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '202bdcb3-640d-5fd1-b111-c20f8926fb78'::uuid,
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '95acd350-6313-514f-bf44-f7498ff76680'::uuid,
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'd36ec453-563b-5d75-82cf-5768931be1e0'::uuid,
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e9d3cba2-800b-5f90-ad40-b292359f177d'::uuid,
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'todo',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '64ec4293-045d-5c47-adb7-121255f107f6'::uuid,
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'in_progress',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '6f96ae06-3c8c-531b-a936-d7f052dd0bc2'::uuid,
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Submit internal review',
  'Workspace task',
  'completed',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '92f7956d-b8fa-54e2-a021-c2dcea168b54'::uuid,
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Update project README',
  'Workspace task',
  'todo',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '08119c41-601e-5914-90d0-47c30dc626c6'::uuid,
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Draft related work section',
  'Workspace task',
  'in_progress',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Data room 10',
  'Shared workspace for documents, tasks, and team chat.',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid, '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid, 'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid, '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'ad6d0aab-8ad7-5be3-b681-b8264018797e'::uuid,
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '0b707189-5b34-5005-bfcf-809efab5bc50'::uuid,
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '12a6cd29-78b9-531e-a083-a2cc1a20e6ca'::uuid,
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'a13f6cfe-0915-5772-ae28-15d1eee810fd'::uuid,
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'todo',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'f9900e3f-4ec5-55e0-9d2c-b3f8127789ee'::uuid,
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Submit internal review',
  'Workspace task',
  'in_progress',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '72bc797f-0c56-5317-a2f2-eaa75f5875b5'::uuid,
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Update project README',
  'Workspace task',
  'completed',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'a90bd2e7-463d-5840-a124-42095513c4cc'::uuid,
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Draft related work section',
  'Workspace task',
  'todo',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'a38f2283-d756-5cdd-9aa9-98a6c81e09ae'::uuid,
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'in_progress',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Lab coordination 11',
  'Shared workspace for documents, tasks, and team chat.',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '02d7256b-2e51-5555-bd7e-34bb70cdb504'::uuid,
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '88d2d20b-4bd5-5481-a042-09a449fc709c'::uuid,
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'b20e42c2-5614-5cf8-824e-c5a1ac35a05f'::uuid,
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'ba9a9d0b-dd2a-5bb9-b891-f4954b21088f'::uuid,
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Submit internal review',
  'Workspace task',
  'todo',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e410d537-6113-5c1c-ade5-5365ba85a1d6'::uuid,
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Update project README',
  'Workspace task',
  'in_progress',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '9dcb0510-c555-5563-a42b-93ba969ef2a8'::uuid,
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Draft related work section',
  'Workspace task',
  'completed',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '7d1e7cc6-dd00-5221-ae76-4e4ccd2b1fcd'::uuid,
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'todo',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'db848c5a-4c21-546d-b859-a35b058468b7'::uuid,
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Run baseline model',
  'Workspace task',
  'in_progress',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid,
  'Paper writing room 12',
  'Shared workspace for documents, tasks, and team chat.',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid, '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid, 'cbc72d17-40df-503c-9380-64860d555aeb'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'f6be4008-7e53-55c5-bc12-f8dafe885cbb'::uuid,
  '51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '1215451c-09c7-5aca-aebb-a95183d7900a'::uuid,
  '51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '09a3c2ba-5074-50a9-b956-a9d65a7a7003'::uuid,
  '51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '7e404e51-060a-5a66-ac0c-53400df9d9b5'::uuid,
  '51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid,
  'Update project README',
  'Workspace task',
  'todo',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '4e8ecf44-4689-5b86-8a9b-b4d80b496d36'::uuid,
  '51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid,
  'Draft related work section',
  'Workspace task',
  'in_progress',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '8cbb0e4a-3287-547a-894d-d67bd2d20e0c'::uuid,
  '51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'completed',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'fc1db236-6048-5932-bcbc-8c38f8557e9d'::uuid,
  '51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid,
  'Run baseline model',
  'Workspace task',
  'todo',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '2b1b6768-796c-5d0d-87d8-08d48cb34513'::uuid,
  '51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'in_progress',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '8b52cc1c-2479-5fac-9031-e591227ee2cb'::uuid,
  'Grant workspace 13',
  'Shared workspace for documents, tasks, and team chat.',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('8b52cc1c-2479-5fac-9031-e591227ee2cb'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('8b52cc1c-2479-5fac-9031-e591227ee2cb'::uuid, 'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('8b52cc1c-2479-5fac-9031-e591227ee2cb'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('8b52cc1c-2479-5fac-9031-e591227ee2cb'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('8b52cc1c-2479-5fac-9031-e591227ee2cb'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '9540f218-2928-5761-b4e3-37c3ea262535'::uuid,
  '8b52cc1c-2479-5fac-9031-e591227ee2cb'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '2d9ccf21-cf1f-561d-9afc-88db8b3ce8e2'::uuid,
  '8b52cc1c-2479-5fac-9031-e591227ee2cb'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'a83f4a34-0088-5680-a1d9-a0cf4cd0e027'::uuid,
  '8b52cc1c-2479-5fac-9031-e591227ee2cb'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '5996e8ef-de4f-5e04-b256-c0813d09643c'::uuid,
  '8b52cc1c-2479-5fac-9031-e591227ee2cb'::uuid,
  'Draft related work section',
  'Workspace task',
  'todo',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'ec48b0e7-bebf-5322-ae71-fe30bc4944f4'::uuid,
  '8b52cc1c-2479-5fac-9031-e591227ee2cb'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'in_progress',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '1a424b9c-fae3-5412-86f1-8108e6d594c1'::uuid,
  '8b52cc1c-2479-5fac-9031-e591227ee2cb'::uuid,
  'Run baseline model',
  'Workspace task',
  'completed',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'b539a19f-e48d-50b6-b1ac-0c65098dafe5'::uuid,
  '8b52cc1c-2479-5fac-9031-e591227ee2cb'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'todo',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'aee0836a-478c-5025-b339-0de5f2c22910'::uuid,
  '8b52cc1c-2479-5fac-9031-e591227ee2cb'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'in_progress',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '11ace05f-d38b-509f-af12-a24933ed82b3'::uuid,
  'Methods club 14',
  'Shared workspace for documents, tasks, and team chat.',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('11ace05f-d38b-509f-af12-a24933ed82b3'::uuid, '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('11ace05f-d38b-509f-af12-a24933ed82b3'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('11ace05f-d38b-509f-af12-a24933ed82b3'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('11ace05f-d38b-509f-af12-a24933ed82b3'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('11ace05f-d38b-509f-af12-a24933ed82b3'::uuid, '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'dc8ccb04-cea3-5aaf-b7ea-890f6de74d82'::uuid,
  '11ace05f-d38b-509f-af12-a24933ed82b3'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '553fa09c-9349-5ce4-ada0-6616b1cf9bb5'::uuid,
  '11ace05f-d38b-509f-af12-a24933ed82b3'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '0f6a85db-df09-541b-ba49-24626dc40da4'::uuid,
  '11ace05f-d38b-509f-af12-a24933ed82b3'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '11478e8e-149d-5337-9c63-afd9b5c99503'::uuid,
  '11ace05f-d38b-509f-af12-a24933ed82b3'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'todo',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'cde0ed1c-6961-5fe6-b661-f9bccd3097cc'::uuid,
  '11ace05f-d38b-509f-af12-a24933ed82b3'::uuid,
  'Run baseline model',
  'Workspace task',
  'in_progress',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'bd3d34c2-5100-58cf-9c56-3e5fd9ef4181'::uuid,
  '11ace05f-d38b-509f-af12-a24933ed82b3'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'completed',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '1a9976f2-d036-5cc7-a0c6-642ad6ee93f1'::uuid,
  '11ace05f-d38b-509f-af12-a24933ed82b3'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'todo',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '70575361-e464-5f34-a950-c3adb5ce32da'::uuid,
  '11ace05f-d38b-509f-af12-a24933ed82b3'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'in_progress',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '898c9dd7-555c-564a-9544-77623d2b6e8f'::uuid,
  'Data room 15',
  'Shared workspace for documents, tasks, and team chat.',
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('898c9dd7-555c-564a-9544-77623d2b6e8f'::uuid, 'e82aadde-599d-5823-9c92-7aa26f607621'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('898c9dd7-555c-564a-9544-77623d2b6e8f'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('898c9dd7-555c-564a-9544-77623d2b6e8f'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('898c9dd7-555c-564a-9544-77623d2b6e8f'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('898c9dd7-555c-564a-9544-77623d2b6e8f'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '2a51bbac-0e7d-5c86-ad7a-616b2cea5b6c'::uuid,
  '898c9dd7-555c-564a-9544-77623d2b6e8f'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '56897218-aba9-5219-bec4-c46dcc1c3a5d'::uuid,
  '898c9dd7-555c-564a-9544-77623d2b6e8f'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '11ee957f-8b59-568b-bcc6-b372792a6f97'::uuid,
  '898c9dd7-555c-564a-9544-77623d2b6e8f'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'bc7215b7-b6a9-55a2-804a-f8936e32aee7'::uuid,
  '898c9dd7-555c-564a-9544-77623d2b6e8f'::uuid,
  'Run baseline model',
  'Workspace task',
  'todo',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '95ef0cf1-31e0-5660-b0da-072859a68f50'::uuid,
  '898c9dd7-555c-564a-9544-77623d2b6e8f'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'in_progress',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'ab873b86-2898-5f2e-8033-4a4b226037e4'::uuid,
  '898c9dd7-555c-564a-9544-77623d2b6e8f'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'completed',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'b8b7298c-c619-5032-b4ef-0498fc927e8a'::uuid,
  '898c9dd7-555c-564a-9544-77623d2b6e8f'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'todo',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'b5a61871-16e4-5804-b86d-87b73d2210af'::uuid,
  '898c9dd7-555c-564a-9544-77623d2b6e8f'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'in_progress',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '0c74661e-9283-5eaa-8f1b-b2bba381652f'::uuid,
  'Lab coordination 16',
  'Shared workspace for documents, tasks, and team chat.',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0c74661e-9283-5eaa-8f1b-b2bba381652f'::uuid, '89b2a66e-af73-5706-9535-645704dc5830'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0c74661e-9283-5eaa-8f1b-b2bba381652f'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0c74661e-9283-5eaa-8f1b-b2bba381652f'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0c74661e-9283-5eaa-8f1b-b2bba381652f'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0c74661e-9283-5eaa-8f1b-b2bba381652f'::uuid, 'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '69140841-e7d7-5f40-9c0f-0ced526a0672'::uuid,
  '0c74661e-9283-5eaa-8f1b-b2bba381652f'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '8e17159d-2ca7-53f9-a051-a547d810c798'::uuid,
  '0c74661e-9283-5eaa-8f1b-b2bba381652f'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '2baec43d-0431-5fd4-adc1-ae0495b150a0'::uuid,
  '0c74661e-9283-5eaa-8f1b-b2bba381652f'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e11dc01c-7090-567e-8003-69933ccf13fd'::uuid,
  '0c74661e-9283-5eaa-8f1b-b2bba381652f'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'todo',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '5cc698d2-6240-5af8-a2af-02d68e00f714'::uuid,
  '0c74661e-9283-5eaa-8f1b-b2bba381652f'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'in_progress',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '041b51d5-1206-5e42-aa53-077ca8fdc39b'::uuid,
  '0c74661e-9283-5eaa-8f1b-b2bba381652f'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'completed',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd5f8c236-2561-576d-9c17-ba2d0207e9dc'::uuid,
  '0c74661e-9283-5eaa-8f1b-b2bba381652f'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'todo',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '91d454e1-bf6c-5324-9499-2111009295e8'::uuid,
  '0c74661e-9283-5eaa-8f1b-b2bba381652f'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'in_progress',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'c0f2abba-9933-5991-ba30-7720da70f84a'::uuid,
  'Paper writing room 17',
  'Shared workspace for documents, tasks, and team chat.',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('c0f2abba-9933-5991-ba30-7720da70f84a'::uuid, 'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('c0f2abba-9933-5991-ba30-7720da70f84a'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('c0f2abba-9933-5991-ba30-7720da70f84a'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('c0f2abba-9933-5991-ba30-7720da70f84a'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('c0f2abba-9933-5991-ba30-7720da70f84a'::uuid, '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '79dc33a2-04e7-5093-9979-f2781da051a8'::uuid,
  'c0f2abba-9933-5991-ba30-7720da70f84a'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'f17b6771-a3e8-5d22-80ef-62e414d3f33e'::uuid,
  'c0f2abba-9933-5991-ba30-7720da70f84a'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'dfe9e8e1-bebe-5efa-a08b-aa03e2303dac'::uuid,
  'c0f2abba-9933-5991-ba30-7720da70f84a'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'ebf7d0ab-2345-5808-a948-0cd06e9aacf8'::uuid,
  'c0f2abba-9933-5991-ba30-7720da70f84a'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'todo',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '729d93fd-bda2-5a5b-ab8c-896ba8a1e159'::uuid,
  'c0f2abba-9933-5991-ba30-7720da70f84a'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'in_progress',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'c2a60b71-4f64-5db2-97fc-81fa34e26b45'::uuid,
  'c0f2abba-9933-5991-ba30-7720da70f84a'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'completed',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '6d769e4a-6448-5f0e-a94e-b3c15ea3ab9f'::uuid,
  'c0f2abba-9933-5991-ba30-7720da70f84a'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'todo',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '9f94058b-9ffc-585d-af4a-2b83ba95792f'::uuid,
  'c0f2abba-9933-5991-ba30-7720da70f84a'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'in_progress',
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'b67554c8-e5e9-5481-9a22-cd226d49eb49'::uuid,
  'Grant workspace 18',
  'Shared workspace for documents, tasks, and team chat.',
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b67554c8-e5e9-5481-9a22-cd226d49eb49'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b67554c8-e5e9-5481-9a22-cd226d49eb49'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b67554c8-e5e9-5481-9a22-cd226d49eb49'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b67554c8-e5e9-5481-9a22-cd226d49eb49'::uuid, '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b67554c8-e5e9-5481-9a22-cd226d49eb49'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '64cd3adf-1922-58e7-af74-8eb9e8b5bdef'::uuid,
  'b67554c8-e5e9-5481-9a22-cd226d49eb49'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'fc6ffbd9-8d72-5c24-93be-2a5d7ac7f8f3'::uuid,
  'b67554c8-e5e9-5481-9a22-cd226d49eb49'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'a799041d-4843-53f2-8d96-cb404b8cc66f'::uuid,
  'b67554c8-e5e9-5481-9a22-cd226d49eb49'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e6b64d4a-9525-5c1b-be92-66d704d2a8a1'::uuid,
  'b67554c8-e5e9-5481-9a22-cd226d49eb49'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'todo',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '3654b675-4cb4-54b5-a2a1-f40e0e1d761c'::uuid,
  'b67554c8-e5e9-5481-9a22-cd226d49eb49'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'in_progress',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '191ff3ed-7a89-5f80-b415-89da145d6e83'::uuid,
  'b67554c8-e5e9-5481-9a22-cd226d49eb49'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'completed',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '1f8189eb-c9a3-5b7c-8127-8a20e4dac066'::uuid,
  'b67554c8-e5e9-5481-9a22-cd226d49eb49'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'todo',
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '29ca74dd-d6a3-5158-9fa0-41bb2b1e14da'::uuid,
  'b67554c8-e5e9-5481-9a22-cd226d49eb49'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'in_progress',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '5d848f6b-0c83-505f-96e7-380511c32375'::uuid,
  'Methods club 19',
  'Shared workspace for documents, tasks, and team chat.',
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('5d848f6b-0c83-505f-96e7-380511c32375'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('5d848f6b-0c83-505f-96e7-380511c32375'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('5d848f6b-0c83-505f-96e7-380511c32375'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('5d848f6b-0c83-505f-96e7-380511c32375'::uuid, 'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('5d848f6b-0c83-505f-96e7-380511c32375'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '2375372b-5f6a-5d39-b72d-5502e6508a42'::uuid,
  '5d848f6b-0c83-505f-96e7-380511c32375'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '1ac85cc7-29ed-5080-b221-13296cf03e86'::uuid,
  '5d848f6b-0c83-505f-96e7-380511c32375'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'dc3a7449-f68f-5b75-bbee-c5dcf1077cde'::uuid,
  '5d848f6b-0c83-505f-96e7-380511c32375'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'ba759c24-3c44-5ead-986e-fce81d54367f'::uuid,
  '5d848f6b-0c83-505f-96e7-380511c32375'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'todo',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '8b3730fc-d97b-5f95-9ee9-21a5b1db8c75'::uuid,
  '5d848f6b-0c83-505f-96e7-380511c32375'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'in_progress',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e71e03fc-ee2d-50c6-a29b-63c5fc495608'::uuid,
  '5d848f6b-0c83-505f-96e7-380511c32375'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'completed',
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '9d6e83b5-7afe-5321-b3eb-76897fcce82a'::uuid,
  '5d848f6b-0c83-505f-96e7-380511c32375'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'todo',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '0c18cc21-414a-5a00-8625-8bef4ee48329'::uuid,
  '5d848f6b-0c83-505f-96e7-380511c32375'::uuid,
  'Submit internal review',
  'Workspace task',
  'in_progress',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '074ab06b-7aff-5d6d-a86c-b8f814702470'::uuid,
  'Data room 20',
  'Shared workspace for documents, tasks, and team chat.',
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('074ab06b-7aff-5d6d-a86c-b8f814702470'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('074ab06b-7aff-5d6d-a86c-b8f814702470'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('074ab06b-7aff-5d6d-a86c-b8f814702470'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('074ab06b-7aff-5d6d-a86c-b8f814702470'::uuid, '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('074ab06b-7aff-5d6d-a86c-b8f814702470'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'cb875628-b918-524a-bd67-3cb039250c7a'::uuid,
  '074ab06b-7aff-5d6d-a86c-b8f814702470'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '2bf89a34-b0a4-5364-9efe-5eb114806bb7'::uuid,
  '074ab06b-7aff-5d6d-a86c-b8f814702470'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '0f4afab5-7c60-5d7c-90fc-d759ff99b655'::uuid,
  '074ab06b-7aff-5d6d-a86c-b8f814702470'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd1a6da57-0961-5892-bcda-a99ef6ad0e7b'::uuid,
  '074ab06b-7aff-5d6d-a86c-b8f814702470'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'todo',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '6fb84d5b-3ee8-52fc-a150-74450247bbac'::uuid,
  '074ab06b-7aff-5d6d-a86c-b8f814702470'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'in_progress',
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'bfcab770-4c30-5d95-9ae8-5d702ecc1d75'::uuid,
  '074ab06b-7aff-5d6d-a86c-b8f814702470'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'completed',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '2f8181a2-bff1-5332-bbb0-ada1152d2fb4'::uuid,
  '074ab06b-7aff-5d6d-a86c-b8f814702470'::uuid,
  'Submit internal review',
  'Workspace task',
  'todo',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'b5e65bcc-7a26-587b-ad85-63d50702a87e'::uuid,
  '074ab06b-7aff-5d6d-a86c-b8f814702470'::uuid,
  'Update project README',
  'Workspace task',
  'in_progress',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Lab coordination 21',
  'Shared workspace for documents, tasks, and team chat.',
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid, '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '1d4ccaa9-2144-5110-b542-e72db183ab3b'::uuid,
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '0999679f-6436-5073-bd4d-fb892f8b64dc'::uuid,
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '4bbef57d-eec3-584d-b9ba-a7b166f6429a'::uuid,
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '96d17116-3670-5fd4-99f6-f905d1368788'::uuid,
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'todo',
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '680ae045-00d8-596b-8c49-3073202f3c90'::uuid,
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'in_progress',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '5a57163d-cb2c-513b-92ef-14287a9b9c05'::uuid,
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Submit internal review',
  'Workspace task',
  'completed',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'f6229a2f-0984-5a90-b904-fa465e9f57bd'::uuid,
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Update project README',
  'Workspace task',
  'todo',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '0ba59204-78bc-5155-8386-d5b9cc616edf'::uuid,
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Draft related work section',
  'Workspace task',
  'in_progress',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Paper writing room 22',
  'Shared workspace for documents, tasks, and team chat.',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('053acd0f-9b79-53ad-9781-9053247be1e6'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('053acd0f-9b79-53ad-9781-9053247be1e6'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('053acd0f-9b79-53ad-9781-9053247be1e6'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('053acd0f-9b79-53ad-9781-9053247be1e6'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('053acd0f-9b79-53ad-9781-9053247be1e6'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '5cefcac6-aaa1-5360-ae35-4be0d06ef5c2'::uuid,
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '261d79d1-5aa4-566b-8c28-e5fbe877fd68'::uuid,
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'b43f43a9-3ebe-5078-a847-8b8a20dfb895'::uuid,
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd6211f94-9324-5e98-bea8-84d015e6ddb1'::uuid,
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'todo',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'ffcf7ae5-4ae0-5165-b04b-7f9d3a593fd1'::uuid,
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Submit internal review',
  'Workspace task',
  'in_progress',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '108e8b59-04e8-50ad-a1f9-c472371fdbbb'::uuid,
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Update project README',
  'Workspace task',
  'completed',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '0fada0ca-8443-5496-bbf0-eeac219e5b2a'::uuid,
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Draft related work section',
  'Workspace task',
  'todo',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'a40c2bae-cba0-5d5f-993a-8b0ffda2661f'::uuid,
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'in_progress',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Grant workspace 23',
  'Shared workspace for documents, tasks, and team chat.',
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0cc241b5-3ba9-52a0-880b-5270da042054'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0cc241b5-3ba9-52a0-880b-5270da042054'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0cc241b5-3ba9-52a0-880b-5270da042054'::uuid, 'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0cc241b5-3ba9-52a0-880b-5270da042054'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0cc241b5-3ba9-52a0-880b-5270da042054'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '8e6971b8-29f0-51bd-b807-725945822650'::uuid,
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '22fcdf32-d230-5446-be2c-dc436df18a16'::uuid,
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '972d602a-9132-5724-b58a-c6dc3edeeefe'::uuid,
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '77f1cbf2-04dc-591d-ae8d-54ffddd9a7bb'::uuid,
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Submit internal review',
  'Workspace task',
  'todo',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '07761f22-5e93-5ba2-aad3-4f76e2fd7eb1'::uuid,
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Update project README',
  'Workspace task',
  'in_progress',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '290afdfc-3142-5d09-8e8c-a9f9233b4cf1'::uuid,
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Draft related work section',
  'Workspace task',
  'completed',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e0eafae8-ec58-5eb0-a1b2-63d139479326'::uuid,
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'todo',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'b96949ec-9ee2-51e9-b150-0908eb2b56b9'::uuid,
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Run baseline model',
  'Workspace task',
  'in_progress',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Methods club 24',
  'Shared workspace for documents, tasks, and team chat.',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'e9a78956-6c5f-519f-bee5-119f027bdbed'::uuid,
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '837fa50b-eab0-5adb-a080-7b2fa4cae5fd'::uuid,
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'db85ce6e-f03e-586b-a215-7c67ce0a38c1'::uuid,
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '48c9e0e2-b7a8-5db1-8367-fe00f7380029'::uuid,
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Update project README',
  'Workspace task',
  'todo',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '53e68d05-8dff-517f-8d6a-c250f33a60b3'::uuid,
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Draft related work section',
  'Workspace task',
  'in_progress',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '979472bc-50db-5e03-945f-d156b0abd4ee'::uuid,
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'completed',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '31c02940-cd66-5955-a55d-53222e0ab749'::uuid,
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Run baseline model',
  'Workspace task',
  'todo',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '198aa194-c97a-5c7b-bb53-6d5f88ee11b0'::uuid,
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'in_progress',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Data room 25',
  'Shared workspace for documents, tasks, and team chat.',
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid, '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '75c7e58c-8c62-5dbc-bcd7-b2249a35bb05'::uuid,
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '183caa8b-c88b-5996-8cd1-1cb17f30e77f'::uuid,
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'afc756ee-514e-594b-b858-acc36c925f07'::uuid,
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '9ecae6e8-90ec-5121-83a6-8ae3a6327ae7'::uuid,
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Draft related work section',
  'Workspace task',
  'todo',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '9690536b-61b2-51a2-b3cf-2ca165c4a13f'::uuid,
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'in_progress',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '0697b968-3d0a-5bf9-b63c-4b07ff8ca072'::uuid,
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Run baseline model',
  'Workspace task',
  'completed',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd69157a4-addc-5085-9565-d37437f5fd56'::uuid,
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'todo',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '96250c70-6fff-5d9c-921e-0dbf93f98364'::uuid,
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'in_progress',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '1521df73-624b-59ca-85bd-485950d3a0e5'::uuid,
  'Lab coordination 26',
  'Shared workspace for documents, tasks, and team chat.',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('1521df73-624b-59ca-85bd-485950d3a0e5'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('1521df73-624b-59ca-85bd-485950d3a0e5'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('1521df73-624b-59ca-85bd-485950d3a0e5'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('1521df73-624b-59ca-85bd-485950d3a0e5'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('1521df73-624b-59ca-85bd-485950d3a0e5'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'a5eef62d-d32c-5e46-b703-035560e7e725'::uuid,
  '1521df73-624b-59ca-85bd-485950d3a0e5'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'a5a06898-2d2d-5250-9947-aecc4cf7becf'::uuid,
  '1521df73-624b-59ca-85bd-485950d3a0e5'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '1e09a3b1-91ca-5579-836d-7e21f1d95f45'::uuid,
  '1521df73-624b-59ca-85bd-485950d3a0e5'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '0af5c4bc-162e-5710-a33a-f6384da15906'::uuid,
  '1521df73-624b-59ca-85bd-485950d3a0e5'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'todo',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '8dc6fd68-3279-5d2b-a4eb-a42ca39526c9'::uuid,
  '1521df73-624b-59ca-85bd-485950d3a0e5'::uuid,
  'Run baseline model',
  'Workspace task',
  'in_progress',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '68cb32c5-8443-5899-b041-3173c34a0bd4'::uuid,
  '1521df73-624b-59ca-85bd-485950d3a0e5'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'completed',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '47479bd4-8936-53cf-b606-1333cc66a0e5'::uuid,
  '1521df73-624b-59ca-85bd-485950d3a0e5'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'todo',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '59c2ccba-f5a9-5c47-bb5a-e04d743742a9'::uuid,
  '1521df73-624b-59ca-85bd-485950d3a0e5'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'in_progress',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '02b18359-bc7b-5e81-bbfe-9e4f75154112'::uuid,
  'Paper writing room 27',
  'Shared workspace for documents, tasks, and team chat.',
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('02b18359-bc7b-5e81-bbfe-9e4f75154112'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('02b18359-bc7b-5e81-bbfe-9e4f75154112'::uuid, 'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('02b18359-bc7b-5e81-bbfe-9e4f75154112'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('02b18359-bc7b-5e81-bbfe-9e4f75154112'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('02b18359-bc7b-5e81-bbfe-9e4f75154112'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '0b4ef312-652a-5255-9757-2edbc0873843'::uuid,
  '02b18359-bc7b-5e81-bbfe-9e4f75154112'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '82e58e89-83b3-57fa-a91b-bc0c41ddaeb3'::uuid,
  '02b18359-bc7b-5e81-bbfe-9e4f75154112'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'd022fa38-4ac4-5746-bab0-b99d03f83a57'::uuid,
  '02b18359-bc7b-5e81-bbfe-9e4f75154112'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '9a5a98ec-4884-57ac-9db8-094de8945417'::uuid,
  '02b18359-bc7b-5e81-bbfe-9e4f75154112'::uuid,
  'Run baseline model',
  'Workspace task',
  'todo',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e9c48a83-1280-599c-ab0d-65cfce57dc15'::uuid,
  '02b18359-bc7b-5e81-bbfe-9e4f75154112'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'in_progress',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '588db912-b13e-5ea9-be56-bbf6cfb44f88'::uuid,
  '02b18359-bc7b-5e81-bbfe-9e4f75154112'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'completed',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '463dd3c5-765b-55ad-b5f6-7e72313820d6'::uuid,
  '02b18359-bc7b-5e81-bbfe-9e4f75154112'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'todo',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '5db23a1a-4630-5e3c-9714-9103fa14ebb1'::uuid,
  '02b18359-bc7b-5e81-bbfe-9e4f75154112'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'in_progress',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '2880701c-6441-55a0-b05d-f02355e940b6'::uuid,
  'Grant workspace 28',
  'Shared workspace for documents, tasks, and team chat.',
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('2880701c-6441-55a0-b05d-f02355e940b6'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('2880701c-6441-55a0-b05d-f02355e940b6'::uuid, '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('2880701c-6441-55a0-b05d-f02355e940b6'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('2880701c-6441-55a0-b05d-f02355e940b6'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('2880701c-6441-55a0-b05d-f02355e940b6'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '10621385-ff11-57d9-80d4-e162b3b803e6'::uuid,
  '2880701c-6441-55a0-b05d-f02355e940b6'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '90bc7a45-773c-51f2-91c9-4f6b8b0af5ea'::uuid,
  '2880701c-6441-55a0-b05d-f02355e940b6'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '4f141e47-5de4-51ef-9b4f-2f0dec014e39'::uuid,
  '2880701c-6441-55a0-b05d-f02355e940b6'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'cd8c687b-eddf-537c-b8bb-bb4d58c36f6b'::uuid,
  '2880701c-6441-55a0-b05d-f02355e940b6'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'todo',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '5a6cb8c4-2701-5efa-bedf-3550061f32ed'::uuid,
  '2880701c-6441-55a0-b05d-f02355e940b6'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'in_progress',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '28e0b12c-452d-5c4f-91ec-80fa94803657'::uuid,
  '2880701c-6441-55a0-b05d-f02355e940b6'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'completed',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '791b2bd2-4865-5e0a-8329-743ae3b893f0'::uuid,
  '2880701c-6441-55a0-b05d-f02355e940b6'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'todo',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '90ac5db9-29b4-5474-80bc-a18258d82460'::uuid,
  '2880701c-6441-55a0-b05d-f02355e940b6'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'in_progress',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'cff1f93b-3c57-5452-835f-00c46044f333'::uuid,
  'Methods club 29',
  'Shared workspace for documents, tasks, and team chat.',
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('cff1f93b-3c57-5452-835f-00c46044f333'::uuid, '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('cff1f93b-3c57-5452-835f-00c46044f333'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('cff1f93b-3c57-5452-835f-00c46044f333'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('cff1f93b-3c57-5452-835f-00c46044f333'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('cff1f93b-3c57-5452-835f-00c46044f333'::uuid, 'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'd9b83f70-28c8-5a80-a47e-67d6296eede4'::uuid,
  'cff1f93b-3c57-5452-835f-00c46044f333'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '6dba8a36-705d-549b-84d9-088571e77911'::uuid,
  'cff1f93b-3c57-5452-835f-00c46044f333'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '09cc7294-8246-53c4-a12f-2745319fe207'::uuid,
  'cff1f93b-3c57-5452-835f-00c46044f333'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'a825317f-c167-523f-8c44-bd87b1e2d379'::uuid,
  'cff1f93b-3c57-5452-835f-00c46044f333'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'todo',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '7b3a96cd-7660-50c6-873d-7465dc4d7292'::uuid,
  'cff1f93b-3c57-5452-835f-00c46044f333'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'in_progress',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '43a0a7c2-b34d-5efe-a2ec-398a89712197'::uuid,
  'cff1f93b-3c57-5452-835f-00c46044f333'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'completed',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '6052ae8d-a00c-5161-b968-ec580f827e57'::uuid,
  'cff1f93b-3c57-5452-835f-00c46044f333'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'todo',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'dcc4dba6-8b37-5aad-baca-623640cdd057'::uuid,
  'cff1f93b-3c57-5452-835f-00c46044f333'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'in_progress',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'b00245bd-9e2f-514d-a179-3639876e06c1'::uuid,
  'Data room 30',
  'Shared workspace for documents, tasks, and team chat.',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b00245bd-9e2f-514d-a179-3639876e06c1'::uuid, 'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b00245bd-9e2f-514d-a179-3639876e06c1'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b00245bd-9e2f-514d-a179-3639876e06c1'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b00245bd-9e2f-514d-a179-3639876e06c1'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b00245bd-9e2f-514d-a179-3639876e06c1'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '3d6a8afa-a298-52ab-a899-d76e89cbc101'::uuid,
  'b00245bd-9e2f-514d-a179-3639876e06c1'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'ee8fb1d0-82e4-5ea9-8ed2-d9ada2b30422'::uuid,
  'b00245bd-9e2f-514d-a179-3639876e06c1'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '2d48e6df-e01b-5bbe-b9cf-149967c75935'::uuid,
  'b00245bd-9e2f-514d-a179-3639876e06c1'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '88523bbf-4c75-51a6-86a2-041793d37c20'::uuid,
  'b00245bd-9e2f-514d-a179-3639876e06c1'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'todo',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'b9b44635-9412-5743-810b-115e887aca74'::uuid,
  'b00245bd-9e2f-514d-a179-3639876e06c1'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'in_progress',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'c30add51-e628-574c-9cf3-ccaaaa0c55e0'::uuid,
  'b00245bd-9e2f-514d-a179-3639876e06c1'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'completed',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '27397d08-bbb6-54b4-95e6-0a758bbea4e3'::uuid,
  'b00245bd-9e2f-514d-a179-3639876e06c1'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'todo',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '2f1f93d9-089f-536a-b363-4df388c2d6b4'::uuid,
  'b00245bd-9e2f-514d-a179-3639876e06c1'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'in_progress',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '3f53f829-f6e5-5806-be53-bd4ada117f79'::uuid,
  'Lab coordination 31',
  'Shared workspace for documents, tasks, and team chat.',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('3f53f829-f6e5-5806-be53-bd4ada117f79'::uuid, '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('3f53f829-f6e5-5806-be53-bd4ada117f79'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('3f53f829-f6e5-5806-be53-bd4ada117f79'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('3f53f829-f6e5-5806-be53-bd4ada117f79'::uuid, 'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('3f53f829-f6e5-5806-be53-bd4ada117f79'::uuid, '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '3fff52d0-d707-508c-9039-76b8011d8658'::uuid,
  '3f53f829-f6e5-5806-be53-bd4ada117f79'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '1fbe1c94-9551-56fe-a00c-de7e310a7f66'::uuid,
  '3f53f829-f6e5-5806-be53-bd4ada117f79'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'c572ef36-1a64-522d-81f5-ff67c3106e0c'::uuid,
  '3f53f829-f6e5-5806-be53-bd4ada117f79'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e02539d2-e37b-5122-a8e3-0b4c437b248f'::uuid,
  '3f53f829-f6e5-5806-be53-bd4ada117f79'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'todo',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '6c142eb7-27aa-5735-9efa-52aa44118999'::uuid,
  '3f53f829-f6e5-5806-be53-bd4ada117f79'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'in_progress',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd2fe6061-d7b4-548d-9780-586bbf02aec1'::uuid,
  '3f53f829-f6e5-5806-be53-bd4ada117f79'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'completed',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '2a2f1cfc-b748-560b-b8ee-e8873795b55e'::uuid,
  '3f53f829-f6e5-5806-be53-bd4ada117f79'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'todo',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '64372270-4740-58b7-b504-628d912fb810'::uuid,
  '3f53f829-f6e5-5806-be53-bd4ada117f79'::uuid,
  'Submit internal review',
  'Workspace task',
  'in_progress',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'e0d90f92-23e1-5d03-94b0-5a7cf4096da5'::uuid,
  'Paper writing room 32',
  'Shared workspace for documents, tasks, and team chat.',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e0d90f92-23e1-5d03-94b0-5a7cf4096da5'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e0d90f92-23e1-5d03-94b0-5a7cf4096da5'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e0d90f92-23e1-5d03-94b0-5a7cf4096da5'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e0d90f92-23e1-5d03-94b0-5a7cf4096da5'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e0d90f92-23e1-5d03-94b0-5a7cf4096da5'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '9d737b79-b86a-5071-80c9-fb1de96ba5c2'::uuid,
  'e0d90f92-23e1-5d03-94b0-5a7cf4096da5'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '8f0555d1-96ee-544a-b6a0-01e51ec2d008'::uuid,
  'e0d90f92-23e1-5d03-94b0-5a7cf4096da5'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'beaadb01-682a-5b31-b14b-11a50f896655'::uuid,
  'e0d90f92-23e1-5d03-94b0-5a7cf4096da5'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '34ac71d7-e62a-5ac6-8d86-1a63215add58'::uuid,
  'e0d90f92-23e1-5d03-94b0-5a7cf4096da5'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'todo',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '93f99afc-6211-530d-866a-5980a042db46'::uuid,
  'e0d90f92-23e1-5d03-94b0-5a7cf4096da5'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'in_progress',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '87bf2d5b-4724-514d-843c-5cc5064be918'::uuid,
  'e0d90f92-23e1-5d03-94b0-5a7cf4096da5'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'completed',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '4dc6c9ff-52a8-56a5-ac08-e8e6ceaee6f1'::uuid,
  'e0d90f92-23e1-5d03-94b0-5a7cf4096da5'::uuid,
  'Submit internal review',
  'Workspace task',
  'todo',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'b62ae23c-3993-516c-9c5c-a32a10911231'::uuid,
  'e0d90f92-23e1-5d03-94b0-5a7cf4096da5'::uuid,
  'Update project README',
  'Workspace task',
  'in_progress',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'e1425718-3152-5c9c-96d6-25ba14a6d8f1'::uuid,
  'Grant workspace 33',
  'Shared workspace for documents, tasks, and team chat.',
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e1425718-3152-5c9c-96d6-25ba14a6d8f1'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e1425718-3152-5c9c-96d6-25ba14a6d8f1'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e1425718-3152-5c9c-96d6-25ba14a6d8f1'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e1425718-3152-5c9c-96d6-25ba14a6d8f1'::uuid, 'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e1425718-3152-5c9c-96d6-25ba14a6d8f1'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'b3c7a063-eaf3-52df-9dc4-ebdbe5609b21'::uuid,
  'e1425718-3152-5c9c-96d6-25ba14a6d8f1'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'b48c0438-9bea-5482-babe-3ec2babe2e5b'::uuid,
  'e1425718-3152-5c9c-96d6-25ba14a6d8f1'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '500dc5b9-8331-5d0e-8492-f88d1b6c6346'::uuid,
  'e1425718-3152-5c9c-96d6-25ba14a6d8f1'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '605f160c-6ce7-58ad-9abe-1bc69152eb30'::uuid,
  'e1425718-3152-5c9c-96d6-25ba14a6d8f1'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'todo',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '29a2fe26-8979-54e8-8f2c-34fe2691bb00'::uuid,
  'e1425718-3152-5c9c-96d6-25ba14a6d8f1'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'in_progress',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e7c216e3-8180-5930-b663-67d482c53226'::uuid,
  'e1425718-3152-5c9c-96d6-25ba14a6d8f1'::uuid,
  'Submit internal review',
  'Workspace task',
  'completed',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '6ef40232-a3ef-537d-9ac2-4bb9040f958d'::uuid,
  'e1425718-3152-5c9c-96d6-25ba14a6d8f1'::uuid,
  'Update project README',
  'Workspace task',
  'todo',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '90a7545c-8d6c-53b3-9e5c-0c39ab34c7a0'::uuid,
  'e1425718-3152-5c9c-96d6-25ba14a6d8f1'::uuid,
  'Draft related work section',
  'Workspace task',
  'in_progress',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '5ec8b803-c834-54f5-82d1-0914c22a64e2'::uuid,
  'Methods club 34',
  'Shared workspace for documents, tasks, and team chat.',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('5ec8b803-c834-54f5-82d1-0914c22a64e2'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('5ec8b803-c834-54f5-82d1-0914c22a64e2'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('5ec8b803-c834-54f5-82d1-0914c22a64e2'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('5ec8b803-c834-54f5-82d1-0914c22a64e2'::uuid, 'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('5ec8b803-c834-54f5-82d1-0914c22a64e2'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'd63921eb-fa89-5da1-8c96-dc863149c720'::uuid,
  '5ec8b803-c834-54f5-82d1-0914c22a64e2'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '2a02335f-c161-522f-9ac6-c041c2d0b27f'::uuid,
  '5ec8b803-c834-54f5-82d1-0914c22a64e2'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '0504d5cb-af28-57ca-acd4-15bfe6907510'::uuid,
  '5ec8b803-c834-54f5-82d1-0914c22a64e2'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e5912f81-bbe8-5592-ae46-b691c91eac92'::uuid,
  '5ec8b803-c834-54f5-82d1-0914c22a64e2'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'todo',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'bd356701-477a-596e-8638-97e550c4725e'::uuid,
  '5ec8b803-c834-54f5-82d1-0914c22a64e2'::uuid,
  'Submit internal review',
  'Workspace task',
  'in_progress',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '02d25a01-af5b-5719-9575-4e951bc2c71e'::uuid,
  '5ec8b803-c834-54f5-82d1-0914c22a64e2'::uuid,
  'Update project README',
  'Workspace task',
  'completed',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '825c9009-11eb-541b-b832-e71b1a9e612a'::uuid,
  '5ec8b803-c834-54f5-82d1-0914c22a64e2'::uuid,
  'Draft related work section',
  'Workspace task',
  'todo',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '23c3420c-843d-5c3b-b3cb-4239426fe432'::uuid,
  '5ec8b803-c834-54f5-82d1-0914c22a64e2'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'in_progress',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'c7579f47-98f9-5e86-a492-69c34a620566'::uuid,
  'Data room 35',
  'Shared workspace for documents, tasks, and team chat.',
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('c7579f47-98f9-5e86-a492-69c34a620566'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('c7579f47-98f9-5e86-a492-69c34a620566'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('c7579f47-98f9-5e86-a492-69c34a620566'::uuid, '0c89279c-761b-5955-a37f-d11d903a5859'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('c7579f47-98f9-5e86-a492-69c34a620566'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('c7579f47-98f9-5e86-a492-69c34a620566'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'f457f1e6-0647-5806-87d7-9173943fb0a4'::uuid,
  'c7579f47-98f9-5e86-a492-69c34a620566'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '3e6dfcee-deca-5e87-beb7-dcf8fdb97d39'::uuid,
  'c7579f47-98f9-5e86-a492-69c34a620566'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'e2649190-008d-524d-aed0-375840f272a6'::uuid,
  'c7579f47-98f9-5e86-a492-69c34a620566'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '999e4b96-457d-5f5a-93a7-8cb04977eb1c'::uuid,
  'c7579f47-98f9-5e86-a492-69c34a620566'::uuid,
  'Submit internal review',
  'Workspace task',
  'todo',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e3520e30-ea8c-5950-848a-1557fabfa89c'::uuid,
  'c7579f47-98f9-5e86-a492-69c34a620566'::uuid,
  'Update project README',
  'Workspace task',
  'in_progress',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '7011d4d2-27e6-57b2-92cb-6a2a0d7eb422'::uuid,
  'c7579f47-98f9-5e86-a492-69c34a620566'::uuid,
  'Draft related work section',
  'Workspace task',
  'completed',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '354e1434-a127-569f-b7c3-f37c65e0e3d2'::uuid,
  'c7579f47-98f9-5e86-a492-69c34a620566'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'todo',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '73e35049-d246-5559-b5c7-5a55e7847894'::uuid,
  'c7579f47-98f9-5e86-a492-69c34a620566'::uuid,
  'Run baseline model',
  'Workspace task',
  'in_progress',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '9dd9d702-e9dc-5c10-9501-e62eacaea9ae'::uuid,
  'Lab coordination 36',
  'Shared workspace for documents, tasks, and team chat.',
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('9dd9d702-e9dc-5c10-9501-e62eacaea9ae'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('9dd9d702-e9dc-5c10-9501-e62eacaea9ae'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('9dd9d702-e9dc-5c10-9501-e62eacaea9ae'::uuid, '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('9dd9d702-e9dc-5c10-9501-e62eacaea9ae'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('9dd9d702-e9dc-5c10-9501-e62eacaea9ae'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '575d849e-1ddc-58fd-bf4b-d516a6a3f3ab'::uuid,
  '9dd9d702-e9dc-5c10-9501-e62eacaea9ae'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '2da02235-f0b7-5190-9dbe-264be5a3b8e9'::uuid,
  '9dd9d702-e9dc-5c10-9501-e62eacaea9ae'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'a38c56ec-cc7d-5e95-bb71-106ed99e9fa1'::uuid,
  '9dd9d702-e9dc-5c10-9501-e62eacaea9ae'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '9dc628ec-55ca-5072-b0af-499ec7ab4481'::uuid,
  '9dd9d702-e9dc-5c10-9501-e62eacaea9ae'::uuid,
  'Update project README',
  'Workspace task',
  'todo',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e8600503-346d-5504-acb6-e0677ca42abc'::uuid,
  '9dd9d702-e9dc-5c10-9501-e62eacaea9ae'::uuid,
  'Draft related work section',
  'Workspace task',
  'in_progress',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd0378267-90ae-506b-8512-8e3931da8721'::uuid,
  '9dd9d702-e9dc-5c10-9501-e62eacaea9ae'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'completed',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '7c9cf968-b270-5f0a-acd4-bda41d84b995'::uuid,
  '9dd9d702-e9dc-5c10-9501-e62eacaea9ae'::uuid,
  'Run baseline model',
  'Workspace task',
  'todo',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '6b7d7b83-6f70-5b07-9cf9-cd535f7eac65'::uuid,
  '9dd9d702-e9dc-5c10-9501-e62eacaea9ae'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'in_progress',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'cf74897e-8375-596a-81db-63fcc6a9d9fc'::uuid,
  'Paper writing room 37',
  'Shared workspace for documents, tasks, and team chat.',
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('cf74897e-8375-596a-81db-63fcc6a9d9fc'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('cf74897e-8375-596a-81db-63fcc6a9d9fc'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('cf74897e-8375-596a-81db-63fcc6a9d9fc'::uuid, '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('cf74897e-8375-596a-81db-63fcc6a9d9fc'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('cf74897e-8375-596a-81db-63fcc6a9d9fc'::uuid, '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '0b77833f-ace3-58b7-82b5-2eca5b1a0c0f'::uuid,
  'cf74897e-8375-596a-81db-63fcc6a9d9fc'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '55fd133f-ad2d-51c8-80d4-6b26c88f76b0'::uuid,
  'cf74897e-8375-596a-81db-63fcc6a9d9fc'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '487af2a0-ae81-5093-a085-8f3245f67119'::uuid,
  'cf74897e-8375-596a-81db-63fcc6a9d9fc'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '97fe0d74-4496-5775-8ed5-0adb40712025'::uuid,
  'cf74897e-8375-596a-81db-63fcc6a9d9fc'::uuid,
  'Draft related work section',
  'Workspace task',
  'todo',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '990d9193-ba7e-5da4-936c-fef395525118'::uuid,
  'cf74897e-8375-596a-81db-63fcc6a9d9fc'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'in_progress',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '8e83e8ea-adf5-59d3-b401-601b1b3b8078'::uuid,
  'cf74897e-8375-596a-81db-63fcc6a9d9fc'::uuid,
  'Run baseline model',
  'Workspace task',
  'completed',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '41674811-dd7f-5791-bb18-f5778a657605'::uuid,
  'cf74897e-8375-596a-81db-63fcc6a9d9fc'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'todo',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '0566e0c1-5f84-560b-8a32-643dc03cb4b6'::uuid,
  'cf74897e-8375-596a-81db-63fcc6a9d9fc'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'in_progress',
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '083def64-c238-53ae-a966-fbff9e590331'::uuid,
  'Grant workspace 38',
  'Shared workspace for documents, tasks, and team chat.',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('083def64-c238-53ae-a966-fbff9e590331'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('083def64-c238-53ae-a966-fbff9e590331'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('083def64-c238-53ae-a966-fbff9e590331'::uuid, '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('083def64-c238-53ae-a966-fbff9e590331'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('083def64-c238-53ae-a966-fbff9e590331'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'fe1334c8-ad1d-530f-8810-17079339cde0'::uuid,
  '083def64-c238-53ae-a966-fbff9e590331'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'b5a874cd-f227-5af1-b5c2-10bcfcc759a3'::uuid,
  '083def64-c238-53ae-a966-fbff9e590331'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '1a186722-b3a6-5f3b-afb6-7c1727bf089e'::uuid,
  '083def64-c238-53ae-a966-fbff9e590331'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd3ec66f2-2d42-5bc4-9510-93ca0e55731b'::uuid,
  '083def64-c238-53ae-a966-fbff9e590331'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'todo',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '1d7d7432-353f-5ebc-b3cb-e47821b3a87f'::uuid,
  '083def64-c238-53ae-a966-fbff9e590331'::uuid,
  'Run baseline model',
  'Workspace task',
  'in_progress',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'ba4b84c0-386f-5e69-a259-d958f19a34cd'::uuid,
  '083def64-c238-53ae-a966-fbff9e590331'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'completed',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '4418de85-9a4e-5e74-8359-3ee6b91b4e9e'::uuid,
  '083def64-c238-53ae-a966-fbff9e590331'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'todo',
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '41876b38-c19d-514c-b97b-b04dffce7fbe'::uuid,
  '083def64-c238-53ae-a966-fbff9e590331'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'in_progress',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '0f0f27e5-6f11-5e38-afe7-2e0bfa3ea107'::uuid,
  'Methods club 39',
  'Shared workspace for documents, tasks, and team chat.',
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0f0f27e5-6f11-5e38-afe7-2e0bfa3ea107'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0f0f27e5-6f11-5e38-afe7-2e0bfa3ea107'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0f0f27e5-6f11-5e38-afe7-2e0bfa3ea107'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0f0f27e5-6f11-5e38-afe7-2e0bfa3ea107'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0f0f27e5-6f11-5e38-afe7-2e0bfa3ea107'::uuid, 'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '95a3c32d-2cb7-52f0-ba14-efddfbc1afca'::uuid,
  '0f0f27e5-6f11-5e38-afe7-2e0bfa3ea107'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'bab51ef1-e7d7-5314-b8d1-216c8bfa4540'::uuid,
  '0f0f27e5-6f11-5e38-afe7-2e0bfa3ea107'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '0cc6124d-847a-5760-b7f5-ccc9c958ec38'::uuid,
  '0f0f27e5-6f11-5e38-afe7-2e0bfa3ea107'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'ae3b31cd-9358-563c-8c98-3930db8c099f'::uuid,
  '0f0f27e5-6f11-5e38-afe7-2e0bfa3ea107'::uuid,
  'Run baseline model',
  'Workspace task',
  'todo',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '03a02e0f-364f-514c-ae30-7a274c64f76e'::uuid,
  '0f0f27e5-6f11-5e38-afe7-2e0bfa3ea107'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'in_progress',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '929a51b3-8cc4-5315-93b1-d0482a253828'::uuid,
  '0f0f27e5-6f11-5e38-afe7-2e0bfa3ea107'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'completed',
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '36d31846-cd3f-58c4-96b0-32501e34414f'::uuid,
  '0f0f27e5-6f11-5e38-afe7-2e0bfa3ea107'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'todo',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'b98d0fdf-81f8-5f85-ae87-28dcb5f5640c'::uuid,
  '0f0f27e5-6f11-5e38-afe7-2e0bfa3ea107'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'in_progress',
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'c67a41e9-06a0-5761-a4c7-2fdebb6f9896'::uuid,
  'Data room 40',
  'Shared workspace for documents, tasks, and team chat.',
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('c67a41e9-06a0-5761-a4c7-2fdebb6f9896'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('c67a41e9-06a0-5761-a4c7-2fdebb6f9896'::uuid, 'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('c67a41e9-06a0-5761-a4c7-2fdebb6f9896'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('c67a41e9-06a0-5761-a4c7-2fdebb6f9896'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('c67a41e9-06a0-5761-a4c7-2fdebb6f9896'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'f1ed8a7b-bec3-5137-87e4-5f1506bda663'::uuid,
  'c67a41e9-06a0-5761-a4c7-2fdebb6f9896'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '2ae34d3d-1831-5a5d-8e87-d9fb62088458'::uuid,
  'c67a41e9-06a0-5761-a4c7-2fdebb6f9896'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '0fb2c609-b3bd-505c-9b96-f3164f4732e7'::uuid,
  'c67a41e9-06a0-5761-a4c7-2fdebb6f9896'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '2f6cf941-f819-5743-bb96-4459ad7b47e9'::uuid,
  'c67a41e9-06a0-5761-a4c7-2fdebb6f9896'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'todo',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'baf2a727-692b-576d-bea8-bd1853627b41'::uuid,
  'c67a41e9-06a0-5761-a4c7-2fdebb6f9896'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'in_progress',
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd4f58574-8c19-54cf-aeb2-f392832db0a2'::uuid,
  'c67a41e9-06a0-5761-a4c7-2fdebb6f9896'::uuid,
  'Schedule collaborator sync',
  'Workspace task',
  'completed',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '36993137-0eea-59e7-a88b-7965e1b8388e'::uuid,
  'c67a41e9-06a0-5761-a4c7-2fdebb6f9896'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'todo',
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


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
