INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Accessible clinical note summarization — cohort 7',
  'Accessible clinical note summarization is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around NLP, healthcare, UX. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  ARRAY['NLP','healthcare','UX']::text[],
  'active',
  'Human-Computer Interaction',
  ARRAY['User research','Prototyping','Statistics']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Oxford, UK',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2f47be7e-5f9a-51c2-adde-a57d0968b8c6'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  'owner',
  'active',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '42bbe616-6e48-5dd7-9692-fd5c09c08524'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid,
  'editor',
  'active',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5a889cbd-ffcd-58e7-92c7-7d8d0a4a8a44'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid,
  'viewer',
  'active',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e9a2cd26-b709-5c07-bf74-4492abcb9324'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid,
  'viewer',
  'active',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c010c87d-4000-50ff-9708-9ce8b562d911'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid,
  'viewer',
  'active',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '930261ec-206e-5f1b-8613-0683cbe7624d'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid,
  'viewer',
  'active',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3317cae2-2567-5832-ab54-645b2dc3deca'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  '728e8630-512a-51eb-9316-3e71371d2478'::uuid,
  'viewer',
  'active',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3df351e9-b087-51ec-83c9-6a7fa9ce5331'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Draft related work section',
  'Tracked work item for Accessible clinical note summarization — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '775ca90d-caa4-5c29-8cd6-1730e8804fde'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Clean and version dataset',
  'Tracked work item for Accessible clinical note summarization — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5511d4e2-8f80-51e7-a539-318824204af9'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Run baseline model',
  'Tracked work item for Accessible clinical note summarization — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '61a423ed-8100-5852-9024-6e8119043ec4'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Write IRB amendment',
  'Tracked work item for Accessible clinical note summarization — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1a19cfbb-19d0-5112-93f4-d1d0d07be375'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Prepare figure panels',
  'Tracked work item for Accessible clinical note summarization — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7c72220b-b871-57f7-9f22-22365a12f31f'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Accessible clinical note summarization — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4f18913f-b4de-5f17-a3b4-e592544446df'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Accessible clinical note summarization — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '728e8630-512a-51eb-9316-3e71371d2478'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ba4c755c-1de0-5044-a731-713a1af1b97d'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Accessible clinical note summarization — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd6e3f62f-c947-5473-9a8f-06a8a25fd3c8'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  true,
  'planning',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7d46e272-db6a-57a9-9685-fc7e0fcb6245'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid,
  'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid,
  true,
  'analysis',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1d28a47b-78b5-5d69-ada1-0e4f8351be3a'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid,
  '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid,
  true,
  'writing',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c2691cf4-1c13-5e35-8686-3b5b02b476a3'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid,
  '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid,
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
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Closed-loop stimulation for memory — cohort 7',
  'Closed-loop stimulation for memory is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around neurotech, memory, EEG. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  ARRAY['neurotech','memory','EEG']::text[],
  'active',
  'Neuroscience',
  ARRAY['fMRI','Electrophysiology','Python']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Singapore',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '71224e80-184a-578a-a08e-31dfa6f97223'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  'owner',
  'active',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '318f21eb-8ba5-5f76-a88f-290fb87b0105'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid,
  'editor',
  'active',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '52621cde-28a7-53bf-9708-c8b1cccb8615'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'e8942547-2905-5750-a298-06aa7d0cac82'::uuid,
  'viewer',
  'active',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dcd41f67-ae44-5730-a398-46170601f351'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'bf0af558-883d-514f-a05c-6d86200699c1'::uuid,
  'viewer',
  'active',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2b6d4a5a-e04b-591b-84bd-6ffc28888d61'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  '53500f58-1453-5133-8118-eb17c7a347e0'::uuid,
  'viewer',
  'active',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ba117b91-36c1-5b9d-ae4c-8115b9d610e6'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid,
  'viewer',
  'active',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5d365c9e-cf51-5950-8d46-1c3ecf1690aa'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  '754240ce-0e49-5193-997e-00dc6cf96e2a'::uuid,
  'viewer',
  'active',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cafae610-9fc1-5d7f-a943-d78e9c324d91'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  '3d45d675-a875-5470-942c-38b3923c1d12'::uuid,
  'viewer',
  'active',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b3346ebe-77b0-554f-a0fe-50b8d114cd06'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Draft related work section',
  'Tracked work item for Closed-loop stimulation for memory — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f219a7d0-8414-5f32-8b81-b63872ac8ed9'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Clean and version dataset',
  'Tracked work item for Closed-loop stimulation for memory — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8e840de6-bbb2-5f97-8286-28ded79a2bd3'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Run baseline model',
  'Tracked work item for Closed-loop stimulation for memory — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e8942547-2905-5750-a298-06aa7d0cac82'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4ec94a74-1aa1-5af8-af16-cf39be9cd1bf'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Write IRB amendment',
  'Tracked work item for Closed-loop stimulation for memory — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'bf0af558-883d-514f-a05c-6d86200699c1'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '458bc690-7def-5237-8db5-c97ba0878c80'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Prepare figure panels',
  'Tracked work item for Closed-loop stimulation for memory — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '53500f58-1453-5133-8118-eb17c7a347e0'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f9a43b02-01eb-56d8-b9ee-585de01345e9'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Closed-loop stimulation for memory — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9ee80870-1980-576e-b879-68429ee4d4dd'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '754240ce-0e49-5193-997e-00dc6cf96e2a'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '17d1a760-492d-5fe7-a292-c99a51f27068'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '3d45d675-a875-5470-942c-38b3923c1d12'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fbecb110-cc75-57b4-8a8c-4710da35adbe'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  true,
  'planning',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '786b797c-8bd9-543f-aa29-98c0ad852acf'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid,
  '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid,
  true,
  'analysis',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '332cdb12-4afb-5702-8ada-d0b23d1f01b4'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'e8942547-2905-5750-a298-06aa7d0cac82'::uuid,
  'e8942547-2905-5750-a298-06aa7d0cac82'::uuid,
  true,
  'writing',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4c330ccc-e46c-585a-8729-9e363327d140'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'bf0af558-883d-514f-a05c-6d86200699c1'::uuid,
  'bf0af558-883d-514f-a05c-6d86200699c1'::uuid,
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
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Community vaccine confidence study — cohort 7',
  'Community vaccine confidence study is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around surveys, equity, vaccines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  ARRAY['surveys','equity','vaccines']::text[],
  'planning',
  'Public Health',
  ARRAY['Epidemiology','R','Survey design']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Melbourne, AU',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '623e3528-74c9-59e8-a395-38ec879cf367'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  'owner',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8a1072e5-7708-51c7-a01f-358cdbc411f7'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  'editor',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9c260a17-d545-580b-b990-5b1be84ea510'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid,
  'viewer',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c0c0b4bc-fc0a-5708-a49e-9783b449fe72'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid,
  'viewer',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0514aa26-c607-5323-8c24-9c4c486dcfbb'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  '3dd86691-9e6d-5f95-b08a-8f29f3faa19d'::uuid,
  'viewer',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '86bd853d-c310-501c-ba1a-25341fdbb693'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  '19650605-ba6d-5094-8e63-01744f21874e'::uuid,
  'viewer',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '48eabc76-1320-5b37-bcd5-b2dafeed0a71'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid,
  'viewer',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f0c51f83-4451-5008-81fe-4af7487fca6b'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid,
  'viewer',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '016820b6-a13d-560d-9111-75f1a0a62442'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  '42100420-3e43-57ff-96c6-5945409a49d1'::uuid,
  'viewer',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '459801f8-14ea-55a8-bfb9-2e9ee22919b6'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Draft related work section',
  'Tracked work item for Community vaccine confidence study — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a5ed0575-1ed6-5615-8836-50102449d696'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Clean and version dataset',
  'Tracked work item for Community vaccine confidence study — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9d4e7b76-965d-57e2-a17b-588565fc7693'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Run baseline model',
  'Tracked work item for Community vaccine confidence study — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '96b7e5d1-cfc4-531b-ad66-7b9ac7aa1b29'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Write IRB amendment',
  'Tracked work item for Community vaccine confidence study — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0f5ea2a5-8ef4-5e83-b50e-8437c71367c6'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Prepare figure panels',
  'Tracked work item for Community vaccine confidence study — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '3dd86691-9e6d-5f95-b08a-8f29f3faa19d'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2b7dd446-a432-51a4-9ac5-35b9bdceaed1'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Community vaccine confidence study — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '19650605-ba6d-5094-8e63-01744f21874e'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6e86956c-bf31-504f-b2e7-9f4238918889'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Community vaccine confidence study — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5c687c81-5539-5121-b12a-cc202ffb2bc9'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Community vaccine confidence study — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '662fb882-93b9-5d49-b2e8-615ec68e3ec9'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  true,
  'planning',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '016d2588-8746-56c5-958e-444c5e8a1e3e'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  true,
  'analysis',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'accffe01-daa6-5f58-b54d-8c004ae4be82'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid,
  '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid,
  true,
  'writing',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '588968d6-ea9e-5325-9b46-57d7d20c3657'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid,
  '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid,
  true,
  'ops',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;