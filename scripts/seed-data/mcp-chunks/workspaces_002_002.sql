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