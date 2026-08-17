INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Federated learning for rare disease cohorts — cohort 2',
  'Federated learning for rare disease cohorts is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around privacy, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  ARRAY['privacy','ML']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'local',
  'long_term',
  15,
  true,
  'Baltimore, MD',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '08e5fd3c-6f1c-5f33-a6ec-d6dc08a5069c'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'owner',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '51cfac5d-0db1-5e01-aa56-19b8c50edcf6'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  'editor',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '77efcf0a-b9dd-5c57-8fd6-5efaaab291fd'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  'viewer',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0fdc93f9-c55d-57a6-84e7-41c36c96e8a5'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid,
  'viewer',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '598766ad-db9e-598a-a8b4-423fdbca5e93'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  '05f978d0-0879-58f9-a6dc-805cdda510f6'::uuid,
  'viewer',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ec867ec8-f4a0-5240-a8ac-0407f47fed40'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid,
  'viewer',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '391febae-e568-5876-92a3-20e1d544cf7e'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid,
  'viewer',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '82f5161b-040a-57ba-b984-6242dce0213d'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid,
  'viewer',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '94d63d69-7d38-550d-acdb-0ddab49e9474'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  'viewer',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c802f007-bce0-5dc2-8d28-8df9f558a2c3'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'aab5cb25-5c94-57a2-8d26-ff226d895aa0'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6adc1df7-50f4-5635-a89d-39af33588c2e'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Submit internal review',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c53e6969-8b03-5af7-a194-e8c1ecce43cd'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Update project README',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '269ec676-a50b-5dd5-8ec7-4c052815567f'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Draft related work section',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '05f978d0-0879-58f9-a6dc-805cdda510f6'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e85ffc79-3ac4-58a7-b3dc-e329f43f6559'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Clean and version dataset',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '823ef703-39b2-5f73-af6b-00e67b087c1e'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7f3d08de-13cc-575a-bce4-d3c052ccc164'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b445385d-1561-5be7-958d-1e9852a5d8f0'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  true,
  'planning',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2c439585-81f2-511f-a9e9-c9ec39cf9801'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  true,
  'analysis',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '26d4c246-fe8f-51b0-bac0-d0803655c4f1'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  true,
  'writing',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8964b5f6-1070-5324-a0c1-53b451a7453f'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid,
  '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid,
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
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Wildfire smoke exposure forecasting — cohort 2',
  'Wildfire smoke exposure forecasting is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around air quality, forecasting. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  ARRAY['air quality','forecasting']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'remote',
  'short_term',
  4,
  true,
  'New Haven, CT',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '16e14a37-0839-5344-963a-519342f55674'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'owner',
  'active',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '29eba0db-db1d-50e6-85b5-a863d7470cd7'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  'editor',
  'active',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9e6cb230-e1c2-5f60-8f8d-ab059861511d'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  'viewer',
  'active',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '920b53d0-58ae-5935-9a87-eb7dded37809'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
  'viewer',
  'active',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8bd3c8bb-e2f0-57f3-b0b3-11af99b467ae'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f13001ca-b75b-5197-8b29-3f78973ada1e'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8d0b3e4a-ded6-5f39-991c-e68dfd005479'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Submit internal review',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c7e2ce17-70aa-525d-82c6-5ab671f47685'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Update project README',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6d599db6-3dd1-5a2c-bfde-2948b287b0b1'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Draft related work section',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '70c79e27-d8bc-57d1-b0d6-2030d11cae2a'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Clean and version dataset',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '83de3d53-2789-530e-a4ed-2a7b4d7f3ef5'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'df3cc504-843e-5abc-b835-5d045e6862b3'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4d345701-fbf4-5f88-af3d-b602e5561584'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  true,
  'planning',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'db13a9ce-f617-5bc5-81ca-6b3d8110228f'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  true,
  'analysis',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'dbabac05-d457-5a15-8eef-4383ec8c94de'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  true,
  'writing',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3f6158d4-732d-54f8-92d7-9160530eb079'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
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
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Solid-state battery interface imaging — cohort 2',
  'Solid-state battery interface imaging is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around interfaces, microscopy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  ARRAY['interfaces','microscopy']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Princeton, NJ',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0c9debae-399c-5a1d-89d8-77a3f46f194d'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  'owner',
  'active',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5972fa94-78de-557c-9c3d-ea1e1c2a5027'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid,
  'editor',
  'active',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b97f5540-e72c-5103-8a3b-a19860bf3dcb'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid,
  'viewer',
  'active',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4d24d440-b8ae-555b-a2ed-b3ced72994d2'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid,
  'viewer',
  'active',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a894b7d6-ed83-5c1d-8401-33f6a216486a'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'f324dc11-eb21-5df5-a147-1760b8514837'::uuid,
  'viewer',
  'active',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dbf90da3-ae4e-5589-9a40-217981259824'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Solid-state battery interface imaging — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0121a0ed-4205-5f21-a239-e939801c0f5a'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Solid-state battery interface imaging — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ce52ac23-c2f7-5af2-9b8d-04af29f6db36'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Submit internal review',
  'Tracked work item for Solid-state battery interface imaging — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2c6e4ada-ded8-5952-abd2-6f46f34b1008'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Update project README',
  'Tracked work item for Solid-state battery interface imaging — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a6527ebd-9fb1-5dd4-a48a-16aaf957462c'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Draft related work section',
  'Tracked work item for Solid-state battery interface imaging — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'f324dc11-eb21-5df5-a147-1760b8514837'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ace05231-0567-54bf-b317-b8cac767d410'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Clean and version dataset',
  'Tracked work item for Solid-state battery interface imaging — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ce944c3a-6507-5253-b4da-561f975db66a'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Solid-state battery interface imaging — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9b11818f-1588-56e7-b185-c80eb5d28e90'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Solid-state battery interface imaging — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c7d6eaac-fd5f-5d10-ae8b-c70f8d2af961'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  true,
  'planning',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4e79b6a2-4e5b-5515-94c5-926ead6ccb5c'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid,
  'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid,
  true,
  'analysis',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e7b268c2-c578-5feb-8a87-70e60c61f400'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid,
  'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid,
  true,
  'writing',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b3e5fedd-baaf-5b35-a17b-a5436bf528f0'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid,
  '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid,
  true,
  'ops',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;