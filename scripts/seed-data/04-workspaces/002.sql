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
