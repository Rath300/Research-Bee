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

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid, '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '1d4ccaa9-2144-5110-b542-e72db183ab3b'::uuid,
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '0999679f-6436-5073-bd4d-fb892f8b64dc'::uuid,
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '4bbef57d-eec3-584d-b9ba-a7b166f6429a'::uuid,
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '96d17116-3670-5fd4-99f6-f905d1368788'::uuid,
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'todo',
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '680ae045-00d8-596b-8c49-3073202f3c90'::uuid,
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'in_progress',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '5a57163d-cb2c-513b-92ef-14287a9b9c05'::uuid,
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Submit internal review',
  'Workspace task',
  'completed',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'f6229a2f-0984-5a90-b904-fa465e9f57bd'::uuid,
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Update project README',
  'Workspace task',
  'todo',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '0ba59204-78bc-5155-8386-d5b9cc616edf'::uuid,
  '2787f78b-28e4-52b2-96b2-a85da032fec3'::uuid,
  'Draft related work section',
  'Workspace task',
  'in_progress',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Paper writing room 22',
  'Shared workspace for documents, tasks, and team chat.',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('053acd0f-9b79-53ad-9781-9053247be1e6'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('053acd0f-9b79-53ad-9781-9053247be1e6'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('053acd0f-9b79-53ad-9781-9053247be1e6'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('053acd0f-9b79-53ad-9781-9053247be1e6'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('053acd0f-9b79-53ad-9781-9053247be1e6'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '5cefcac6-aaa1-5360-ae35-4be0d06ef5c2'::uuid,
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '261d79d1-5aa4-566b-8c28-e5fbe877fd68'::uuid,
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'b43f43a9-3ebe-5078-a847-8b8a20dfb895'::uuid,
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd6211f94-9324-5e98-bea8-84d015e6ddb1'::uuid,
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'todo',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'ffcf7ae5-4ae0-5165-b04b-7f9d3a593fd1'::uuid,
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Submit internal review',
  'Workspace task',
  'in_progress',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '108e8b59-04e8-50ad-a1f9-c472371fdbbb'::uuid,
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Update project README',
  'Workspace task',
  'completed',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '0fada0ca-8443-5496-bbf0-eeac219e5b2a'::uuid,
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Draft related work section',
  'Workspace task',
  'todo',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'a40c2bae-cba0-5d5f-993a-8b0ffda2661f'::uuid,
  '053acd0f-9b79-53ad-9781-9053247be1e6'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'in_progress',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Grant workspace 23',
  'Shared workspace for documents, tasks, and team chat.',
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0cc241b5-3ba9-52a0-880b-5270da042054'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0cc241b5-3ba9-52a0-880b-5270da042054'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0cc241b5-3ba9-52a0-880b-5270da042054'::uuid, 'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0cc241b5-3ba9-52a0-880b-5270da042054'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('0cc241b5-3ba9-52a0-880b-5270da042054'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '8e6971b8-29f0-51bd-b807-725945822650'::uuid,
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '22fcdf32-d230-5446-be2c-dc436df18a16'::uuid,
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '972d602a-9132-5724-b58a-c6dc3edeeefe'::uuid,
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '77f1cbf2-04dc-591d-ae8d-54ffddd9a7bb'::uuid,
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Submit internal review',
  'Workspace task',
  'todo',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '07761f22-5e93-5ba2-aad3-4f76e2fd7eb1'::uuid,
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Update project README',
  'Workspace task',
  'in_progress',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '290afdfc-3142-5d09-8e8c-a9f9233b4cf1'::uuid,
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Draft related work section',
  'Workspace task',
  'completed',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e0eafae8-ec58-5eb0-a1b2-63d139479326'::uuid,
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'todo',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'b96949ec-9ee2-51e9-b150-0908eb2b56b9'::uuid,
  '0cc241b5-3ba9-52a0-880b-5270da042054'::uuid,
  'Run baseline model',
  'Workspace task',
  'in_progress',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Methods club 24',
  'Shared workspace for documents, tasks, and team chat.',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'e9a78956-6c5f-519f-bee5-119f027bdbed'::uuid,
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '837fa50b-eab0-5adb-a080-7b2fa4cae5fd'::uuid,
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'db85ce6e-f03e-586b-a215-7c67ce0a38c1'::uuid,
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '48c9e0e2-b7a8-5db1-8367-fe00f7380029'::uuid,
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Update project README',
  'Workspace task',
  'todo',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '53e68d05-8dff-517f-8d6a-c250f33a60b3'::uuid,
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Draft related work section',
  'Workspace task',
  'in_progress',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '979472bc-50db-5e03-945f-d156b0abd4ee'::uuid,
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'completed',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '31c02940-cd66-5955-a55d-53222e0ab749'::uuid,
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Run baseline model',
  'Workspace task',
  'todo',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '198aa194-c97a-5c7b-bb53-6d5f88ee11b0'::uuid,
  'b3285e3a-02bd-5841-8585-942fd00b94cf'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'in_progress',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Data room 25',
  'Shared workspace for documents, tasks, and team chat.',
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid, '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '75c7e58c-8c62-5dbc-bcd7-b2249a35bb05'::uuid,
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '183caa8b-c88b-5996-8cd1-1cb17f30e77f'::uuid,
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'afc756ee-514e-594b-b858-acc36c925f07'::uuid,
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '9ecae6e8-90ec-5121-83a6-8ae3a6327ae7'::uuid,
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Draft related work section',
  'Workspace task',
  'todo',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '9690536b-61b2-51a2-b3cf-2ca165c4a13f'::uuid,
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'in_progress',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '0697b968-3d0a-5bf9-b63c-4b07ff8ca072'::uuid,
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Run baseline model',
  'Workspace task',
  'completed',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd69157a4-addc-5085-9565-d37437f5fd56'::uuid,
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Write IRB amendment',
  'Workspace task',
  'todo',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '96250c70-6fff-5d9c-921e-0dbf93f98364'::uuid,
  'fd9bc836-2d21-503e-ada3-cddd2ad483b0'::uuid,
  'Prepare figure panels',
  'Workspace task',
  'in_progress',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '1521df73-624b-59ca-85bd-485950d3a0e5'::uuid,
  'Lab coordination 26',
  'Shared workspace for documents, tasks, and team chat.',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('1521df73-624b-59ca-85bd-485950d3a0e5'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('1521df73-624b-59ca-85bd-485950d3a0e5'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('1521df73-624b-59ca-85bd-485950d3a0e5'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('1521df73-624b-59ca-85bd-485950d3a0e5'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('1521df73-624b-59ca-85bd-485950d3a0e5'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'a5eef62d-d32c-5e46-b703-035560e7e725'::uuid,
  '1521df73-624b-59ca-85bd-485950d3a0e5'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'a5a06898-2d2d-5250-9947-aecc4cf7becf'::uuid,
  '1521df73-624b-59ca-85bd-485950d3a0e5'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '1e09a3b1-91ca-5579-836d-7e21f1d95f45'::uuid,
  '1521df73-624b-59ca-85bd-485950d3a0e5'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '0af5c4bc-162e-5710-a33a-f6384da15906'::uuid,
  '1521df73-624b-59ca-85bd-485950d3a0e5'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'todo',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '8dc6fd68-3279-5d2b-a4eb-a42ca39526c9'::uuid,
  '1521df73-624b-59ca-85bd-485950d3a0e5'::uuid,
  'Run baseline model',
  'Workspace task',
  'in_progress',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

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
