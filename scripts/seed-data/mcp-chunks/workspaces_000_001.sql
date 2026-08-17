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