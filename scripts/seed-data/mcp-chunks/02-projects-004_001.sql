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