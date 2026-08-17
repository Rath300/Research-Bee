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