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