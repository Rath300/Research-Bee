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