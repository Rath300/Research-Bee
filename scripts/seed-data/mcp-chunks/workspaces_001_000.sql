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