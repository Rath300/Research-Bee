INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Vascularized cardiac organoids — cohort 2',
  'Vascularized cardiac organoids is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'local',
  'short_term',
  12,
  true,
  'Los Angeles, CA',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '091ad032-1111-55a9-9b39-eaddfcb71389'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  'owner',
  'active',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6179f0d5-e80e-53b1-a7b0-467a4c820b23'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  'editor',
  'active',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f1abf30e-17cb-5aaa-8260-ee6baf886777'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  'viewer',
  'active',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '206b2794-36af-553e-aef5-9749d35b5e7e'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  'viewer',
  'active',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '72ee7c61-2490-5d85-9ddd-d077de2f7076'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  'viewer',
  'active',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a02a4514-bccb-5ba8-9cfc-73e6121bf231'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid,
  'viewer',
  'active',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '05202b62-fb6a-50a6-b005-d583abf8f96b'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Vascularized cardiac organoids — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c36e80fd-b8d0-5067-b99c-c157cdef3dbc'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Vascularized cardiac organoids — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7f2f7bfd-e546-5f08-8a84-667869cfca29'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Submit internal review',
  'Tracked work item for Vascularized cardiac organoids — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1b70ec2f-6499-5333-8171-3e871e27daf2'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Update project README',
  'Tracked work item for Vascularized cardiac organoids — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0d48edf6-2f59-59f1-a9a4-6cd768772837'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Draft related work section',
  'Tracked work item for Vascularized cardiac organoids — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '684c8f1b-e2d9-558d-9016-bbe03fe635dd'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Clean and version dataset',
  'Tracked work item for Vascularized cardiac organoids — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '31b798d5-1c34-5e0e-ba6b-3836041b3040'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'aa43bb64-51c3-55cc-9b43-b48df9b35b7b'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '74230813-346a-588a-a51c-898980a20918'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b8cd2647-c33a-5e1b-b69b-35419de87a36'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7177643e-2d4a-5690-be35-f3bd01dc9ee4'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2314b658-1251-5dba-bce1-7cf948b68e5e'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
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
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Labor market effects of credentialing — cohort 2',
  'Labor market effects of credentialing is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'New York, NY',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '189de0d7-6e2e-527f-8fdc-65f7880eb83a'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  'owner',
  'active',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '056b6188-46c4-57f0-8793-d17d35132296'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  'editor',
  'active',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b046b9df-4977-5500-b57a-0b307db701f0'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  'viewer',
  'active',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1c0a34f9-8da1-54dc-9d95-142ac7082dc3'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid,
  'viewer',
  'active',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '18932919-2e0a-5ca1-b545-7494d7a27684'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid,
  'viewer',
  'active',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '53d6f8eb-fb84-5031-92e3-4035b659a434'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid,
  'viewer',
  'active',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '441df8fa-214a-5bd3-bdd0-f8f0cebdc536'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid,
  'viewer',
  'active',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5c03a5b3-9d98-55f7-8adf-e4e34cd7756b'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Labor market effects of credentialing — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '78883f0b-4999-5905-b394-aa1d9b24615f'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Labor market effects of credentialing — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '51d9b998-9773-5c70-b4cf-2de57e7c5614'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Submit internal review',
  'Tracked work item for Labor market effects of credentialing — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6870b6ac-a9ac-509d-940e-1f2e4da29c93'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Update project README',
  'Tracked work item for Labor market effects of credentialing — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ba44f11a-189c-5ae7-94e2-f9824ac76bb3'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Draft related work section',
  'Tracked work item for Labor market effects of credentialing — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fa61502f-3b15-5094-b803-4b750a150c06'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Clean and version dataset',
  'Tracked work item for Labor market effects of credentialing — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8f02092d-44d8-581e-bb41-2e2500b24153'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3b0d8c33-0f37-5469-9cd1-e0a70f5d9f22'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0f53d904-22ac-5772-a802-8ba53c888b2c'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '56712be3-95a4-58f0-a1a1-9373765bdc32'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '62b80197-8a73-523d-8516-6ce56fb17407'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '93d910b2-099f-5d62-8fd6-563b593a00af'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid,
  '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid,
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
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Low-cost water contaminant sensing — cohort 2',
  'Low-cost water contaminant sensing is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Chicago, IL',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0b7a6f5d-2402-5a1d-b101-c29f14e38a6a'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  'owner',
  'active',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4ac5391f-ba4f-543a-ab7e-39dc53f74fe7'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid,
  'editor',
  'active',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8f971f7a-c1ea-5f9a-b50e-df853c636fb8'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid,
  'viewer',
  'active',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b1bc6226-6832-5618-ba84-91a26be1beb6'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid,
  'viewer',
  'active',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '341c973c-50e2-5e97-99a2-bfb37071ae8d'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  '560e33d5-d1d4-54da-84b6-56f71fbcb908'::uuid,
  'viewer',
  'active',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '45f68adf-25b9-5601-bd5a-f2f024450010'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'c0679564-584a-56e3-82af-67940faa7931'::uuid,
  'viewer',
  'active',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9aea81ae-a885-59d1-bd47-756fd7296f36'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid,
  'viewer',
  'active',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7365cd7f-6ca1-5650-945a-6abb508f9c28'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid,
  'viewer',
  'active',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8169feac-6fcb-5e5d-b432-932bbff64cdb'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Low-cost water contaminant sensing — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '432b9424-15e4-5379-ac62-da76d9addc42'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Low-cost water contaminant sensing — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '507a2286-1919-5dde-b80b-e494a90e2a2d'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Submit internal review',
  'Tracked work item for Low-cost water contaminant sensing — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6ed67bad-9072-5f5d-b81d-be690792105b'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Update project README',
  'Tracked work item for Low-cost water contaminant sensing — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd95ccb34-1e30-5afe-919f-4f8fc3d853a4'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Draft related work section',
  'Tracked work item for Low-cost water contaminant sensing — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '560e33d5-d1d4-54da-84b6-56f71fbcb908'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1aad4448-7fe5-56e4-848d-627c56f08ca8'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Clean and version dataset',
  'Tracked work item for Low-cost water contaminant sensing — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'c0679564-584a-56e3-82af-67940faa7931'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c13b7bfa-1b08-56e6-8656-8d5104577752'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e367cd66-850f-5b3e-8ccf-e1adb1beedc9'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6d7bf9ee-a1a6-5dee-aefa-46072eeda780'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3a475cfa-04b3-514c-bc76-16c8d3cd8552'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid,
  'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b483bbf9-dc1e-5581-900a-8ee5e6ca1057'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid,
  'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b4b764db-d245-5c02-9502-78df0df7e9eb'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid,
  'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid,
  true,
  'ops',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;