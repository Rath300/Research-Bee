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