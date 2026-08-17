INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Accessible clinical note summarization — cohort 2',
  'Accessible clinical note summarization is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around NLP, healthcare, UX. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  ARRAY['NLP','healthcare','UX']::text[],
  'active',
  'Human-Computer Interaction',
  ARRAY['User research','Prototyping','Statistics']::text[],
  'local',
  'long_term',
  15,
  true,
  'Berkeley, CA',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '57b1c821-855b-5c58-8760-cf99edef276f'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  'owner',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7c1edadf-d41f-5087-9197-40145383e61b'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'editor',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f46abaad-ed54-5f47-8096-f56373078720'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  'viewer',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '92da9626-39ac-57b1-b771-6f2fead751db'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid,
  'viewer',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0a5d71d1-14b2-58c5-9325-7ea1d92d16ba'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid,
  'viewer',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b95f9ad2-31ad-5ee3-98a5-ef6829c60470'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid,
  'viewer',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '93dae7ca-0522-5b27-ae9e-62e3564cf044'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'f644a779-f61f-50ac-9f62-0022190689d9'::uuid,
  'viewer',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cd8b109f-a71f-57fb-9d7d-68de2b53f02e'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'b7e832e2-7e38-5beb-ac9e-250ae24b06b4'::uuid,
  'viewer',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ba8ef263-63ce-5a40-b7bf-a56a5a5cb26a'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  'viewer',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'af88f062-6fc9-5bc7-b75e-89af8c1e2ca9'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Accessible clinical note summarization — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8c8ad9aa-fbbc-553d-8513-3ecceef4f7e1'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Accessible clinical note summarization — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd5f1a275-7b3f-5cda-ba1f-19859ed835c7'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Submit internal review',
  'Tracked work item for Accessible clinical note summarization — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2f0d5bb1-8f93-59b5-94da-deee960e0657'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Update project README',
  'Tracked work item for Accessible clinical note summarization — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ca6bc6f7-8b2e-5fb6-a391-3f53f7fe451a'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Draft related work section',
  'Tracked work item for Accessible clinical note summarization — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6fc938bc-a797-5fcf-8f39-c020ed7c3a8e'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Clean and version dataset',
  'Tracked work item for Accessible clinical note summarization — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '028d85d3-fd55-5646-b63a-163c7f10f175'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Accessible clinical note summarization — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'f644a779-f61f-50ac-9f62-0022190689d9'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f28f23f1-33fa-5db0-a327-183a81aa711a'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Accessible clinical note summarization — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'b7e832e2-7e38-5beb-ac9e-250ae24b06b4'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '970a16f0-efee-5626-8bcd-07e022a4f7c4'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  true,
  'planning',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b26fc35c-7c5b-5e9d-82ff-111f77d5f165'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  true,
  'analysis',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '26fe4331-f605-5fad-87f3-780b44034f8e'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  true,
  'writing',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '424e1b96-27a2-5504-92cd-945b639c1ef9'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid,
  '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid,
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
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Closed-loop stimulation for memory — cohort 2',
  'Closed-loop stimulation for memory is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around neurotech, memory, EEG. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  ARRAY['neurotech','memory','EEG']::text[],
  'active',
  'Neuroscience',
  ARRAY['fMRI','Electrophysiology','Python']::text[],
  'remote',
  'short_term',
  4,
  true,
  'Boston, MA',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '18eb176f-ff43-5458-9ab7-95eb1b4d2b8f'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  'owner',
  'active',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0b0ccbce-109c-5e92-a803-950ee0dbc845'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'editor',
  'active',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '61f72309-f0b1-57a9-aa2d-0c4ac6c8954c'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  'viewer',
  'active',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '011a1bc3-6a09-52f2-8384-ef2d71327962'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid,
  'viewer',
  'active',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2aff5f56-493c-50b8-99e0-5387fc89ea00'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Closed-loop stimulation for memory — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '69883ddc-5fb3-54da-8f1d-a94cac422ed2'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Closed-loop stimulation for memory — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7bf02e49-f78c-5344-8575-eda9e8620f64'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Submit internal review',
  'Tracked work item for Closed-loop stimulation for memory — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '27b3eded-71a0-57ba-92da-b6269e7f0df8'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Update project README',
  'Tracked work item for Closed-loop stimulation for memory — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '589d4a6d-0c31-569f-a5d4-b387d848319a'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Draft related work section',
  'Tracked work item for Closed-loop stimulation for memory — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cc75cc72-5d8b-5bd2-a50f-3ade6c368024'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Clean and version dataset',
  'Tracked work item for Closed-loop stimulation for memory — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '66db2f15-1fb5-5e46-92d3-1015779c156b'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '27045d75-43d1-5dad-8d81-c097d5d6f828'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2118549d-56a5-5f7f-9fa5-4de02fd51354'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  true,
  'planning',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1e65646f-2d3b-5c99-8497-50076e873cdb'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  true,
  'analysis',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '26258fb2-7b6d-58bc-9e0f-aafa7357b061'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  true,
  'writing',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a0b3c270-75f2-59bf-be90-2ac8c4a3e18d'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid,
  'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid,
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
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Community vaccine confidence study — cohort 2',
  'Community vaccine confidence study is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around surveys, equity, vaccines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  ARRAY['surveys','equity','vaccines']::text[],
  'planning',
  'Public Health',
  ARRAY['Epidemiology','R','Survey design']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Toronto, ON',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '875ef3c7-4a58-56f6-b27c-5d52f8eb02e4'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  'owner',
  'active',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '43f84807-5df8-5f52-aa6d-ac231e5e1b80'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  'editor',
  'active',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e7e067d6-9aeb-5ae3-9ddc-11d1f263f42f'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  'viewer',
  'active',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'eb9b0820-f64b-5fea-9589-210e1cde7d35'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid,
  'viewer',
  'active',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7f2556f6-022e-51d0-8e87-a9bc62bdb915'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid,
  'viewer',
  'active',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ee55d534-09a9-5963-bdfd-5d6d83f164c1'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Community vaccine confidence study — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1276274a-7919-525a-8584-b76b818db323'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Community vaccine confidence study — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5346edf4-f9e7-54af-b48b-8a6129ea54b3'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Submit internal review',
  'Tracked work item for Community vaccine confidence study — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7caa0f3f-4812-50e9-be86-57c89094cc43'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Update project README',
  'Tracked work item for Community vaccine confidence study — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4b5b2988-abc5-53bb-aa38-e3869a1377a1'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Draft related work section',
  'Tracked work item for Community vaccine confidence study — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1bb2498f-3618-5dc1-ba67-1fc2d9bcdf36'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Clean and version dataset',
  'Tracked work item for Community vaccine confidence study — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '36073e87-e8ae-5074-bda6-e1aebfb1f6d1'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Community vaccine confidence study — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6a035bf6-512a-55c8-9ae4-e6ed4a33f0de'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Community vaccine confidence study — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '88e86587-1554-5f51-b2c1-3ac667750a6e'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  true,
  'planning',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3fd5976e-aef6-52e2-8ee6-883b1bd3ca94'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  true,
  'analysis',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f8a3b9ae-a201-57e7-871b-42a0c974ad24'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  true,
  'writing',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd3a0f562-dfc6-5e9b-a3e4-a5d13f91f9ec'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid,
  'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid,
  true,
  'ops',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;