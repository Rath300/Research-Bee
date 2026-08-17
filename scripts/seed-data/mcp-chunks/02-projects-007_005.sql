INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'Federated learning for rare disease cohorts — cohort 8',
  'Federated learning for rare disease cohorts is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around privacy, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  ARRAY['privacy','ML']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'local',
  'long_term',
  15,
  true,
  'Pittsburgh, PA',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '54c90ff3-5be2-5c0d-af5a-295b06c9dba1'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  'owner',
  'active',
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f46c67d9-794d-580b-bee4-84ca636f012c'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  'editor',
  'active',
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3a1190da-d758-5f74-8831-4f065990956b'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  'viewer',
  'active',
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0c48c121-951a-51dc-8934-31e30aa79ba3'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'viewer',
  'active',
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '34dec19a-d9ed-5e6e-b6c8-f41c5ea0dfc2'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  'viewer',
  'active',
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b9646d83-bfb9-5757-b968-bca0b1c3b138'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  'viewer',
  'active',
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c51f2257-72a0-52a6-a660-f861e199f213'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  'viewer',
  'active',
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '28483e5c-7bdc-580a-a626-a31b9ab19641'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  'viewer',
  'active',
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7d7875a7-58cd-5066-89cb-e4ed287ab76f'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid,
  'viewer',
  'active',
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5a3c7e43-9d52-5629-88c0-e37a2b3402eb'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f09b27eb-ffba-5ff1-9d60-3f14e2b16dd5'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9da4cf2b-fa64-5ef7-84ef-7a1e4f7c533e'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'Submit internal review',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7fa0186c-9601-5f64-b666-0426d92c4cde'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'Update project README',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4231d0db-7cc0-5475-b24d-4bde88899d49'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'Draft related work section',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0e0ce556-963e-529f-bd96-a028d8f8d21c'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'Clean and version dataset',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0b990045-63d1-5235-b394-b6396336499d'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '69201719-4641-5f74-99c0-9bb425f8810d'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd7a092f1-0ced-5892-b061-95b75be19b7f'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  true,
  'planning',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a2570411-4691-5107-a261-3dd0176ba0c6'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  true,
  'analysis',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5cb3ff5f-c90c-542f-b258-753b5e4042d0'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  true,
  'writing',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f40267e9-5053-582b-beb4-263dfffcd52a'::uuid,
  '329abbb8-74ee-5f93-90bd-99517a7f78ac'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  true,
  'ops',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  'Wildfire smoke exposure forecasting — cohort 8',
  'Wildfire smoke exposure forecasting is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around air quality, forecasting. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  ARRAY['air quality','forecasting']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'remote',
  'short_term',
  4,
  true,
  'Atlanta, GA',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e1b754f4-be10-598e-b129-1ac8dc15e41a'::uuid,
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  'owner',
  'active',
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '30ae7b91-f814-5a04-88eb-6c817eb4dd68'::uuid,
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  'editor',
  'active',
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b130c9a6-4d10-5c60-a132-0baaeb0a35b1'::uuid,
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  'viewer',
  'active',
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '576c2475-d2f4-5bbe-8154-06cf4c19a1b7'::uuid,
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  'viewer',
  'active',
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6959bde9-e66c-5716-8715-6b9dcb9d4960'::uuid,
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5e379403-75b9-5057-b081-61c1ee8db528'::uuid,
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd2979a2c-0de9-59a9-978f-760c8d440229'::uuid,
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  'Submit internal review',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '051d9ebf-ac3e-5939-9a13-220aac64e7d6'::uuid,
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  'Update project README',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '63ee3ba3-b0c8-5822-a798-489715bc2f40'::uuid,
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  'Draft related work section',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8ef66a24-54cf-527b-bddf-c3eeba14797c'::uuid,
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  'Clean and version dataset',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4d7de8cc-5aa6-516f-bd2a-7bbdec692ede'::uuid,
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '844ae95b-5c1d-5d82-ab32-8bacc316ebbc'::uuid,
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fe650136-7b8e-5191-901f-ad050e9515ed'::uuid,
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  true,
  'planning',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6621c7af-d988-5035-8a5c-188545d5de6e'::uuid,
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  true,
  'analysis',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '16d47b28-f88d-5ab0-96d2-fca22f15df77'::uuid,
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  true,
  'writing',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ef9ed170-aead-5e10-a5c9-3edf7db434f1'::uuid,
  '26b48f3a-9ac5-53e2-808d-5898868a141e'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  true,
  'ops',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  'Solid-state battery interface imaging — cohort 8',
  'Solid-state battery interface imaging is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around interfaces, microscopy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  ARRAY['interfaces','microscopy']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Ann Arbor, MI',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ca903e92-7dec-5af8-8c8a-3d39907cd204'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  'owner',
  'active',
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '38b86bed-819f-5d3c-a6cc-084379a153a3'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  'editor',
  'active',
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '914da07a-4760-5bf8-8e70-b09a4a99fff5'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  'viewer',
  'active',
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b89533d0-f143-5a9f-aaa2-d29d47a21862'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  'viewer',
  'active',
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1c99f540-fb2c-5239-8c15-63e2459d48dc'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  'viewer',
  'active',
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '97b27aab-2638-5201-8b8c-1c904c54b9e5'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Solid-state battery interface imaging — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '745364c2-840f-5a6d-836a-62b45f9899ce'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Solid-state battery interface imaging — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd1922f11-3949-5e2d-8217-08ecefc59fcc'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  'Submit internal review',
  'Tracked work item for Solid-state battery interface imaging — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eeb06100-4f60-5855-8470-ddb5b3c4fff1'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  'Update project README',
  'Tracked work item for Solid-state battery interface imaging — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '76b8ef29-fdc1-5253-a3e5-4b73f62a9ba6'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  'Draft related work section',
  'Tracked work item for Solid-state battery interface imaging — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '555b4efa-1e9f-5bf0-853b-8e51be3551ac'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  'Clean and version dataset',
  'Tracked work item for Solid-state battery interface imaging — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a1f47555-4a4d-5a93-8812-24647f2fa1da'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Solid-state battery interface imaging — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5ac5f479-6c45-5a4a-87f0-d76af7907dfe'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Solid-state battery interface imaging — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '251fbb1d-c087-5aef-ae0c-4a6abafdad16'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  true,
  'planning',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '719dd338-b7ae-5b37-847c-7475108e46b3'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  true,
  'analysis',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1130d143-5126-5b81-98d3-a4ed227e8130'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  true,
  'writing',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '701475c6-e11f-55bd-a826-1b4c04e46c37'::uuid,
  'c8c57fe9-ed66-5090-b910-23bb96ffd68e'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  true,
  'ops',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;