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