INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Accessible clinical note summarization — cohort 9',
  'Accessible clinical note summarization is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around NLP, healthcare, UX. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  ARRAY['NLP','healthcare','UX']::text[],
  'active',
  'Human-Computer Interaction',
  ARRAY['User research','Prototyping','Statistics']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Princeton, NJ',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '224216e5-57ad-5377-add3-6adc59225f39'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  'owner',
  'active',
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ea64d9d8-c9c9-58a9-8110-195a940f08a4'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  'editor',
  'active',
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8a28692d-d0cc-530c-8b83-ff5ddebd94d0'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  'viewer',
  'active',
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ad87af58-bbdb-523e-a4b3-e744d9673a8c'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  'viewer',
  'active',
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a51e401b-38a7-5bbe-b123-72ffc04498e9'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid,
  'viewer',
  'active',
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0aa59929-bbf3-5709-81ce-395e31042060'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Prepare figure panels',
  'Tracked work item for Accessible clinical note summarization — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4da74625-dc9f-594e-980f-d2b042fcea6a'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Accessible clinical note summarization — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e5195561-ccc6-5e06-aa9b-f832c1ce8802'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Accessible clinical note summarization — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3d4afef3-18fd-5a5d-a9e4-c0522fb1a2e4'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Accessible clinical note summarization — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fa103ab4-4576-577b-9826-d5ff8c1b267d'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Accessible clinical note summarization — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7daa2890-1038-5716-a0f7-876388f6ea53'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Accessible clinical note summarization — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '59296b4a-c12d-5e1f-a092-2a30dd16292b'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Accessible clinical note summarization — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7a5d2d49-0386-5a2f-9fad-fd7eac528600'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Update project README (3)',
  'Tracked work item for Accessible clinical note summarization — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a10277bd-65e0-57cc-bea1-c3ff8829e165'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  true,
  'planning',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd05770b4-7d28-577e-a8d7-25dbd8409dfa'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  true,
  'analysis',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e5f9ea04-f181-5aec-b93d-bc9c3cc134a3'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  true,
  'writing',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '20bebf45-b291-5e7c-bd4a-b1c4ec9fe63c'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
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
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Closed-loop stimulation for memory — cohort 9',
  'Closed-loop stimulation for memory is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around neurotech, memory, EEG. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  ARRAY['neurotech','memory','EEG']::text[],
  'active',
  'Neuroscience',
  ARRAY['fMRI','Electrophysiology','Python']::text[],
  'local',
  'short_term',
  12,
  true,
  'Pasadena, CA',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '52ca26d2-af87-50bb-84e7-ef33c7da6ddc'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  'owner',
  'active',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f7bdac7a-1fd9-55bd-8831-b9ce12dca0f7'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  'editor',
  'active',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4513604a-ff99-5d45-92ae-f316f462eec3'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'viewer',
  'active',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '94720ede-60d0-5303-9731-79d89ccfeac7'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  'viewer',
  'active',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a278a0b5-6e4c-51fc-9dda-9cf1f3b00475'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid,
  'viewer',
  'active',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ee4d77e9-1e52-506e-9986-d03133d5a0a0'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid,
  'viewer',
  'active',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '034ae4d5-558d-5022-af38-0251a957f3e5'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Prepare figure panels',
  'Tracked work item for Closed-loop stimulation for memory — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e2a8c62f-b4f4-5046-98b6-6ece638ba83b'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Closed-loop stimulation for memory — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0fc6e70d-6448-50c6-b2bd-ad84e9af4ec5'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Closed-loop stimulation for memory — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '65f84606-f70e-5cf1-b27c-2115c719fa93'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Closed-loop stimulation for memory — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '48f2a9d4-d9ba-501f-8766-5ecbcf77aa98'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Closed-loop stimulation for memory — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7d8bf902-f6ac-5dc6-a34e-ea6eb3ec5c26'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Closed-loop stimulation for memory — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '47f2c5b1-1905-5a02-92a5-982dfec3bc35'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f5e57286-ad5e-57fd-a476-e96c83ddae9d'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Update project README (3)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '22fee49a-7318-59fc-89f7-b6b1710d7fdc'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  true,
  'planning',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a9da1714-46ef-567e-8bfd-3dade373689b'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  true,
  'analysis',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd9d81995-ed64-5757-9c90-a738146cfadb'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  true,
  'writing',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e8f343ce-c46e-574e-9ac2-fd698bb54d9c'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
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
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Community vaccine confidence study — cohort 9',
  'Community vaccine confidence study is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around surveys, equity, vaccines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  ARRAY['surveys','equity','vaccines']::text[],
  'planning',
  'Public Health',
  ARRAY['Epidemiology','R','Survey design']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'Oxford, UK',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1de02851-7ce3-5bab-a97c-0b54e14c4792'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  'owner',
  'active',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '46a2f728-f5c0-5cd1-a7d9-a8b7bf2db51c'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  'editor',
  'active',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7e5a740a-652d-5a74-b67f-6d5f99057e0a'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'viewer',
  'active',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '296ec22b-45c9-53ef-b82e-7b8896ad1179'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  'viewer',
  'active',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '217cbde0-841c-54e2-b6e8-6310f48d1f6c'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid,
  'viewer',
  'active',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '03b8d1cc-c9ac-50f8-a720-45b1a9f40e31'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid,
  'viewer',
  'active',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a8183216-98e9-52d2-87a7-1c95b637a155'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid,
  'viewer',
  'active',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '080535d7-f717-5a97-80e7-c2d581287935'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Prepare figure panels',
  'Tracked work item for Community vaccine confidence study — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ae056a64-1c06-5eca-89f6-5a8e78f440b4'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Community vaccine confidence study — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8e180443-e116-59d1-b4bb-18e001ba898a'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Community vaccine confidence study — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '63b3fe3c-2476-59b6-8c6a-def8bed00d4d'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Community vaccine confidence study — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '05cb6b2f-2480-56e5-9b90-84393c7b9444'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Community vaccine confidence study — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e21fb321-36e2-50df-a06d-1ec121d71da6'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Community vaccine confidence study — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0575ddde-e713-5e4c-8b94-6bddd8bfc7ec'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Community vaccine confidence study — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2d2ac0fb-0e2c-5286-bc6e-98aa471bd140'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Update project README (3)',
  'Tracked work item for Community vaccine confidence study — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c4725cfb-4fee-5d51-9519-b74bb10161a1'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  true,
  'planning',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8e91c9f7-c11b-56a9-8cab-4725672a0ae9'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  true,
  'analysis',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c19b4c07-9e30-55cd-a3b7-d5681eccb7ba'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  true,
  'writing',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '321be267-b4c1-5277-8e46-2da74fdcf51a'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  true,
  'ops',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;