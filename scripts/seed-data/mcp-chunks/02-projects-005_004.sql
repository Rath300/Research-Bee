INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Vascularized cardiac organoids — cohort 6',
  'Vascularized cardiac organoids is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Seattle, WA',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ab45e5ed-62d9-53db-8d94-4a7d29e72038'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  'owner',
  'active',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2d7f2fe4-d8a9-5d8c-903c-296a81110551'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid,
  'editor',
  'active',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '59236d1b-6245-584a-9af6-2ff4b0815192'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid,
  'viewer',
  'active',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6905d295-5b36-592a-a526-26c8c09ee227'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'ce7769bd-532f-5bdc-ad75-945193340435'::uuid,
  'viewer',
  'active',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9b0f9696-daf8-5c80-a9d0-6c274c6a39cf'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid,
  'viewer',
  'active',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'aba6df02-2484-59fa-b828-b35f6d733b9a'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  '789cb839-9c80-5444-ae46-de39fa27b287'::uuid,
  'viewer',
  'active',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '39fd8b5b-3b19-5f23-9bce-64b4966c152e'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  '3a305db2-a0f9-5bd9-94ce-ca6892b43188'::uuid,
  'viewer',
  'active',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fb128e48-e8fd-5d85-bafb-6e6a3e21d573'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  '345c8171-44e4-513a-98ee-6a601680d628'::uuid,
  'viewer',
  'active',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '498981a8-9b5c-5657-a71d-33f85399f36c'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Prepare figure panels',
  'Tracked work item for Vascularized cardiac organoids — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8a17e266-09dd-5de7-8e14-3c2471e0bd5b'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Vascularized cardiac organoids — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ea500de5-218e-5fea-8ee2-1f3f00f233f6'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Vascularized cardiac organoids — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a55dbdc6-fa13-5b5c-b35e-e188ffd9fee6'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Vascularized cardiac organoids — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'ce7769bd-532f-5bdc-ad75-945193340435'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cb92d3bd-3f5b-5e34-adad-efecb1d73a7b'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Vascularized cardiac organoids — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '23d90824-8c14-5d1b-9053-e4e126c136c4'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Vascularized cardiac organoids — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '789cb839-9c80-5444-ae46-de39fa27b287'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1a9ef103-f675-5836-a804-2fc2658c6f54'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '3a305db2-a0f9-5bd9-94ce-ca6892b43188'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a6d39036-44ab-5d6c-acbe-d59adb67c551'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Update project README (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '345c8171-44e4-513a-98ee-6a601680d628'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd8b755cd-17b2-5ac3-9caa-f79f14c77244'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd680a175-c4a2-55f7-915a-1fc23a599015'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid,
  '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7a7400cb-605d-5538-bc2e-f1fd72246cff'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid,
  '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e3c699d8-552f-53db-9b1d-1db6aeda5412'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'ce7769bd-532f-5bdc-ad75-945193340435'::uuid,
  'ce7769bd-532f-5bdc-ad75-945193340435'::uuid,
  true,
  'ops',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Labor market effects of credentialing — cohort 6',
  'Labor market effects of credentialing is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Pittsburgh, PA',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '192db0da-5c9a-5d01-9955-e58c6881ea13'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  'owner',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6a791dc1-b0fb-56bd-9d97-60403008f17a'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid,
  'editor',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd1a0f770-c131-5b3a-ad68-e517d8e01ed6'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid,
  'viewer',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4abb54ff-1d94-5ef6-9879-87cc7c663a49'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid,
  'viewer',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '134d7ad2-21ce-50ee-a835-dbc2b107f1db'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid,
  'viewer',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '855b507c-12ee-5451-bb4a-642921c587c2'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'a0be9746-2732-59d8-9d1c-52829b061343'::uuid,
  'viewer',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8866c6d2-7381-5b30-8559-86b50b212f32'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid,
  'viewer',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6239bce8-7d79-5322-b8be-284738e42f41'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'a44778cb-c276-5a51-bc92-31e723fba28c'::uuid,
  'viewer',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4e8a66ea-4cfc-5785-931e-0215d482d4c2'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'd607c5db-de3d-5283-938a-378840208167'::uuid,
  'viewer',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fc016f27-dc2c-5340-92e8-271b8a16bf5f'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Prepare figure panels',
  'Tracked work item for Labor market effects of credentialing — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c12c201f-79eb-57dd-87f9-a720b83a782c'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Labor market effects of credentialing — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4dd2d03e-3aa2-5d21-aa6c-482ea8bdf651'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Labor market effects of credentialing — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7fef4233-edf6-5b2c-9e25-1d4e1f6fdecb'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Labor market effects of credentialing — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '010ad3b8-2717-5476-a38b-3dd1c89a1cbd'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Labor market effects of credentialing — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6c7079f7-3bcd-552b-afb8-d92764dcb439'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Labor market effects of credentialing — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'a0be9746-2732-59d8-9d1c-52829b061343'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9ef1779c-b043-5c90-97f9-7d7d96c76bf1'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cdf5aecf-8b3e-55a6-8364-21109f828e5d'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Update project README (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'a44778cb-c276-5a51-bc92-31e723fba28c'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a15624aa-f766-53cc-81b1-bab79c9ef3a8'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0d12a089-fe1e-56d6-ae83-869eeafafb5b'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid,
  '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f1399dc2-6d1f-543f-b9d8-f122185f9acf'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid,
  'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a987cfd7-8390-5569-8cdf-dd5e1f96940f'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid,
  '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid,
  true,
  'ops',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Low-cost water contaminant sensing — cohort 6',
  'Low-cost water contaminant sensing is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'remote',
  'long_term',
  10,
  true,
  'Atlanta, GA',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '88678ed6-fdd4-5ca7-b5e8-f2cee3bc6774'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  'owner',
  'active',
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd13120a2-f35c-554e-b08d-3140c23d2ebf'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  'editor',
  'active',
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '993e051c-591f-5cdb-8e8b-a4bd87d2a4a6'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid,
  'viewer',
  'active',
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a2af6c55-7e17-59a2-97a9-31c0f152c247'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid,
  'viewer',
  'active',
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3ca757b0-9090-5dbf-bd9e-a24cda55d93d'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Prepare figure panels',
  'Tracked work item for Low-cost water contaminant sensing — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a41df258-fa2b-55b7-9db9-6d530d391fb5'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Low-cost water contaminant sensing — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9ce2fd57-4a5a-5cd2-b745-1f93e206364e'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Low-cost water contaminant sensing — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bce0b517-27f0-5810-810c-fa501b5f687e'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Low-cost water contaminant sensing — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2bcfed20-cd60-5b80-b3c2-351ea406cd77'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Low-cost water contaminant sensing — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ba782d29-2fee-5d86-8b5e-4b74f943a0c8'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Low-cost water contaminant sensing — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f7216692-27c6-5027-b5a6-562dea486313'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1c9f9bce-8ab7-5f03-a10f-9899c28f51b9'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Update project README (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '22dbd7fa-c504-5b33-b602-6499605f8fa5'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '88ef827a-d3e5-544b-8576-f8ea4236e8b9'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'efc40fe7-7dfe-5ef1-9ba7-3cdb65100133'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid,
  '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a9975363-bb7a-52b8-81a1-702768bb1474'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid,
  '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid,
  true,
  'ops',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;