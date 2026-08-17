-- projects 80..99

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  'Single-cell atlas of treatment response — cohort 5',
  'Single-cell atlas of treatment response is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around genomics, RNA-seq, oncology. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  ARRAY['genomics','RNA-seq','oncology']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'local',
  'short_term',
  12,
  true,
  'Pasadena, CA',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '161c0fdd-2bc7-5e0d-b2ae-ceac66fe0be6'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  'owner',
  'active',
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1f75a09d-31d2-5cd1-b037-c04b713cc0b9'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid,
  'editor',
  'active',
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '607c148c-3d1f-5e6a-828e-cc300df19710'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid,
  'viewer',
  'active',
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '97584ac6-274e-537f-9aa1-fb8a01bbab75'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid,
  'viewer',
  'active',
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c4df4ec7-795d-5f68-ab9a-c0cc12a6e7fe'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  'b0180410-8061-5081-8509-d15823d3c0a5'::uuid,
  'viewer',
  'active',
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7ed860c0-e5ed-588c-a22d-edd4d659e6ad'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  'd08b51e2-35ee-57f1-b9fe-38c281fde355'::uuid,
  'viewer',
  'active',
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ab7cbf8f-0a8b-54d8-a791-96a472fffce8'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Single-cell atlas of treatment response — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7b858de6-b973-5aad-92c6-4242ed2f35d8'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Single-cell atlas of treatment response — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7a5d1d02-ecc2-5b87-87fd-b3ed387da706'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  'Submit internal review',
  'Tracked work item for Single-cell atlas of treatment response — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f0e4cafe-6d68-5c19-9efd-03a4f137db82'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  'Update project README',
  'Tracked work item for Single-cell atlas of treatment response — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0a9f74ba-9d14-5d54-8f49-69a01aa10406'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  'Draft related work section',
  'Tracked work item for Single-cell atlas of treatment response — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b0180410-8061-5081-8509-d15823d3c0a5'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '739d3803-dca3-51b0-a64c-b98479222739'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  'Clean and version dataset',
  'Tracked work item for Single-cell atlas of treatment response — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'd08b51e2-35ee-57f1-b9fe-38c281fde355'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9ca29acc-959f-5af6-9f5b-16a2062f97e7'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6f0dc5de-af81-5eaf-929c-5322e663ed79'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5307a009-f5ed-5ec6-936e-963650893aae'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  true,
  'planning',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0e3edc38-d5f9-501d-acd6-dd0b49438bae'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid,
  '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid,
  true,
  'analysis',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1e61b557-f299-562b-96c0-f7d244af843f'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid,
  'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid,
  true,
  'writing',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e477efa8-690e-5c63-8d71-569254c30e2d'::uuid,
  '1ba9a068-c0a7-5dfc-baa9-db414e97013f'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid,
  '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid,
  true,
  'ops',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  'Urban heat mitigation with satellite ML — cohort 5',
  'Urban heat mitigation with satellite ML is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around remote sensing, cities, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  ARRAY['remote sensing','cities','ML']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'Oxford, UK',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e229a2a8-9fa4-539c-ba09-109f11feba86'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  'owner',
  'active',
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd4cdf2f8-9644-5f4f-abf1-860451e1cc4f'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  '05054208-013e-5ac0-8db9-7b769e41a544'::uuid,
  'editor',
  'active',
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6e1ad72e-0c7b-5117-b86c-1c1ee91977b0'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid,
  'viewer',
  'active',
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fa253d46-3b52-5d84-b971-2f002c9a7d84'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid,
  'viewer',
  'active',
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fbccc55e-b3e1-5c15-9897-c4b78f4c5ec6'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid,
  'viewer',
  'active',
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b501f117-41d7-5936-b946-0453e483cb36'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  '9cb755c4-0ef9-56cb-9ee7-02d3013edbe0'::uuid,
  'viewer',
  'active',
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd207978e-aceb-527e-a7b5-598c96faf28e'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  '3c61d365-5745-5cca-b16b-98e085138757'::uuid,
  'viewer',
  'active',
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fccaa7e0-6c2d-5c15-9572-42d1a189fe16'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3c7560ba-f111-5f5d-9067-ad410464de12'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '05054208-013e-5ac0-8db9-7b769e41a544'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '81a3bc48-5ba6-551d-b141-a72841b6082c'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  'Submit internal review',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8598a114-3a1b-5606-bd81-2118c9d75e7a'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  'Update project README',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '99a061b3-d05b-56fb-b2ba-6ea8ce351af6'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  'Draft related work section',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b1bdaa45-0122-5df6-87e6-6929503008ac'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  'Clean and version dataset',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '9cb755c4-0ef9-56cb-9ee7-02d3013edbe0'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1920029d-5a7a-549c-a478-e6f0e6d6b0fb'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '3c61d365-5745-5cca-b16b-98e085138757'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5edada49-be87-55da-955f-1762471d84e9'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7f21c500-ddb1-5f76-b242-1f5c0d13c72d'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  true,
  'planning',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '267cd4d8-d87b-5df8-96b9-0407a021bb89'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '05054208-013e-5ac0-8db9-7b769e41a544'::uuid,
  '05054208-013e-5ac0-8db9-7b769e41a544'::uuid,
  true,
  'analysis',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '97d166b0-b950-56f4-acf2-571326beafed'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid,
  '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid,
  true,
  'writing',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ad4da684-3b76-5e79-9bef-eb23a6c3aa01'::uuid,
  'a105eea5-e532-5da7-b6e0-e260779ad51a'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid,
  '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid,
  true,
  'ops',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'High-throughput electrolyte screening — cohort 5',
  'High-throughput electrolyte screening is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around batteries, automation, DFT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  ARRAY['batteries','automation','DFT']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Singapore',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '24189167-8149-5bf6-a4d1-6636d004ceaf'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  'owner',
  'active',
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ef30aceb-0674-5382-8237-a2b55db0c909'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'bedb8fd5-db92-5834-8620-0fbed814321d'::uuid,
  'editor',
  'active',
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '229b1cd1-cade-5821-a8da-097aa75d4599'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid,
  'viewer',
  'active',
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fe6df79c-3017-5401-b252-1e942bd3999a'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid,
  'viewer',
  'active',
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2019dfd6-42dc-576e-8ffa-e78d00b62edc'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid,
  'viewer',
  'active',
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1dc6e882-5998-5c0e-9a05-ff84d2ada07d'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid,
  'viewer',
  'active',
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a81c008c-819f-5289-b598-15c77bc13ac6'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  '617208a8-08ea-5f2c-b293-4093cd3d2775'::uuid,
  'viewer',
  'active',
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5c65decd-e5d9-52a9-8d95-249be8323127'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'f1af066e-3f30-5479-830e-3162690b429d'::uuid,
  'viewer',
  'active',
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1aa7b676-7c53-5906-9300-a576b9da158b'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'Validate QC pipeline',
  'Tracked work item for High-throughput electrolyte screening — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8f2f39e9-a80e-51cf-970e-9bab101455f4'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'Collect pilot feedback',
  'Tracked work item for High-throughput electrolyte screening — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'bedb8fd5-db92-5834-8620-0fbed814321d'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '95c0c85c-01b9-54c6-9a9c-31ea7c9dda6d'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'Submit internal review',
  'Tracked work item for High-throughput electrolyte screening — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a54eb169-1f7a-52e1-909c-4af472896467'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'Update project README',
  'Tracked work item for High-throughput electrolyte screening — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '73a85704-3ca1-5934-a69f-e3274bae9181'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'Draft related work section',
  'Tracked work item for High-throughput electrolyte screening — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c1061648-e72d-59f7-b4e6-bb498374a357'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'Clean and version dataset',
  'Tracked work item for High-throughput electrolyte screening — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3596daea-fab6-59f1-b725-1d03495e0b2b'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'Run baseline model (2)',
  'Tracked work item for High-throughput electrolyte screening — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '617208a8-08ea-5f2c-b293-4093cd3d2775'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4d3e8d94-ddb3-5333-b2c8-4f25bcc5ac78'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for High-throughput electrolyte screening — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'f1af066e-3f30-5479-830e-3162690b429d'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd1af0410-886c-5f93-8446-48006d83f112'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  true,
  'planning',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '41c8a348-c640-57b7-bbb4-36e7726f1f6a'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'bedb8fd5-db92-5834-8620-0fbed814321d'::uuid,
  'bedb8fd5-db92-5834-8620-0fbed814321d'::uuid,
  true,
  'analysis',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '94c2dad5-7e5f-5aa4-8cbb-45154046bb07'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid,
  'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid,
  true,
  'writing',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '69bc734c-fcf7-5645-b7c5-d7a4307ff013'::uuid,
  '7f37f0ec-4d34-5499-b6fa-318d368ef829'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid,
  '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid,
  true,
  'ops',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  'Accessible clinical note summarization — cohort 5',
  'Accessible clinical note summarization is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around NLP, healthcare, UX. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  ARRAY['NLP','healthcare','UX']::text[],
  'active',
  'Human-Computer Interaction',
  ARRAY['User research','Prototyping','Statistics']::text[],
  'local',
  'long_term',
  15,
  true,
  'Melbourne, AU',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ee242f30-0392-5ac8-a2fc-a782f6f2871c'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  'owner',
  'active',
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5e0a6df8-d0db-54db-b778-c53bcdefe58a'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid,
  'editor',
  'active',
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '50f486d3-de72-5594-b79a-01801b004709'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  '4c0b16d5-ad7b-5990-b2bd-acbaf07eb752'::uuid,
  'viewer',
  'active',
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7ff32fc2-8734-5a11-a685-27091814084d'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid,
  'viewer',
  'active',
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9d020a4f-d945-5631-8eca-d59da5ce796d'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid,
  'viewer',
  'active',
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '21a5ffbe-6563-59cd-ad85-15b48ab72ca9'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  '9b892976-4532-57a5-9100-2063a3f4046f'::uuid,
  'viewer',
  'active',
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '60f1fb96-ceb6-555d-ae88-be959267a1f7'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid,
  'viewer',
  'active',
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '16eaeda6-6a46-5c39-9ac2-19a872d746e7'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  '7b5d6f8f-a9da-5c63-9788-0f8bd3e5ea66'::uuid,
  'viewer',
  'active',
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ab896118-4c65-5df6-855b-0279b5be43ec'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid,
  'viewer',
  'active',
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ec212255-c757-54fe-b6e6-840c86464181'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Accessible clinical note summarization — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '70711b55-735f-576c-bb26-427491cbc002'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Accessible clinical note summarization — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '58f29c5d-b3c7-5bd1-8cff-ee0b1612c59b'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  'Submit internal review',
  'Tracked work item for Accessible clinical note summarization — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '4c0b16d5-ad7b-5990-b2bd-acbaf07eb752'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1c3e85ff-6fa1-5d21-8b45-4a263ca73bd1'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  'Update project README',
  'Tracked work item for Accessible clinical note summarization — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '624cb810-759c-5f02-9cc4-34f1fd84b979'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  'Draft related work section',
  'Tracked work item for Accessible clinical note summarization — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9013b9e4-e031-586e-8d4f-6fa6209374b2'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  'Clean and version dataset',
  'Tracked work item for Accessible clinical note summarization — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '9b892976-4532-57a5-9100-2063a3f4046f'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '329820b5-fdeb-5674-833e-f94c3a98aa70'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Accessible clinical note summarization — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '648f0197-f8e2-51e9-aafb-4f590c6b3bca'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Accessible clinical note summarization — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '7b5d6f8f-a9da-5c63-9788-0f8bd3e5ea66'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '25c9195b-48a0-5d7c-8b3b-3af6a96c2488'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  true,
  'planning',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '34d62218-c484-532f-8dac-053d379d53cc'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid,
  '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid,
  true,
  'analysis',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5072c849-7eff-59b4-977d-8495a4d1d23c'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '4c0b16d5-ad7b-5990-b2bd-acbaf07eb752'::uuid,
  '4c0b16d5-ad7b-5990-b2bd-acbaf07eb752'::uuid,
  true,
  'writing',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7033491c-8cf4-5248-bf31-bfec02e2899f'::uuid,
  'ca8e133e-7dbb-50c4-8540-e2887414aa28'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid,
  'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid,
  true,
  'ops',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  'Closed-loop stimulation for memory — cohort 5',
  'Closed-loop stimulation for memory is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around neurotech, memory, EEG. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  ARRAY['neurotech','memory','EEG']::text[],
  'active',
  'Neuroscience',
  ARRAY['fMRI','Electrophysiology','Python']::text[],
  'remote',
  'short_term',
  4,
  true,
  'Cambridge, MA',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '75df4ec0-ba5c-5573-ba69-4c2d8a2de4e7'::uuid,
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  'owner',
  'active',
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '62a781d5-a4ed-52bb-85e9-89ba9710e88e'::uuid,
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid,
  'editor',
  'active',
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7265c926-5bf5-5aab-aec6-fc7aacd7d4f0'::uuid,
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  '56361163-593b-5f6a-8eb2-5269671702e2'::uuid,
  'viewer',
  'active',
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '68382b2d-9263-5aaf-ad5c-e1ad4c272935'::uuid,
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid,
  'viewer',
  'active',
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1571f7ad-e0dd-5483-9526-89a2cc560525'::uuid,
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Closed-loop stimulation for memory — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3331b93b-79a7-53d1-a338-2e59fce24f92'::uuid,
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Closed-loop stimulation for memory — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0cfc75f9-3ac3-5112-b69a-77cfd73c2b79'::uuid,
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  'Submit internal review',
  'Tracked work item for Closed-loop stimulation for memory — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '56361163-593b-5f6a-8eb2-5269671702e2'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dfd65b95-033b-5689-b6dc-2b241f28c11a'::uuid,
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  'Update project README',
  'Tracked work item for Closed-loop stimulation for memory — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9afd50dd-100e-5304-a2e0-dd42991a3b6e'::uuid,
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  'Draft related work section',
  'Tracked work item for Closed-loop stimulation for memory — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1aae5786-ed3e-511c-8bad-9cfdc4f11e5a'::uuid,
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  'Clean and version dataset',
  'Tracked work item for Closed-loop stimulation for memory — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '828f5687-ac01-5ef2-b8f8-aab189cce3ff'::uuid,
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '56361163-593b-5f6a-8eb2-5269671702e2'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8f0bb145-3624-5ce0-83c2-a0154a9e58fa'::uuid,
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a4f7e7c1-30c8-5407-bae8-13b653605945'::uuid,
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  true,
  'planning',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5591211f-1227-5ddd-8ed5-33e9dbdcece6'::uuid,
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid,
  '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid,
  true,
  'analysis',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'dcb4d73f-bc49-52fc-b48d-fcfb40ac1756'::uuid,
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '56361163-593b-5f6a-8eb2-5269671702e2'::uuid,
  '56361163-593b-5f6a-8eb2-5269671702e2'::uuid,
  true,
  'writing',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c9f3d1d2-3f65-52d1-910b-b0e4c571a47e'::uuid,
  '0f7c1dc4-1751-5f0c-bcaf-754bcd0fc5f7'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid,
  '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid,
  true,
  'ops',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  'Community vaccine confidence study — cohort 5',
  'Community vaccine confidence study is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around surveys, equity, vaccines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  ARRAY['surveys','equity','vaccines']::text[],
  'planning',
  'Public Health',
  ARRAY['Epidemiology','R','Survey design']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Palo Alto, CA',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a58774dd-1f54-500e-ab9b-dce163069f1e'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  'owner',
  'active',
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd2dc2b10-939f-5d51-9670-c1de21c71f9f'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid,
  'editor',
  'active',
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8460f942-b61d-5c11-bfa4-b78541c32334'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid,
  'viewer',
  'active',
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4040f97c-b816-5e6f-85e3-e182ee16ee3c'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid,
  'viewer',
  'active',
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '27e7e3e3-60e3-56db-a40b-5a544475fbda'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  '4ae3110b-2758-5a34-9e95-e052815cda96'::uuid,
  'viewer',
  'active',
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2e859387-6f57-5667-bbf7-75b9c2c7fc0a'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Community vaccine confidence study — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e0bac8eb-74c4-51b7-b426-4bf6bfc485e2'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Community vaccine confidence study — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3681fce9-4217-5f07-bafc-b7583a437fd4'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  'Submit internal review',
  'Tracked work item for Community vaccine confidence study — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ff6226d6-8eac-56c3-a5a3-d3b3a41187c1'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  'Update project README',
  'Tracked work item for Community vaccine confidence study — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'abd47361-75aa-5c25-99e3-fd6916122fe4'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  'Draft related work section',
  'Tracked work item for Community vaccine confidence study — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '4ae3110b-2758-5a34-9e95-e052815cda96'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5148d69e-9cc1-5567-bee7-6099f80e99ed'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  'Clean and version dataset',
  'Tracked work item for Community vaccine confidence study — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '10475fb1-39b2-519b-a509-6e4f4620d174'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Community vaccine confidence study — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '98ed217c-e078-5268-9387-9322ea347297'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Community vaccine confidence study — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f05ba476-821c-5bd8-9b55-e960e76c2f40'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  true,
  'planning',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '64629407-7bba-510e-ad88-f38f39f04486'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid,
  '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid,
  true,
  'analysis',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6aed6a68-6a7b-51a9-a19e-6285c920bd3b'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid,
  'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid,
  true,
  'writing',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a98eb597-8053-5e41-a291-3d2c6bdb13a9'::uuid,
  'cf0098e0-2f49-52ce-8bc3-7a437af0d8b6'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid,
  '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid,
  true,
  'ops',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Near-term quantum error mitigation — cohort 5',
  'Near-term quantum error mitigation is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'local',
  'long_term',
  6,
  true,
  'Berkeley, CA',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ca2a6376-6583-564d-855c-e02674ceb1c6'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  'owner',
  'active',
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1dfd2154-31c3-5335-a004-004e99c1e845'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  '57922f55-9cea-510b-8329-299c51dd6d47'::uuid,
  'editor',
  'active',
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a3d9abc4-9255-5cc3-a3dc-532954c23064'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid,
  'viewer',
  'active',
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8708a4d4-9a1d-58aa-b927-f9d2396a83f8'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid,
  'viewer',
  'active',
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '903711ab-7af0-52c0-afee-f9168d92fbff'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'a169404e-faf7-5071-b788-07d72b750c2c'::uuid,
  'viewer',
  'active',
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '49d9dee8-cbfa-5d13-a38a-a9877d017878'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'a446d3e3-844d-589c-9f96-50f5f4eaee5b'::uuid,
  'viewer',
  'active',
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9a6b0686-9910-53a5-9867-a9139dfd5438'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Near-term quantum error mitigation — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '652dcda1-0602-55fc-9405-454d2d6803d5'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Near-term quantum error mitigation — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '57922f55-9cea-510b-8329-299c51dd6d47'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5cfeb7a6-ba51-5087-aa04-57f2015f9dc7'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Submit internal review',
  'Tracked work item for Near-term quantum error mitigation — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'aee72ecf-751e-55d9-aa70-7aff43ba4afd'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Update project README',
  'Tracked work item for Near-term quantum error mitigation — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f474397c-3434-515c-a734-73b201ee9249'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Draft related work section',
  'Tracked work item for Near-term quantum error mitigation — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'a169404e-faf7-5071-b788-07d72b750c2c'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9cde124e-5cc6-5bdc-89c1-7453e349fe2d'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Clean and version dataset',
  'Tracked work item for Near-term quantum error mitigation — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'a446d3e3-844d-589c-9f96-50f5f4eaee5b'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ee1c0d00-9c66-574f-9dda-903fbf07eedc'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fc865241-5c7b-5cf0-8f8f-bdca7bc00ddf'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '57922f55-9cea-510b-8329-299c51dd6d47'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ec8ad8b0-a753-5e49-abf4-b2316f6c6fcf'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '447f6adb-761f-55d7-baf2-0647ece91ab7'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '57922f55-9cea-510b-8329-299c51dd6d47'::uuid,
  '57922f55-9cea-510b-8329-299c51dd6d47'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '637442d3-d6e5-5156-bbee-c2cf6fb05241'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid,
  'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '29a00caa-9b2c-5dde-bde8-3bffae10a5d3'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid,
  '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid,
  true,
  'ops',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Robust evaluation for clinical LLMs — cohort 5',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Boston, MA',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4c04e924-6bf9-5263-90cc-29e0ca7dbf5d'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'owner',
  'active',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1ada0de3-48d3-5caa-876b-fd78ed1071f1'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  '49fbee97-9df9-5705-9855-5aac175ded93'::uuid,
  'editor',
  'active',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'df98e9dc-99bb-5160-bcac-a1044addb993'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid,
  'viewer',
  'active',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f559edfb-325f-523a-8b9b-24a3b2ae89ec'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid,
  'viewer',
  'active',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '16a9a324-93d8-5e61-869f-c4884dc2d07a'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  '27c33522-5956-5737-a7aa-a471b0013983'::uuid,
  'viewer',
  'active',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6db3e4d1-fddb-504e-84a8-b9699d7d3f4e'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid,
  'viewer',
  'active',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '24b165fc-5742-5ef9-b768-fba8eba9dd65'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'dcbc3732-b957-594c-aa65-a88d71f238c4'::uuid,
  'viewer',
  'active',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dfb2da48-e549-5bf7-bfa2-68820a9502a3'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7064de22-2a5b-5363-907f-3c43b09e21c9'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '49fbee97-9df9-5705-9855-5aac175ded93'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '61312b6c-78ba-5f27-a5d0-7d394b1dac44'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Submit internal review',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4732982c-806a-5f46-94ce-c779dd27c292'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Update project README',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fa21179c-fb26-5f5d-9e42-a054137cc631'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Draft related work section',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '27c33522-5956-5737-a7aa-a471b0013983'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f677b2da-ac8b-5b06-880e-87a30fe9a294'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Clean and version dataset',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3c138566-ef11-5f62-af16-9b48d51759e3'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'dcbc3732-b957-594c-aa65-a88d71f238c4'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '626ac942-15e7-5d60-b9e2-97b482f1df85'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c0d70108-c125-5d69-8695-f31eb3b06ad5'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6e9a6db3-9bf3-58d5-8c27-527206770319'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '49fbee97-9df9-5705-9855-5aac175ded93'::uuid,
  '49fbee97-9df9-5705-9855-5aac175ded93'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '51d60a61-af4a-5956-9eb0-58cd5030287a'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid,
  'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '20b14abb-49e4-57b6-9a8d-3598ac158ad1'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid,
  '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid,
  true,
  'ops',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 5',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Toronto, ON',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '180694aa-5ccb-5f71-9274-5ca57e92f647'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  'owner',
  'active',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1418848f-17dc-522d-b166-592d5556c0b7'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid,
  'editor',
  'active',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0c157439-da53-556c-b2b3-a89347f1610a'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid,
  'viewer',
  'active',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f682970c-cb31-5481-9cb9-ed71f55a676c'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid,
  'viewer',
  'active',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '419f4bab-649a-54ee-8b01-85f081e67341'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid,
  'viewer',
  'active',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd2b972fc-ef25-5784-ae36-b7167cca020e'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid,
  'viewer',
  'active',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '693228ee-3706-515d-9660-ee33022d079b'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid,
  'viewer',
  'active',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '276c8be6-8698-552a-8bd8-2c16373efcf0'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'bbd25235-3b2e-5db2-a0dd-8a7dddfac498'::uuid,
  'viewer',
  'active',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b34c06da-5e0b-5e64-b758-110640f2487e'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2b4ff0de-7cf9-5c82-99e7-e494a13022ba'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f950b0de-3acc-5bd5-a97b-826722f48c09'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Submit internal review',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2cd17b46-4ea9-5804-b269-2810a4604189'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Update project README',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd20c241f-ab72-5d5c-8044-6d8b049e9c1a'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Draft related work section',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1dd5c7ce-c586-5795-b43d-c7d2ad7b1c9f'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Clean and version dataset',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd0ff5a49-b8a2-5b12-8d9a-ca7206ff9ebb'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '834d4932-941e-546b-a438-0264dafb59aa'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'bbd25235-3b2e-5db2-a0dd-8a7dddfac498'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '71ea6b8b-e5f5-54fd-b10c-705a2cc5bf44'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '04d377e0-7f1d-51ad-85e0-6f870fe85ee8'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid,
  '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6864e0fa-4751-5b07-8bfc-6b741014e73f'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid,
  'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b180ff8c-f796-59e4-ad94-49e65825be9c'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid,
  '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid,
  true,
  'ops',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'STEM identity in first-gen undergraduates — cohort 5',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Zurich, CH',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a7224b98-206c-50d2-8c01-c58682d36a08'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  'owner',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '53e1e1af-aaa4-540f-82a4-116a1ed68719'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  '40866e35-1364-5559-8365-e428e26a9b73'::uuid,
  'editor',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6819d3b2-90f3-5dbf-9ef9-3fe892c949a8'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid,
  'viewer',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7dbf3019-0f78-5f18-aa21-6420de991140'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid,
  'viewer',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6cf9c0d5-b5d7-5abc-bf1e-a5f5f308cf14'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid,
  'viewer',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ae10a087-3f08-500d-9154-3337625552d7'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid,
  'viewer',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '244ee4ad-feda-550e-85d1-86efd9e863f5'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid,
  'viewer',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '89998ed8-6fe3-538b-9cfb-bd7b4db4e590'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  '7946e966-b7f0-5144-a21a-04765a50638c'::uuid,
  'viewer',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '24509a61-0b20-572e-8d15-e750303223a0'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'b1a15199-4e78-51ba-99e1-56bf9f18a970'::uuid,
  'viewer',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '77004bc3-0d70-5797-981b-0cc1dc57cad6'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Validate QC pipeline',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd9bdba0e-0f82-5a46-aa7b-765729714368'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Collect pilot feedback',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '40866e35-1364-5559-8365-e428e26a9b73'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1125caea-8ba3-508c-8cd7-fce34958f318'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Submit internal review',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '035a3b1b-5f96-5c71-be40-21dee0ea1c2e'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Update project README',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '49eabe48-4f9e-5aa4-ad73-3c933eabf63e'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Draft related work section',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dbf41787-5679-5c80-a6ba-dde33a65598d'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Clean and version dataset',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e5df5fd2-2e91-5e2e-bd73-62ba386ed1d8'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Run baseline model (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6201fd7c-e965-5935-b072-cd04471da887'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '7946e966-b7f0-5144-a21a-04765a50638c'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2e650e40-714c-577f-9423-e8b12038ee7c'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0cbcff0b-5138-56fc-ba2c-493bdeadacfc'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '40866e35-1364-5559-8365-e428e26a9b73'::uuid,
  '40866e35-1364-5559-8365-e428e26a9b73'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '915f608f-8015-5502-bc3c-6e5c0d4a031b'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid,
  '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '171e1642-b91c-50bc-8c10-7d06902d16c7'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid,
  'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid,
  true,
  'ops',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Dexterous packing under uncertainty — cohort 5',
  'Dexterous packing under uncertainty is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'remote',
  'long_term',
  10,
  true,
  'London, UK',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f84cbd94-0b25-5924-86a1-12fc44b8c49d'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  'owner',
  'active',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '26d1c62e-fed5-57bc-ba21-9e032da999be'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  'editor',
  'active',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '49d784f7-0f0e-51e6-81dd-48ffadd9dc41'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid,
  'viewer',
  'active',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ce2a5b95-7b93-5459-ad50-dc86ef0aba82'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid,
  'viewer',
  'active',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '98bd5d2d-00d3-55a2-8f5a-129ffede138a'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Dexterous packing under uncertainty — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '08e3c804-98a5-5b04-99ab-bc4ee1603843'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Dexterous packing under uncertainty — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '426e9f82-430f-506f-b127-6720fb2acae2'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Submit internal review',
  'Tracked work item for Dexterous packing under uncertainty — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c6bc4112-6755-5180-b2cf-bcdd2d446053'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Update project README',
  'Tracked work item for Dexterous packing under uncertainty — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6a19aee0-fdd9-54f2-81ab-4f721fc6db13'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Draft related work section',
  'Tracked work item for Dexterous packing under uncertainty — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7e9e48c6-3d78-5326-a104-4a3f1f5b79a0'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Clean and version dataset',
  'Tracked work item for Dexterous packing under uncertainty — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bd84e453-040e-5c8f-ae0e-ae49e7cb934a'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '816fab60-4402-55f0-975b-a557ac1ed023'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e6e84df7-ee97-52a3-85bc-60314d778afd'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c18df505-d300-5f5f-8848-a85f12584934'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e6a70c27-6bca-5beb-82a1-92027ecbd3e7'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid,
  '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b1234fa0-4c05-559b-8c61-de08348a1142'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid,
  '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid,
  true,
  'ops',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 5',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Seattle, WA',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0744abe3-ea52-528b-9c2e-c77cbdda78e7'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'owner',
  'active',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6e59fcaa-2edd-5169-bcc0-2b5fb0238a9a'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid,
  'editor',
  'active',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b0f8ff49-b111-555c-9432-1843ae6076e7'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid,
  'viewer',
  'active',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '43a5e021-4fa1-522f-9205-bc31d698e759'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid,
  'viewer',
  'active',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '92c16509-679c-5de3-a66e-fa361223ec06'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid,
  'viewer',
  'active',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '23d9fe71-057d-54a7-87af-29fc194eeb6d'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '318f76ba-8489-5860-abc2-3c4985fea7f1'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '68061280-fd80-50e2-9cf6-545744297102'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Submit internal review',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a736534d-1cdd-521b-80ad-a2f9ed61cdb2'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Update project README',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2b7ba711-10d8-5687-a1e4-3f392ec4ec60'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Draft related work section',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0df7026e-1456-555d-a5e0-fcbdd3871a1e'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Clean and version dataset',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b85151ab-5398-5668-bbf7-2a9dc3eb96cf'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '75fae870-a634-5e49-9d4d-56e54ab1a2f4'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '855b3d44-9980-505b-96bf-f432091ea627'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1321e05b-c296-5bbb-9bea-187fd8a5bd07'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid,
  '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '86caf6e0-36fd-53cf-b65f-fda8a2277f59'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid,
  'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '813e7db2-b13f-5b6d-ad0b-47cf329765ff'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid,
  'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid,
  true,
  'ops',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Vascularized cardiac organoids — cohort 5',
  'Vascularized cardiac organoids is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'local',
  'short_term',
  12,
  true,
  'Pittsburgh, PA',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '73b85e5b-f402-52e0-ba8c-bb91ef30c524'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  'owner',
  'active',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '59ece076-9122-546f-8b5b-9f0e0f61b962'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid,
  'editor',
  'active',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '18f6eeb5-8e3e-5856-8bf6-734041fd8227'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid,
  'viewer',
  'active',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '21cba1c7-bce5-5860-bbf4-333171f2d3f4'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
  'viewer',
  'active',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e9676d39-91a2-5c65-9c09-ef612202ea07'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid,
  'viewer',
  'active',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '67aa8cff-3b76-5b7e-a3ab-b03fb6d89fb5'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid,
  'viewer',
  'active',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ad837daa-f123-5aac-bee8-1864738d7f56'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Vascularized cardiac organoids — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0fed4d9b-db61-5157-90cd-4c9a333ad8a9'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Vascularized cardiac organoids — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '41986b85-24f0-5c70-bc65-8ff4cbaad641'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Submit internal review',
  'Tracked work item for Vascularized cardiac organoids — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '70fae980-fc51-52cf-a1e0-82a702f9375d'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Update project README',
  'Tracked work item for Vascularized cardiac organoids — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6a3824fc-1951-58cd-a444-2cc8ddcaa646'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Draft related work section',
  'Tracked work item for Vascularized cardiac organoids — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3fc5a0c7-1d06-5395-b087-ec3fe9790b9c'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Clean and version dataset',
  'Tracked work item for Vascularized cardiac organoids — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bf62559d-1f2a-5a8c-8e14-2c2b87e36499'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '601c069a-367e-5320-a284-9d6c6342e83e'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '605805b3-e9e9-5815-88cd-4a445a4f9715'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f18ef108-50e4-5b4e-9cfd-c819c08d41ad'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid,
  'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4d60fa2e-5d27-52ca-98cf-2d41b8d27825'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid,
  'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '95e26e78-eb64-556b-84b3-2d69727120ce'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
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
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Labor market effects of credentialing — cohort 5',
  'Labor market effects of credentialing is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'Atlanta, GA',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b887eadc-8796-5551-9b59-7923238f2c4e'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'owner',
  'active',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '915956dc-7a73-5807-907d-b6289eaa9495'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid,
  'editor',
  'active',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'acf59932-076f-59b5-b416-7c72ed8fe6f1'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid,
  'viewer',
  'active',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bf5edef4-6190-555d-bc46-b1a9e21cc82a'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid,
  'viewer',
  'active',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2a9d2877-b749-5c5c-a1e6-e3f0570b9769'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid,
  'viewer',
  'active',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1c05968e-b315-57a3-8e23-7552542a0953'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid,
  'viewer',
  'active',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '80a39e70-a94b-50be-838f-d8a5743a0332'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'db69352b-36e0-5136-a601-8cd783f826e7'::uuid,
  'viewer',
  'active',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f59a6267-851e-596a-9f0f-dd5c916c0962'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Labor market effects of credentialing — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '397ada40-328f-576e-be87-d83d775c628b'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Labor market effects of credentialing — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bdc201d2-7aa6-5436-bf70-726fbb0a2e34'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Submit internal review',
  'Tracked work item for Labor market effects of credentialing — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '55e6b589-b0b5-51f8-bc6b-e37caf006241'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Update project README',
  'Tracked work item for Labor market effects of credentialing — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a59dda6c-c1dd-5dc9-a456-101630ae47d3'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Draft related work section',
  'Tracked work item for Labor market effects of credentialing — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '30230e63-763e-5170-bcac-c17c5d51d367'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Clean and version dataset',
  'Tracked work item for Labor market effects of credentialing — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '44bb977c-d8ac-5e6c-9910-9e02829b2af0'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'db69352b-36e0-5136-a601-8cd783f826e7'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9fe314ab-5185-5ab1-bb4e-e29c76fd0c62'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c05426a9-1b91-5498-ac46-7faf2d92885d'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ee01f437-1bd7-53d4-acc9-791cf2237e2b'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid,
  '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ffb6443a-38dc-59e5-9882-7b69e71b09eb'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid,
  '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '67ea60fb-b00d-5320-ac9d-3801a8900028'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid,
  '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid,
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
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Low-cost water contaminant sensing — cohort 5',
  'Low-cost water contaminant sensing is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Ann Arbor, MI',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '56f267a2-8267-5204-a6fa-148e16b9d02d'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  'owner',
  'active',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e87cbf6c-4cac-5c5c-b0bc-e787d0ceb9a4'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid,
  'editor',
  'active',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4e80999e-0786-50a9-8509-7ab96e5c3455'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid,
  'viewer',
  'active',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ab072b0b-1594-5a1c-b9f6-cde535425fd4'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid,
  'viewer',
  'active',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '69bc551e-8332-5d71-8142-7fd73878464b'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid,
  'viewer',
  'active',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd915b7bf-d95e-592e-b51a-f96f1a3b8f73'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid,
  'viewer',
  'active',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9a1b3b0e-142b-5580-8dde-6721d7114072'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid,
  'viewer',
  'active',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd3e95b88-b506-5912-8c71-3dc909738b91'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid,
  'viewer',
  'active',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4c895964-52dd-5c24-95e9-3437e5090173'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Low-cost water contaminant sensing — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'aafab062-c8fc-55ec-b48d-4f47806196b3'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Low-cost water contaminant sensing — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e16b62c3-a449-5ff8-941c-3a6c82e9892c'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Submit internal review',
  'Tracked work item for Low-cost water contaminant sensing — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd34a9602-3233-5f71-9408-eb7ad12a2242'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Update project README',
  'Tracked work item for Low-cost water contaminant sensing — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '396ce0df-f109-5f5d-93e9-3b2c090c3f7a'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Draft related work section',
  'Tracked work item for Low-cost water contaminant sensing — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9dc963ec-96e7-572c-aacd-70dca62fab1a'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Clean and version dataset',
  'Tracked work item for Low-cost water contaminant sensing — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f0540264-1828-51a2-987b-60c82db907fa'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'db2b5657-4abd-57b4-8d6b-c7eeaa35dec0'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2cc406bf-1230-56f6-a331-17045243dfd4'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '002a9535-22e4-54a4-9fd0-f4bc45dd8c21'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid,
  'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'de4b5cf2-25a3-5086-b294-30bd23d09486'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid,
  '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9c105c6c-a0c6-541e-a8a1-2788eeaa93e3'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid,
  '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid,
  true,
  'ops',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Federated learning for rare disease cohorts — cohort 5',
  'Federated learning for rare disease cohorts is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around privacy, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  ARRAY['privacy','ML']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'local',
  'long_term',
  15,
  true,
  'Los Angeles, CA',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '87175191-d70a-5f7a-808e-84f1f362432b'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'owner',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '27144460-bfe8-5195-a23c-7b62083225cb'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  'editor',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e7628692-0a03-53a3-abb2-d0eb834cad67'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid,
  'viewer',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f53ff8d3-488a-56ba-b814-4c091e60f090'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid,
  'viewer',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f1c7be14-8434-59fc-a703-8d4a6093a016'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'd5b0211b-c5f4-597f-acb9-7622a4effdc1'::uuid,
  'viewer',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5c2aca67-19ed-5858-8e70-4524ff700396'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  '1a61d961-51b5-5a7b-a66f-f3270ebcf8b4'::uuid,
  'viewer',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '71ce82b2-21de-5ea4-b51d-db5f7da68065'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  '4affe376-3337-5316-8b8e-7c109b527c78'::uuid,
  'viewer',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5fe7c59c-f84a-528d-81b8-bd0a79551aba'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid,
  'viewer',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1435a451-293c-5564-969e-98fe865209b5'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  'viewer',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '869a82b5-9bff-5e86-b18c-3785794bd2fa'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '88c62509-46b2-5a92-9c68-610cbfbdf35c'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '190553fe-6e45-515f-8066-a4284a658e9c'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Submit internal review',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2da04a3f-3022-5315-9378-88037e90f19b'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Update project README',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e03255d2-57f9-5f2e-900b-6e94e71283c4'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Draft related work section',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd5b0211b-c5f4-597f-acb9-7622a4effdc1'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fc8623e8-e33b-513f-905c-fe5da07063d7'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Clean and version dataset',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '1a61d961-51b5-5a7b-a66f-f3270ebcf8b4'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ea609bcd-dcee-592e-aa44-cfb3fdcb58dc'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '4affe376-3337-5316-8b8e-7c109b527c78'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c5dfcacd-70e9-56a9-97b9-f3f010e09e0e'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '357f854d-8fff-5ab9-8e90-1d5918c4f904'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  true,
  'planning',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'bce7971a-7a2f-53a7-9263-759c57a96472'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  true,
  'analysis',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f419469c-36e7-5342-9ee3-a566c80caf59'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid,
  'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid,
  true,
  'writing',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '45305f89-2c85-5f77-867b-1b93ce1f9325'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid,
  'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid,
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
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Wildfire smoke exposure forecasting — cohort 5',
  'Wildfire smoke exposure forecasting is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around air quality, forecasting. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  ARRAY['air quality','forecasting']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'remote',
  'short_term',
  4,
  true,
  'New York, NY',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3fa06111-6a2a-5639-a3f5-df8b6044e012'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'owner',
  'active',
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a4ce816f-2ac0-53a2-a181-e65f83cc6e39'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid,
  'editor',
  'active',
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '156b7047-3d42-5e1b-ae21-727d80890973'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  'viewer',
  'active',
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a87e8919-595c-599e-ba41-657f33b439f3'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
  'viewer',
  'active',
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '39b94789-a643-5511-9133-00c524fdfd9d'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8346d074-6b8a-5159-8de6-bfa120b36650'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a6aa86ef-1f03-5280-9299-b9d0bae7e08c'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Submit internal review',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e55ea813-d984-5477-992a-82a49c948328'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Update project README',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a42b4c7b-73bc-58b7-a784-24bc9d71cd5d'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Draft related work section',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fb9bb51b-cea5-5353-b026-62c1871ddce9'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Clean and version dataset',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5ce89ed7-b69d-567c-8cf6-56ba6b328691'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '73e0674f-3c39-50bf-8cb0-cfdbfe282c8d'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '81783b12-c964-549c-ade2-c929cd83736f'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  true,
  'planning',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1376aec5-f3de-5ffe-aae5-f23c759f0f11'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid,
  'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid,
  true,
  'analysis',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f10df904-1cb6-5c6f-a283-cc4ede8f368d'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  true,
  'writing',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '49623579-4cb9-5d5b-94a9-affb3724580b'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
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
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Solid-state battery interface imaging — cohort 5',
  'Solid-state battery interface imaging is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around interfaces, microscopy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  ARRAY['interfaces','microscopy']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Chicago, IL',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b61453a2-af28-59f5-b72a-6f4b630985fa'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  'owner',
  'active',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b79f98c0-15e4-5e9d-9169-b6e9d3afa973'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid,
  'editor',
  'active',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '484a2c0f-5948-58ee-9369-1f84818260df'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  '73d21f69-f082-53ec-a793-9805a6962209'::uuid,
  'viewer',
  'active',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6bd6524f-5d45-5cab-98cb-178808bd8923'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  'viewer',
  'active',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e8d2ef00-9e11-5e22-b116-9ce9facf3f7f'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid,
  'viewer',
  'active',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6df2d02b-8501-5a5c-a887-2369bef08756'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Solid-state battery interface imaging — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2a4530c7-660a-5e32-aa75-19d703d2694e'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Solid-state battery interface imaging — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '71646b9c-1ab0-58e6-b09c-86a3bd5e9981'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Submit internal review',
  'Tracked work item for Solid-state battery interface imaging — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '73d21f69-f082-53ec-a793-9805a6962209'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e50bbcfe-f186-5f06-a80b-c86c7de2fca9'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Update project README',
  'Tracked work item for Solid-state battery interface imaging — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0b5af83e-cefe-5a5c-8fcc-e380902fb14f'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Draft related work section',
  'Tracked work item for Solid-state battery interface imaging — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b243b5ff-6e03-548f-846a-1d6d53d4aa6e'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Clean and version dataset',
  'Tracked work item for Solid-state battery interface imaging — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '70ab1ffc-110f-503e-a6cf-b770c14852df'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Solid-state battery interface imaging — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '00529b04-462c-541d-9412-eb69739d7c83'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Solid-state battery interface imaging — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '73d21f69-f082-53ec-a793-9805a6962209'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '687b48b9-540e-52d9-ae16-60b659ce3c90'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  true,
  'planning',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c79e3d2c-507e-54eb-8fc1-3b1a346ea378'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid,
  'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid,
  true,
  'analysis',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cec85161-9911-5546-8635-6369f87fe409'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '73d21f69-f082-53ec-a793-9805a6962209'::uuid,
  '73d21f69-f082-53ec-a793-9805a6962209'::uuid,
  true,
  'writing',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3c4519f3-713d-57df-af98-5e3e66a7810a'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  true,
  'ops',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Classroom AI tutor field study — cohort 5',
  'Classroom AI tutor field study is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around edtech, RCT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  ARRAY['edtech','RCT']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'local',
  'long_term',
  6,
  true,
  'Baltimore, MD',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e998d86e-198d-5eba-8aca-50234b7f170d'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  'owner',
  'active',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a84b8aa4-adc5-5f73-8818-3cb6af3320d7'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid,
  'editor',
  'active',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9b463a3f-dd0f-55ba-99cf-3727011554ea'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid,
  'viewer',
  'active',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8dc15f9a-1253-5ad9-9ba9-c17ffc6070cc'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  '666efcc9-c467-5b54-b887-659ecb744286'::uuid,
  'viewer',
  'active',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b911c098-66a2-5d9b-929f-2764aba70824'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid,
  'viewer',
  'active',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ad8cd1bc-89a6-51f2-ba22-2e765fdb6bcf'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid,
  'viewer',
  'active',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4545aaa5-c721-53f9-84b5-001d3b8fd26b'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Classroom AI tutor field study — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7dd1e89a-ff2c-51e4-8895-e3844c5e85cf'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Classroom AI tutor field study — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '949143ad-6c90-5b1b-bc2a-a7cbe8f86023'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Submit internal review',
  'Tracked work item for Classroom AI tutor field study — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9ba34e23-3d41-579c-9f49-30876f196a51'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Update project README',
  'Tracked work item for Classroom AI tutor field study — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '666efcc9-c467-5b54-b887-659ecb744286'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dc95be1e-9115-5d09-8871-696e24cac9b7'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Draft related work section',
  'Tracked work item for Classroom AI tutor field study — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a5a4f237-d408-5bb8-9d00-c4cb9e4f0fe6'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Clean and version dataset',
  'Tracked work item for Classroom AI tutor field study — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '89c01419-2371-5251-95b8-e8b2597e665b'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Classroom AI tutor field study — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '341b14fa-d887-5168-8dcc-351499adeb0a'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Classroom AI tutor field study — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '578d4ad7-72f9-56b2-856c-aa088f9705c7'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  true,
  'planning',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '333c9701-e3c7-5c69-acd3-ac3f1362b728'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid,
  '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid,
  true,
  'analysis',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '96f745ef-0505-5082-87dd-faca21bb0bbb'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid,
  'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid,
  true,
  'writing',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd5172224-5e8a-53ce-8de2-b18be2fcfc28'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '666efcc9-c467-5b54-b887-659ecb744286'::uuid,
  '666efcc9-c467-5b54-b887-659ecb744286'::uuid,
  true,
  'ops',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Privacy-preserving wearable analytics — cohort 5',
  'Privacy-preserving wearable analytics is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around wearables, privacy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  ARRAY['wearables','privacy']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'remote',
  'long_term',
  7,
  true,
  'New Haven, CT',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8772f17e-5211-525f-b0ea-df4839e82b4f'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  'owner',
  'active',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6d57792d-c576-5c00-be71-e0f363fbc344'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid,
  'editor',
  'active',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '84870b10-67da-5f6c-a5f1-15a4d89ae84a'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid,
  'viewer',
  'active',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dd0031ed-060e-5574-a30c-6e472e1a7d59'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid,
  'viewer',
  'active',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f00ed4f6-3ee3-5ffd-9ade-15ff88c06555'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  '07e78528-7a32-5945-9289-b917095c02bc'::uuid,
  'viewer',
  'active',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7b5caaad-7e0d-5695-9c15-58059a90872a'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid,
  'viewer',
  'active',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9329d406-aaee-54f1-aba1-4002218a49d2'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid,
  'viewer',
  'active',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f51366e6-0431-592a-a1b7-e884a2288fb2'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9f2ac44d-f0b7-57dc-901b-7fd2d5098053'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '055df8a5-c691-59f2-af69-a7f63c096e8d'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Submit internal review',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4d519835-969f-5087-b7ec-37222d5c56bb'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Update project README',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6e8011aa-d5ce-5d4a-b187-7fb93b98a6ae'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Draft related work section',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '07e78528-7a32-5945-9289-b917095c02bc'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'aa047d9b-575b-5027-991c-51c98e98223a'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Clean and version dataset',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6a2bf678-397f-5007-bd0c-c335284cbc6d'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '01a498ca-73e3-551f-a8ea-d3d70dab7f59'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3243dccc-beb1-5e83-8230-417c0d91d327'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  true,
  'planning',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9918c0c8-2189-51ce-a572-1721d619ad7a'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid,
  'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid,
  true,
  'analysis',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '11786ffc-a1e6-53aa-b418-d8a2e8f567db'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid,
  'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid,
  true,
  'writing',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c6a360e4-5b02-5137-9cd0-ab0a32813434'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid,
  'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid,
  true,
  'ops',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;
