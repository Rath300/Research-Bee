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