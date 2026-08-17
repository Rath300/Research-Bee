INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Accessible clinical note summarization — cohort 4',
  'Accessible clinical note summarization is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around NLP, healthcare, UX. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  ARRAY['NLP','healthcare','UX']::text[],
  'active',
  'Human-Computer Interaction',
  ARRAY['User research','Prototyping','Statistics']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Cambridge, MA',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bc9e851f-6c73-53ac-9162-836b1ea81a95'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'owner',
  'active',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c175e428-413c-5a5d-9d79-b2da3710e705'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid,
  'editor',
  'active',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '03950823-d9bb-5a1c-95db-f7b6343cef1c'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid,
  'viewer',
  'active',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '263e1447-20e8-5782-ae8b-5218b2f4bf51'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid,
  'viewer',
  'active',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd22b7a64-7d8e-5455-9fa1-7b7e2ade8030'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid,
  'viewer',
  'active',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '43d9ba3d-e35b-563a-8fdb-0ee4f60eda56'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid,
  'viewer',
  'active',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c8c7f4c2-71e5-5027-b33a-e2db40573eb0'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid,
  'viewer',
  'active',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'db8157af-5035-50a1-af8f-424e173c2a07'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Draft related work section',
  'Tracked work item for Accessible clinical note summarization — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'da6837f1-0b44-5147-8faa-0d5b9e95583f'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Clean and version dataset',
  'Tracked work item for Accessible clinical note summarization — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f3b2c072-5614-5d40-b072-623570262a63'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Run baseline model',
  'Tracked work item for Accessible clinical note summarization — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '13875c27-7ac1-5d16-9567-46adc3ff257b'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Write IRB amendment',
  'Tracked work item for Accessible clinical note summarization — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'acbb6650-0d4b-5203-be01-7b0cd33e39e5'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Prepare figure panels',
  'Tracked work item for Accessible clinical note summarization — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ec39e42f-af6d-52ee-9f23-2c480065f49c'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Accessible clinical note summarization — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a683f469-0202-550f-8079-04864a1ab78f'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Accessible clinical note summarization — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2f3ef419-f884-5622-8fc3-94cd642df0fc'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Accessible clinical note summarization — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fcdb6958-cc49-533a-b99a-92b80d842952'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  true,
  'planning',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '509893ee-1c3e-586b-9783-772185458625'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid,
  '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid,
  true,
  'analysis',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '62b0aa28-1894-5804-846e-17384b271fd9'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid,
  '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid,
  true,
  'writing',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e7a02e66-c76e-528a-a8d3-a3aabe7b0024'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid,
  '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid,
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
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Closed-loop stimulation for memory — cohort 4',
  'Closed-loop stimulation for memory is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around neurotech, memory, EEG. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  ARRAY['neurotech','memory','EEG']::text[],
  'active',
  'Neuroscience',
  ARRAY['fMRI','Electrophysiology','Python']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Palo Alto, CA',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '137aed70-f6c5-5e49-b2e2-b3703f4e7d59'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  'owner',
  'active',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e7918c6f-3cfb-59a7-b331-7b1ecdb3d2ca'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid,
  'editor',
  'active',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b4d24210-426b-5b48-a3d5-b0623fdd5029'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid,
  'viewer',
  'active',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3ee64b56-081b-55bf-bb52-e239b2933720'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid,
  'viewer',
  'active',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2d12f07d-5c66-5f3e-a60e-34ba78edeb00'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid,
  'viewer',
  'active',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c30f9c2e-70fe-5f7d-8700-b3e89f1b68ce'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid,
  'viewer',
  'active',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '33f508ac-e0af-5c6e-835d-60a26ab8cd5d'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid,
  'viewer',
  'active',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'af6c7891-c1d9-576f-b5c3-3099e32ca4cf'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid,
  'viewer',
  'active',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '796035ef-f375-53cf-b4e2-c4e5b5cb8e53'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Draft related work section',
  'Tracked work item for Closed-loop stimulation for memory — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7d2aeee2-4de1-509a-a679-d1f8b9fa18d3'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Clean and version dataset',
  'Tracked work item for Closed-loop stimulation for memory — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '36f8e4f0-e25f-5c71-ad88-bb9adcbb4b9c'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Run baseline model',
  'Tracked work item for Closed-loop stimulation for memory — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1e3b2a5d-26e7-58c0-b8b5-a73f1ae5a302'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Write IRB amendment',
  'Tracked work item for Closed-loop stimulation for memory — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'df815048-3ec7-52e5-bb97-fcf16f3ea4ab'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Prepare figure panels',
  'Tracked work item for Closed-loop stimulation for memory — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a87be303-36c7-55b3-bf0e-bb546aa44444'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Closed-loop stimulation for memory — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '555ed760-e8dc-57f9-babe-cdeeab04abd1'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e1e488a1-c21a-5e6a-bd06-0961c4489a36'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '57ff2323-ecb7-587b-b8b2-4b0fc070d1e6'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  true,
  'planning',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c720f7b1-1b98-5694-ba20-6b71c35eb898'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid,
  '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid,
  true,
  'analysis',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ac006322-0d3e-5e32-9ab0-e01ba161836f'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid,
  '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid,
  true,
  'writing',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3a71ab6c-404c-5a29-894a-739a071a64b5'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid,
  '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid,
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
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Community vaccine confidence study — cohort 4',
  'Community vaccine confidence study is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around surveys, equity, vaccines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  ARRAY['surveys','equity','vaccines']::text[],
  'planning',
  'Public Health',
  ARRAY['Epidemiology','R','Survey design']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Berkeley, CA',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f57d6c26-7b29-5944-8afc-6c1fce01a49a'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  'owner',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9c1cb8b0-e4a0-5ee2-a11f-04e60155bdf0'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  '781e7da5-24de-584d-b14b-8380dabd974e'::uuid,
  'editor',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'db3df3bd-b7f0-5312-ab55-6eed7d91edc6'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid,
  'viewer',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b93418f2-7dfb-521a-8fbe-ecbc047b1ffa'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid,
  'viewer',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd586f43a-8a60-527c-a67d-54ae90a237f1'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'a47f9557-3126-5157-8316-17a32c536be0'::uuid,
  'viewer',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6339d6cd-a858-56cb-8e92-99f55c7e5328'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid,
  'viewer',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0de54139-46f2-557f-a1b0-7d1b9908d43e'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'f271c942-fc21-56d3-93cb-8635126191a1'::uuid,
  'viewer',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e1615743-e767-552d-ad58-2e392ca277d0'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid,
  'viewer',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a5129355-2d59-5e3a-ae9f-e3fe1b388630'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid,
  'viewer',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '34a0bb0f-0b63-595d-a99c-8b45ca7c4fff'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Draft related work section',
  'Tracked work item for Community vaccine confidence study — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4a811524-4ae5-57ff-823d-2ca9dfb0dba8'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Clean and version dataset',
  'Tracked work item for Community vaccine confidence study — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '781e7da5-24de-584d-b14b-8380dabd974e'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6a2feaeb-ea33-58f9-b261-51d84a5ae38b'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Run baseline model',
  'Tracked work item for Community vaccine confidence study — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f0074b2c-9f38-5ca2-ad78-ae493021c282'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Write IRB amendment',
  'Tracked work item for Community vaccine confidence study — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1f8d6515-7ec2-5482-84bc-46918cefe646'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Prepare figure panels',
  'Tracked work item for Community vaccine confidence study — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'a47f9557-3126-5157-8316-17a32c536be0'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2be8b055-054c-50a7-976a-66d2934534db'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Community vaccine confidence study — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '19ed38f7-b784-5ef5-9968-01c09806d146'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Community vaccine confidence study — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'f271c942-fc21-56d3-93cb-8635126191a1'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1bb03ff6-c763-52be-8310-d6f57efdb3ec'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Community vaccine confidence study — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '27eb92b8-20b7-5f67-9065-f4f0fcf748c3'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  true,
  'planning',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '99065cb7-1bbf-56e5-994c-e1c325eed8b0'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '781e7da5-24de-584d-b14b-8380dabd974e'::uuid,
  '781e7da5-24de-584d-b14b-8380dabd974e'::uuid,
  true,
  'analysis',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b34bd229-90aa-5577-8ebe-6c3aa79768f0'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid,
  'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid,
  true,
  'writing',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0f8324dd-08fa-5811-bd2c-ee189011a1d0'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid,
  'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid,
  true,
  'ops',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;