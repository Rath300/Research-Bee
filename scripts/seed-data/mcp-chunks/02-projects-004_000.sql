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