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
