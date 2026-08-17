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