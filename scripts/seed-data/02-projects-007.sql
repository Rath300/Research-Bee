-- projects 140..159

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'Single-cell atlas of treatment response — cohort 8',
  'Single-cell atlas of treatment response is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around genomics, RNA-seq, oncology. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  ARRAY['genomics','RNA-seq','oncology']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'local',
  'short_term',
  12,
  true,
  'Baltimore, MD',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f4e52278-7e6e-58d5-b724-24c3a19616d7'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  'owner',
  'active',
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '83906d19-6767-5a71-9646-5b3d3908090d'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid,
  'editor',
  'active',
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '04687e8f-f528-52f7-8043-5a12e83e7335'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid,
  'viewer',
  'active',
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7cede382-908c-5234-bda4-a72344ece2a9'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'viewer',
  'active',
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '025e62e2-a7f7-5589-95e2-dce1cdb7e3bc'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  'viewer',
  'active',
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2c7176fc-695d-527b-abe2-5c3747bf5f02'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  'viewer',
  'active',
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6d0dfd25-a8ec-5ad6-976c-274f6f7f4f4e'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Single-cell atlas of treatment response — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f25d3dd8-331f-5809-8035-b96b22b789f0'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Single-cell atlas of treatment response — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd5d19936-7868-52ee-aa96-328ee583dd82'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'Submit internal review',
  'Tracked work item for Single-cell atlas of treatment response — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '579555c1-9b81-5a9b-88c5-35d931e3f723'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'Update project README',
  'Tracked work item for Single-cell atlas of treatment response — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dccf658b-03b5-540c-9e1b-878076ec5531'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'Draft related work section',
  'Tracked work item for Single-cell atlas of treatment response — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f29fd7f7-8519-5796-b8f2-7eba9a82ccc1'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'Clean and version dataset',
  'Tracked work item for Single-cell atlas of treatment response — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '971ddac8-178e-5b9a-8387-49a1de7f8c90'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3bcf9ef6-db1f-5105-b774-3c68250ecdbb'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6890f3c3-88b4-5071-aec8-946bfdf1fa04'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  true,
  'planning',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8e8ccb89-d2a9-5d59-bb85-c4eed4922e92'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid,
  '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid,
  true,
  'analysis',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '41142187-8f95-59ae-a550-5fcc92e50558'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid,
  'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid,
  true,
  'writing',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0b99e428-0080-5c4d-ba10-b17edc010f30'::uuid,
  '32b35b68-0e63-5d98-a14b-bd3fb553e224'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
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
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  'Urban heat mitigation with satellite ML — cohort 8',
  'Urban heat mitigation with satellite ML is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around remote sensing, cities, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  ARRAY['remote sensing','cities','ML']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'New Haven, CT',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1456bec6-3196-54fd-b785-87c824c200a7'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  'owner',
  'active',
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'de3bb3ea-e56f-5f43-9dfc-bd9d710bdc8a'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid,
  'editor',
  'active',
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6ab8d436-8c2c-57e6-86db-9b91efa36cd7'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  'viewer',
  'active',
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6a33fa80-e4b7-5c7a-a1f1-24be9918fdae'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'viewer',
  'active',
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'efd34eb5-e225-54c7-a8e2-de1f3a268bda'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  'viewer',
  'active',
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ecf48eea-10cb-5a93-b418-6e9671683859'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  'viewer',
  'active',
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'be9571a7-72aa-5371-b5ff-74e43f82d427'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  'viewer',
  'active',
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e8306550-74c9-52ac-a1be-008e1f96d5f1'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fc77e79d-b472-5421-a210-ba1f7caa7c74'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '22304542-e76e-552d-b5a4-0b066ba7fe66'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  'Submit internal review',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8f3af00d-de08-51c2-a1c7-ed427547049e'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  'Update project README',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '264468d3-463f-5c2f-a6b3-9f87a1fcf742'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  'Draft related work section',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bb72524e-0363-556f-bdc3-c2f5b47b2ee0'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  'Clean and version dataset',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dfe1f541-39f8-5a8e-ae8b-641fd5de1750'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f4539e0d-769a-55a9-8c0d-489302bd0978'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b452bca7-bce6-5476-9e02-ce3202653c2c'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  true,
  'planning',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a2e57693-bd04-52a8-8b9a-0ed3403c4916'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid,
  'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid,
  true,
  'analysis',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '07532bf6-86a8-571e-9ea5-c7f3ab35bf4e'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  true,
  'writing',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '71fd0455-6aa7-565b-a523-894c51f9329c'::uuid,
  '153d56af-f3d1-5a23-97a2-bd23cf51b9a8'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
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
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  'High-throughput electrolyte screening — cohort 8',
  'High-throughput electrolyte screening is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around batteries, automation, DFT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  ARRAY['batteries','automation','DFT']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Princeton, NJ',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2cb4d94f-0c63-5126-a49d-88236b3b71f0'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  'owner',
  'active',
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fbe9cb3a-c39b-5109-b5ae-12475cf6d8e6'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  '7eebc6fb-2d56-59bb-8d03-96c3482f42bc'::uuid,
  'editor',
  'active',
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8da794ec-2135-590c-9f55-e6b6a010165e'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  'viewer',
  'active',
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fb4ac798-e8a0-5e54-a155-fed95cde227b'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  'viewer',
  'active',
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fbccd643-343b-56f7-a86a-6227b6fe9aa5'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  'viewer',
  'active',
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1efe8316-d555-534c-bd25-b9769a6629bc'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  'viewer',
  'active',
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '84ed7844-45c9-50be-96e1-6eb369c3961c'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  'viewer',
  'active',
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4e00b51d-01ac-513e-97b1-ca6cb6dc753d'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'viewer',
  'active',
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3e975629-2fa8-55f1-b5e0-e2cac00f9c0c'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  'Validate QC pipeline',
  'Tracked work item for High-throughput electrolyte screening — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8f86f039-b833-5115-96d1-22a8bb461f7b'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  'Collect pilot feedback',
  'Tracked work item for High-throughput electrolyte screening — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '7eebc6fb-2d56-59bb-8d03-96c3482f42bc'::uuid,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '04f271a2-9856-500d-9f6f-ca0f32ab6289'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  'Submit internal review',
  'Tracked work item for High-throughput electrolyte screening — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '13a66851-c36b-57d7-a911-cbf642eb8acb'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  'Update project README',
  'Tracked work item for High-throughput electrolyte screening — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6abd11b1-82bd-531f-a446-317770d27574'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  'Draft related work section',
  'Tracked work item for High-throughput electrolyte screening — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ff1a5d29-deb3-5664-a8d8-66e9911930bb'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  'Clean and version dataset',
  'Tracked work item for High-throughput electrolyte screening — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5a604692-20e4-5925-a582-8661e949556f'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  'Run baseline model (2)',
  'Tracked work item for High-throughput electrolyte screening — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dc063502-a020-5c11-a2d3-7bcfa0ae9d06'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for High-throughput electrolyte screening — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fe2668a1-3b12-585e-8db6-f8be7fab14ff'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  true,
  'planning',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6df8d9e3-6f0a-5371-b3ad-aec803719794'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '7eebc6fb-2d56-59bb-8d03-96c3482f42bc'::uuid,
  '7eebc6fb-2d56-59bb-8d03-96c3482f42bc'::uuid,
  true,
  'analysis',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5e9ddf74-3fb7-5595-84d3-4e12674a8f16'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  true,
  'writing',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '655e4ee2-c2e7-5c70-b819-90fcd50b9c88'::uuid,
  'ea8c5752-27d6-5568-927c-57bcc5011967'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
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
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  'Accessible clinical note summarization — cohort 8',
  'Accessible clinical note summarization is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around NLP, healthcare, UX. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  ARRAY['NLP','healthcare','UX']::text[],
  'active',
  'Human-Computer Interaction',
  ARRAY['User research','Prototyping','Statistics']::text[],
  'local',
  'long_term',
  15,
  true,
  'Pasadena, CA',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6344e553-dc7a-5325-89e1-c28fdfb570c4'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  'owner',
  'active',
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '67bddbca-93ec-5c0d-ab06-acfbfc50da9c'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  'editor',
  'active',
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9a2ed882-8edb-502f-a115-65f2abc41bd9'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  'viewer',
  'active',
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3e15cf35-76bc-5bb0-816f-a4633217578f'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  'viewer',
  'active',
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5c7792bf-e8ba-57cd-8de8-986ca3538d2f'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  'viewer',
  'active',
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9003712e-496c-5ab3-ad49-c015d9ac6345'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  'viewer',
  'active',
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a2d2a54d-ec11-5592-a6b2-8931b19d5ddb'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  'viewer',
  'active',
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e0d47a19-9a71-57b1-9194-0c1f70a0d491'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  'viewer',
  'active',
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1c6502bf-6cf2-51c2-a345-d7ef26083ff5'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  'viewer',
  'active',
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '91b5e100-e2e7-5c0f-b432-52d83976503f'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Accessible clinical note summarization — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '410037e6-5f5a-5dc4-a5eb-43eb6952f50b'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Accessible clinical note summarization — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '03351927-2f8f-5690-ac69-de926b9b0822'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  'Submit internal review',
  'Tracked work item for Accessible clinical note summarization — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cecfcbdf-1acc-528c-b11e-67ca720f5d17'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  'Update project README',
  'Tracked work item for Accessible clinical note summarization — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3e74a4d8-65cb-52fc-9fca-c4c8bced3043'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  'Draft related work section',
  'Tracked work item for Accessible clinical note summarization — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bc66d285-33ff-590c-b9cb-8f54d100d5e1'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  'Clean and version dataset',
  'Tracked work item for Accessible clinical note summarization — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '177e135c-2e0f-5d24-87c4-6a7adf8d66bd'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Accessible clinical note summarization — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0857d897-df93-5879-b885-203fa2af85d5'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Accessible clinical note summarization — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fd040c46-2817-5a3b-b54a-7e313550df7b'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  true,
  'planning',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '956e2dab-ca72-5e7a-bcd2-69ab0e6039de'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  true,
  'analysis',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'be1bdca8-d242-5917-b1c8-91ea0d4ea0ac'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  true,
  'writing',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd9987a43-c9ee-5923-b94b-5658408e6ddb'::uuid,
  '7399b783-001c-522a-8066-f0051456d675'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
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
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  'Closed-loop stimulation for memory — cohort 8',
  'Closed-loop stimulation for memory is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around neurotech, memory, EEG. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  ARRAY['neurotech','memory','EEG']::text[],
  'active',
  'Neuroscience',
  ARRAY['fMRI','Electrophysiology','Python']::text[],
  'remote',
  'short_term',
  4,
  true,
  'Oxford, UK',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9edfa357-86df-5525-ac47-1e5909851e69'::uuid,
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  'owner',
  'active',
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f7f22a55-4868-5313-b9fb-f5e6cfaeb52d'::uuid,
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  'editor',
  'active',
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '83cb223b-a42f-533c-8be8-7baf31b9c8f3'::uuid,
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  'viewer',
  'active',
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7a31ed73-67f1-59c4-9f13-1c15acfa6172'::uuid,
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  'viewer',
  'active',
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '38d7c7c7-7958-527c-8dee-ec36f8065aab'::uuid,
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Closed-loop stimulation for memory — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a09d52f6-2ba2-50da-ba37-648d0d92fd59'::uuid,
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Closed-loop stimulation for memory — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '639297ab-f6e4-5368-a0b6-adefd2dbf06e'::uuid,
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  'Submit internal review',
  'Tracked work item for Closed-loop stimulation for memory — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '79116a39-9698-5983-9b86-aee1d15038fc'::uuid,
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  'Update project README',
  'Tracked work item for Closed-loop stimulation for memory — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '50d2fa05-2a09-5712-bd9e-7bd226d41f59'::uuid,
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  'Draft related work section',
  'Tracked work item for Closed-loop stimulation for memory — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '98c4855d-89b0-54d9-bd8c-3d59be740829'::uuid,
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  'Clean and version dataset',
  'Tracked work item for Closed-loop stimulation for memory — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8d2ea28b-1500-5ce9-8689-f791b6996a47'::uuid,
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '27a6bb05-8b62-59d8-bae9-ff377feeb53a'::uuid,
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b09817c8-0b39-5a33-baa5-5bd64f337fbf'::uuid,
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  true,
  'planning',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e5b4b7db-77be-5230-b776-2f1c9fd138fc'::uuid,
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  true,
  'analysis',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '094e9139-3849-54e1-8e9d-33533814511b'::uuid,
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  true,
  'writing',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd8ad2b1d-7534-5bd4-82a3-2b577a9a882e'::uuid,
  'e118651e-fb5c-5f53-9f05-00fd164a73bf'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
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
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  'Community vaccine confidence study — cohort 8',
  'Community vaccine confidence study is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around surveys, equity, vaccines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  ARRAY['surveys','equity','vaccines']::text[],
  'planning',
  'Public Health',
  ARRAY['Epidemiology','R','Survey design']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Singapore',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '695c689a-2118-5645-8021-bb757eddf127'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'owner',
  'active',
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '80d77cdd-030f-5f30-bf49-14ecc99ba63c'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  'editor',
  'active',
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '22fcc838-179b-5df4-9e40-205ac489911a'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  'viewer',
  'active',
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fe6259ff-a324-5eb3-adad-9dd0a889c1d0'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  'viewer',
  'active',
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '554cca98-d09d-56ca-9567-c87531daf354'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  'viewer',
  'active',
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8b90f2e8-90cc-5751-a1cc-00d44d7fdd44'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Community vaccine confidence study — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2ee7358c-eec8-5f1f-8483-31e9224f4eac'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Community vaccine confidence study — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dcf790d7-bd4c-5d04-a74a-ffcdad9e5c14'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  'Submit internal review',
  'Tracked work item for Community vaccine confidence study — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '519aae0b-8755-5865-ab22-4c2cb3152c78'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  'Update project README',
  'Tracked work item for Community vaccine confidence study — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3f1f6cff-e2a5-52f5-993b-938a363de712'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  'Draft related work section',
  'Tracked work item for Community vaccine confidence study — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c51919a4-66f1-58fd-8094-5ca3924dc5ed'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  'Clean and version dataset',
  'Tracked work item for Community vaccine confidence study — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ad58d106-ae01-544d-9dff-680256923f8b'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Community vaccine confidence study — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c243af60-aee9-5a5f-a706-083d39955c1d'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Community vaccine confidence study — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '572bcfa5-abf0-5656-86aa-d7c226cc0bde'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  true,
  'planning',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c262cfa6-aa6c-5adf-97cf-61b47db35e54'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  true,
  'analysis',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'afd70c46-0ac8-5cc5-9ba3-f486b6497e34'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  true,
  'writing',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '772d50f0-782f-5963-b897-7af923ff40e3'::uuid,
  '3576779e-b114-54a2-a1b0-459cecca304b'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
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
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Near-term quantum error mitigation — cohort 8',
  'Near-term quantum error mitigation is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'local',
  'long_term',
  6,
  true,
  'Melbourne, AU',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '68f71801-8c81-51d2-a0f6-9bfe7b3ba304'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'owner',
  'active',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '83d6d4e5-dfbb-5791-89cc-a4fd3243260c'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'editor',
  'active',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c75fbd77-bc9d-5973-a2a9-86e58c94e5bb'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'viewer',
  'active',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4c67aa13-2741-5748-b3b2-481e58616a23'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'viewer',
  'active',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '46b3691c-c534-5522-a2e5-20429f17dfea'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  'viewer',
  'active',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1e6e4cd5-3283-5f77-9211-f3571b5593fe'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  'viewer',
  'active',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '91e412e0-5e4e-524e-9d34-2ff08145aa98'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Near-term quantum error mitigation — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b980f271-73dd-5a37-a6a9-308c108e950e'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Near-term quantum error mitigation — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '20bcee41-c82a-58a5-8e50-67ef852e33c6'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Submit internal review',
  'Tracked work item for Near-term quantum error mitigation — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'feebb0e5-7855-5305-a628-cda4a95e50ff'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Update project README',
  'Tracked work item for Near-term quantum error mitigation — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'be5541bf-9ff2-525f-b5f4-8096eae25940'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Draft related work section',
  'Tracked work item for Near-term quantum error mitigation — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ac408c8a-2b95-5ba3-ae3b-837851ec1d40'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Clean and version dataset',
  'Tracked work item for Near-term quantum error mitigation — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '67efd23f-6990-5820-9afe-8140418d45d1'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b82c3139-8edb-5ba8-a912-8fc66c090561'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '427ae168-d938-5cf7-b685-89f8d108f631'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1b29131a-97b9-5599-840d-d0522e986782'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6eb8bca1-7a7c-5846-9333-026f4f71fad3'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4e6c9bed-f834-5dc3-a91c-48e077838663'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
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
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Robust evaluation for clinical LLMs — cohort 8',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Cambridge, MA',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7feeb704-f6fe-50d7-8713-09a5e4f490e4'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  'owner',
  'active',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e2cafcc2-546c-5b2c-a731-1657d36ec030'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  'editor',
  'active',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f4ba010b-a3b6-5a16-94cd-1db3bd012168'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'viewer',
  'active',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2bbb05eb-e33a-5d9b-b76c-3471f5c0daf7'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  'viewer',
  'active',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a1a03b92-5478-5d8d-bbda-7cc8f69d475b'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'viewer',
  'active',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2570d65b-d862-516d-9d39-088b65208ebb'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  'viewer',
  'active',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0e619c95-4003-5024-9262-fef26b61a2cd'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  'viewer',
  'active',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eb557ad8-52f1-5015-a0d9-607d0cd34aa2'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b66f6c66-bbf6-570e-a806-4e2b94dba432'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e3becc52-f9f0-513a-a07a-3755bcad0eea'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Submit internal review',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '61734406-4658-5267-b760-b5b3e84e395c'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Update project README',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f173bb95-8fe9-5cbf-a500-d4f3f12966ab'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Draft related work section',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7344e38c-957e-5077-ab0d-4cd9cb361085'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Clean and version dataset',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e23f6dd5-66c0-5108-8660-e7674f06cdd6'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4482af2d-07ac-5a7c-b0e8-e2064ae282bd'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fc6ef076-f198-5a24-a9fc-f9d9bd6a45db'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '31642693-3bb4-556d-addf-82ef25e9efeb'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7713501e-e53e-5832-bfe8-7a44a085ebda'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'dc1b4577-d56d-5078-ae42-b2dc7c8841c3'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
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
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 8',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Palo Alto, CA',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '932f760c-0917-549b-9faf-6cacd667b3cf'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  'owner',
  'active',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6676a67c-e836-5203-a881-693fce4453cc'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'editor',
  'active',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7631d12f-0469-5976-8eb4-a95b1bd0eec5'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  'viewer',
  'active',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '12638920-95ca-567e-b365-7e2ca917dee5'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  'viewer',
  'active',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '099f5a28-e47f-5ca7-bff5-7e1e59b22373'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'viewer',
  'active',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8cc6adf3-e75f-59b3-991e-0ac3f59c3393'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  'viewer',
  'active',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cea6c761-8437-5305-9a58-9a24b8d99e7c'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  'viewer',
  'active',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3439c83e-21a1-5c2d-aefc-a841f6d2aed4'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  'viewer',
  'active',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '632df5e6-caa7-549c-b6c1-ed42a7a8caee'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1fb3062d-0108-5b54-a691-ba7cce3b18f8'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0e3503a3-4671-5362-983b-7fb63d70cadb'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Submit internal review',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bedac39d-eddd-5306-957d-02454471eb61'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Update project README',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9b2a0e2f-63e9-57bb-922b-c5cf98133d3a'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Draft related work section',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '641a697a-f1bf-5729-b830-c1994f1c553f'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Clean and version dataset',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '47adf49c-c6cc-5dd3-8137-4b981cf32ae1'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8e4a7ba8-b8ff-539d-a2cd-d4a0d7d40562'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7559e24e-56d1-5d5a-ae81-256aa4eff90a'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '17b56208-c15b-5557-bce2-cb01e056fe9f'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a6f92683-2d8a-5f1f-8fd2-1b95fab31a65'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9031efce-25a5-55ab-a76f-5009116b977b'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
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
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'STEM identity in first-gen undergraduates — cohort 8',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Berkeley, CA',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '099118bb-fdc0-5d7e-a14d-07166efdb240'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  'owner',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'df7ed269-65f2-5017-8dbf-f6360e79f400'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  'editor',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9d1bd01d-f046-5cc8-a467-979f7c08f657'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  'viewer',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd53904a6-3e7b-57d1-a407-bf248951e3f1'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'viewer',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '86c1d9ec-5ce2-5978-8ca2-95cb9b4788a1'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  'viewer',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6b40f2d6-7fe1-5ab0-8acb-4199a5737ac3'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'viewer',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '834fb3b8-d6f2-521a-a253-f8aff647775f'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  'viewer',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bdf17a87-0f9d-5bfa-bf57-70b5f261b656'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  'viewer',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8841040e-0179-592b-8de3-77a2888595c3'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  'viewer',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6d4183a9-5064-59fb-bbeb-bee6ed15b31b'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Validate QC pipeline',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '591b90bc-9f7e-58ab-aeb2-6e28dc34ff59'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Collect pilot feedback',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '53bf58de-b88b-5a05-abea-27fbbfe9fc87'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Submit internal review',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a103f813-8e3c-5e5d-9f69-d82fbb8b5255'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Update project README',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5ba2f0b2-2d6e-54e5-85c5-06b13f3874e9'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Draft related work section',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '56bd73fd-7e17-5f9a-8000-ab2d4dc80f3f'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Clean and version dataset',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bb0177a1-272b-5a3c-a052-958fb408146b'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Run baseline model (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '911cdce0-6827-5d84-a156-7970c8f4c666'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '892fdf3d-79ef-5aae-9363-b0e95d155be6'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7f9b6d7a-18c3-5dfc-b4b5-c3782bfeb107'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7d042d5a-fdf5-5dcb-8121-b2c5130f0d4e'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1c976d48-44a5-5fc8-99de-c7742a513897'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
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
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Dexterous packing under uncertainty — cohort 8',
  'Dexterous packing under uncertainty is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'remote',
  'long_term',
  10,
  true,
  'Boston, MA',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ee693d7f-b8b3-5f41-8321-61414d4ba526'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  'owner',
  'active',
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3683726a-a5aa-5627-bf0d-c3f402e9a188'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  'editor',
  'active',
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f55e1c54-1100-5442-b3ae-f223fe6a8063'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'viewer',
  'active',
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7596e588-4a7b-542a-90af-2afc7d28a668'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  'viewer',
  'active',
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '47aa6b7b-5d2a-5a72-ad16-a2fe4d598f9e'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Dexterous packing under uncertainty — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '18bb9a72-290e-5cf9-a01e-7474275c5d0e'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Dexterous packing under uncertainty — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '72bfbf97-5233-51f2-b959-215afdcdb949'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Submit internal review',
  'Tracked work item for Dexterous packing under uncertainty — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd9056a8d-14dd-5386-a426-9148cce9565f'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Update project README',
  'Tracked work item for Dexterous packing under uncertainty — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fae471f6-7446-5457-bbb2-89e48e17810b'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Draft related work section',
  'Tracked work item for Dexterous packing under uncertainty — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'aa078393-4c8a-59b4-b096-53710e3c849e'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Clean and version dataset',
  'Tracked work item for Dexterous packing under uncertainty — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '957fb33d-a349-5d79-9921-cc77b44aac57'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cf6c1106-aa2b-5477-aee3-ed04e43aafbf'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '22aa8b4a-d520-5a87-ba96-c9c0cd9fec0d'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e14432ee-6886-5ca5-bd74-9a5d6bd372c2'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '74f586ab-3c55-5444-9ada-da185f8d4a45'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'decb28ab-5307-5d34-b2e6-71eb6f88b363'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
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
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 8',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Toronto, ON',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f038085f-66bb-57aa-b857-a2b0e1448f3b'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  'owner',
  'active',
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3571fccb-d6aa-505f-a229-3a87b35350f9'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'editor',
  'active',
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ea5ea06e-36d5-52a6-93f8-36b9f48faf9e'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'viewer',
  'active',
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9a2b5659-7161-5df9-9643-774def2d1174'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  'viewer',
  'active',
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '52e19cad-e814-5d00-94eb-43f0358d0b5c'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'viewer',
  'active',
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '00371689-49e5-5b0a-adfc-060d93fd9528'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0b83fda8-34cb-5cd3-a9f4-63e8ee0d66b9'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3ebf6cf5-f586-5fc3-a005-eb22aa5b0c96'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Submit internal review',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0e09d73f-f538-5507-8c54-d7f422038755'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Update project README',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dd8ea16d-0beb-5cf6-b917-8d8e37cf7c26'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Draft related work section',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a3a49fbe-9a04-5336-a7e7-ec99373617d6'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Clean and version dataset',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4ab09f69-b4ed-5268-ad86-d0e51259cfd1'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6f318c25-9adc-5930-97a3-88159eb4b63b'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4f68274d-4d03-585f-b816-1e77c3de72f6'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4eecb636-71c1-5b41-937e-f6b5142fd9d7'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e7214722-0fba-5112-a390-8425e9cbe7ac'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '89142977-4ec9-5613-8928-08181d862b18'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
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
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Vascularized cardiac organoids — cohort 8',
  'Vascularized cardiac organoids is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'local',
  'short_term',
  12,
  true,
  'Zurich, CH',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b1cd76aa-0f41-52bf-8b49-a60be1a7010c'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  'owner',
  'active',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '153bc5f1-9c9e-56c7-93aa-2a7013cbea62'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  'editor',
  'active',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'df33c30d-8ef4-5076-bb3a-4ac8907aa551'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  'viewer',
  'active',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '46644222-7788-58e7-b530-5a3e7cd82d38'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  'viewer',
  'active',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7655d592-2eac-5bf9-8cf9-eb22e74e5594'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  'viewer',
  'active',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '13ac9e64-d4a3-5db0-aed8-44b1870062af'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  'viewer',
  'active',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd9842ed5-9f18-5e09-9a05-c88cbc710a88'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Vascularized cardiac organoids — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '249fdaf0-d70a-5916-a404-f29047a60d2a'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Vascularized cardiac organoids — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b5a86ed8-97e2-5cef-b21e-c7e51cf95671'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Submit internal review',
  'Tracked work item for Vascularized cardiac organoids — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '100fd28c-b937-518b-9a4c-aebc6696c230'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Update project README',
  'Tracked work item for Vascularized cardiac organoids — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cc478cc9-7101-5d87-af81-3a68f903f430'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Draft related work section',
  'Tracked work item for Vascularized cardiac organoids — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6428e75f-a120-5aac-8bb4-58359b9dc473'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Clean and version dataset',
  'Tracked work item for Vascularized cardiac organoids — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3392bfdc-e0c5-518b-a298-74713d22f405'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b851b0f6-e257-5ea1-98a2-d9a7d6e21dce'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6956b795-a252-5320-9300-7319ef2fbb7f'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '83966c5d-0251-51cb-a035-9b80262ddbb5'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'edbf9faa-eb3b-5434-9d93-4bbf55adb855'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c81dae6e-30d0-5b72-857c-f34123c01569'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
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
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Labor market effects of credentialing — cohort 8',
  'Labor market effects of credentialing is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'London, UK',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '78eddc7a-4580-55bf-96be-5c03af736416'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  'owner',
  'active',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '819ca140-89b9-5165-80b1-8b397d43324a'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  'editor',
  'active',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '07903239-e5f0-5d79-8cfa-28eafddcdcb0'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  'viewer',
  'active',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '886f6cbf-c385-59f5-a213-190780910814'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  'viewer',
  'active',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '863efad9-1eb6-5639-8b55-7ea89c74e78e'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'viewer',
  'active',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3ff861e8-99df-5d2c-9248-722f2dd887cb'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  'viewer',
  'active',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b5427f61-d33c-5b3d-9cb8-07456304b5f4'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  'viewer',
  'active',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5a993cff-2b70-5906-8b18-915511a36212'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Labor market effects of credentialing — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '989cd206-b81c-5e5f-b843-daa16aae365d'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Labor market effects of credentialing — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '02c3d4c5-3780-5540-82da-45bc3c52d094'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Submit internal review',
  'Tracked work item for Labor market effects of credentialing — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5fbe81ec-656e-570f-a833-f878d5837cca'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Update project README',
  'Tracked work item for Labor market effects of credentialing — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9adc07e6-7fda-5fe0-b28b-46de1c2a23ab'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Draft related work section',
  'Tracked work item for Labor market effects of credentialing — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f877e2e0-6aa8-5b1e-a59d-fa648288dbbd'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Clean and version dataset',
  'Tracked work item for Labor market effects of credentialing — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1af9a75b-24da-5256-b3e0-8e7f5eeccf36'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bf022c0e-c351-502d-a375-48c911fb2fc9'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ac8be80b-3cce-56e8-927e-1f2af3aa24c0'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'bd65e6df-76e6-5347-b7c8-7d92127fc091'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9b96ae65-418e-5c77-85f0-38414ed8e220'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4e948d00-3e99-509d-abf5-ea93048b2393'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
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
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Low-cost water contaminant sensing — cohort 8',
  'Low-cost water contaminant sensing is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Seattle, WA',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '75e88c3e-2d5c-5718-9d08-93a35530806e'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  'owner',
  'active',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '81741ad1-79a2-59fd-a04a-93cbc37fb42c'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'editor',
  'active',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f85a32e8-e231-5113-8ea5-3d08e9b7d69d'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'viewer',
  'active',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'edaebaf1-218d-5e71-978f-0aa043e45691'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  'viewer',
  'active',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '451afcfc-66b9-525b-9065-d35dd9d9281e'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  'viewer',
  'active',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b43f2ec6-d846-51b5-bcf6-770704a20f0b'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  'viewer',
  'active',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2f2c99fd-d239-514e-b86b-7475bf9bf10f'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  'viewer',
  'active',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1fbb719d-1235-58c5-a7f3-8656b04f30ce'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  'viewer',
  'active',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a1ca41e4-1fcc-5584-8ce0-029af9d359d8'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Low-cost water contaminant sensing — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e93b3ecb-a23b-50bc-a453-2049bfb5a688'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Low-cost water contaminant sensing — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '475f8303-c0d4-5f8f-adbe-3072b3ced2b3'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Submit internal review',
  'Tracked work item for Low-cost water contaminant sensing — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd3086138-405c-59ab-962e-863c8211a2c4'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Update project README',
  'Tracked work item for Low-cost water contaminant sensing — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '09e5aa4c-b3c5-54e4-91c5-b0372a1f9210'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Draft related work section',
  'Tracked work item for Low-cost water contaminant sensing — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1c6aaa87-90b7-520a-a498-dbd31e4600c5'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Clean and version dataset',
  'Tracked work item for Low-cost water contaminant sensing — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'da1c66af-dec3-5f67-b22e-2959150a915b'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3f4dff7e-6f96-591f-a309-3f7c55d30919'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '046c23fe-0773-5f59-b8c2-0afacccfb179'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '74d3894b-818d-5791-b377-c1da903313e1'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '49c9fc1a-e9aa-55b2-9e51-7c508c1bb1e5'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'aae16104-cfc0-5d84-8c45-4a0a1a8ca928'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
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


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Classroom AI tutor field study — cohort 8',
  'Classroom AI tutor field study is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around edtech, RCT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  ARRAY['edtech','RCT']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'local',
  'long_term',
  6,
  true,
  'Los Angeles, CA',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'db93d129-f74d-5d1d-b752-0b712257845a'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  'editor',
  'active',
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3aa0b09e-b6ef-563f-acb6-cdec2be78e9c'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  'editor',
  'active',
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fafc5eae-3072-5000-b2d6-0e220255e9df'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'viewer',
  'active',
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a3be0404-bab6-52bb-8384-8b7ede61ebd3'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'viewer',
  'active',
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '99c8f783-be4c-5f39-bd1a-67653f5715ab'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  'owner',
  'active',
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8b7b5445-d7f9-5e80-ac2c-5ecd15ca974f'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Classroom AI tutor field study — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '32c2d534-8a0a-5815-a07e-cb67242ce75a'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Classroom AI tutor field study — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3e516642-33b9-54d5-941d-13d7708d86cc'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Submit internal review',
  'Tracked work item for Classroom AI tutor field study — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '41801d36-aff0-5346-b3b5-9e9fee4b0268'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Update project README',
  'Tracked work item for Classroom AI tutor field study — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a2820851-49c2-5216-b4a5-4fcf31f9c2f4'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Draft related work section',
  'Tracked work item for Classroom AI tutor field study — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '49c332b5-6614-5d52-9ff9-70f93d9da47a'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Clean and version dataset',
  'Tracked work item for Classroom AI tutor field study — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '34372423-9abb-5f26-bec8-5a921926fda1'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Classroom AI tutor field study — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6090b765-73fa-5c79-8f87-8cbc07aac6f6'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Classroom AI tutor field study — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8164381d-b589-528f-8ff9-d9f44c39c7a3'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  true,
  'planning',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b895b401-500e-5f8d-bcd6-c85226975080'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  true,
  'analysis',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5045a183-28bd-54f6-bd94-7171172ad019'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  true,
  'writing',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd7a8d07c-5ea8-5975-9ddf-2c17ee51305c'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
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
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Privacy-preserving wearable analytics — cohort 8',
  'Privacy-preserving wearable analytics is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around wearables, privacy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  ARRAY['wearables','privacy']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'remote',
  'long_term',
  7,
  true,
  'New York, NY',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9acccdea-053b-5d48-bb0a-b51f959f0aeb'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  'owner',
  'active',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b9ee22b6-c233-5245-b779-cc3afd7c435c'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  'editor',
  'active',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '881a02fa-1e4c-564e-b895-1cc55c19da48'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  'viewer',
  'active',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1cc9caf8-3ab2-5a24-b0f7-835c8908d500'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  'viewer',
  'active',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ff51d23f-95b6-53c6-a3f1-7b25b7aacb00'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  'viewer',
  'active',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bcf4046b-f4ac-54f8-a999-dc9f148b92e5'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  'viewer',
  'active',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e3122ce0-ae08-5430-b848-8f8ebc6eb32e'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid,
  'viewer',
  'active',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9a4dfa5d-7282-53d3-b55f-1632d98c463c'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '82b245f8-2688-5f47-9503-cf73f26c2504'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'afde7bb9-1a01-5b50-b3f8-7854af76b1fd'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Submit internal review',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9dd138ad-cee3-58cf-be1b-ece028167ccb'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Update project README',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'af0c0ed3-5a5d-5a98-ab1b-58a67d2faed7'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Draft related work section',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b4fe7f83-351f-5259-a6c3-0f1059df60da'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Clean and version dataset',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b8cd0c12-1770-52c5-a096-c8f639c9f6af'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0c8982b5-ff72-5172-ad18-526fc8a54795'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e2f224b9-18a5-54a5-aa8b-95a54bf36e54'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  true,
  'planning',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fda28abc-8846-5da6-83f2-f10a06b2d85e'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  true,
  'analysis',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1bedff3f-499e-5618-a646-0355ffb07b8d'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  true,
  'writing',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'dc71873e-410b-5b40-b861-b170e2263ecd'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  true,
  'ops',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;
