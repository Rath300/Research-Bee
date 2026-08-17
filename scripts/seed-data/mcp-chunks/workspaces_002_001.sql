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