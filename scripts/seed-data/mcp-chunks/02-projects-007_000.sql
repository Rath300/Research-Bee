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