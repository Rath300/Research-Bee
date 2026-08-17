INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Accessible clinical note summarization — cohort 1',
  'Accessible clinical note summarization is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around NLP, healthcare, UX. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  ARRAY['NLP','healthcare','UX']::text[],
  'active',
  'Human-Computer Interaction',
  ARRAY['User research','Prototyping','Statistics']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Boston, MA',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ff49d602-71b5-5fc0-bfd3-c94677220c83'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  'owner',
  'active',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c9ca6f0c-fcd2-54e5-8f61-524b11b6637c'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  'editor',
  'active',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '01604c64-b452-5411-9570-fb89af39d54e'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  'viewer',
  'active',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c2ea986a-632d-586e-a183-0177b856095c'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  'viewer',
  'active',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a3af145b-43b7-56ad-b8b8-0a697b74c4ac'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'viewer',
  'active',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c542609b-d114-59d9-9aec-7e560002274e'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  'viewer',
  'active',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2922f064-10af-59b0-b59f-aac68f0f798c'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  'viewer',
  'active',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6d14a146-5374-506e-bca2-63c18c7c06e9'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Draft related work section',
  'Tracked work item for Accessible clinical note summarization — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '11196c1b-7e4a-5490-808c-da3aca2fc50a'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Clean and version dataset',
  'Tracked work item for Accessible clinical note summarization — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a3fd48d0-6e5d-59ad-b5d5-d2becc4eeb0d'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Run baseline model',
  'Tracked work item for Accessible clinical note summarization — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c0f90c48-5c3d-57f1-a7e9-71b1bb60060c'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Write IRB amendment',
  'Tracked work item for Accessible clinical note summarization — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8b7ac679-dbb6-5fd2-9b60-c9565bc19348'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Prepare figure panels',
  'Tracked work item for Accessible clinical note summarization — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e250215f-bf19-57c6-9db4-7461bc5498bd'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Accessible clinical note summarization — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f3e8cbb8-1188-521c-8df9-80a1feb8be63'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Accessible clinical note summarization — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a30612e6-f7cb-5a83-83e0-0c2fb178b5aa'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Accessible clinical note summarization — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b072edc9-525a-5114-83cf-7f1fa7d13277'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  true,
  'planning',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e6ebc02d-f90d-5e98-85d0-09f20ce40857'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  true,
  'analysis',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '42b718fd-9d50-5013-b07b-0131ef7d9550'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  true,
  'writing',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a8a7e60d-2e31-52cc-b08e-94e2e9d06a7e'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
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
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Closed-loop stimulation for memory — cohort 1',
  'Closed-loop stimulation for memory is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around neurotech, memory, EEG. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  ARRAY['neurotech','memory','EEG']::text[],
  'active',
  'Neuroscience',
  ARRAY['fMRI','Electrophysiology','Python']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Toronto, ON',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '072b4720-9886-5fb0-8ece-f0b4e25fa892'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  'owner',
  'active',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0741ac63-132a-5b1a-bbe2-1b07c9fb5759'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  'editor',
  'active',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7f9e0e52-e9ec-5bfd-b51e-a7650377cd7b'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  'viewer',
  'active',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bbc62348-1af4-5c63-b88f-229555793522'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  'viewer',
  'active',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ab918c3d-00fe-56c3-8d28-d87ccb102fdd'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  'viewer',
  'active',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4120f507-1bb0-5723-bbbd-4b9fe00462ca'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  'viewer',
  'active',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd00e57d1-dec0-5d47-b109-83d1d1f5780c'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'viewer',
  'active',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e99f881b-05eb-585b-a9d2-d85f617fe0f3'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  'viewer',
  'active',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3e2af9a1-4c5a-5f22-92bd-926a4bc1aae6'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Draft related work section',
  'Tracked work item for Closed-loop stimulation for memory — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8bd7a9c3-b942-5965-b5b4-3f44798db2b3'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Clean and version dataset',
  'Tracked work item for Closed-loop stimulation for memory — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b0c7eb0c-f7c5-5db4-aa96-c2eb3acf3c19'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Run baseline model',
  'Tracked work item for Closed-loop stimulation for memory — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c953deef-2508-59be-9702-29a3fa07adb2'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Write IRB amendment',
  'Tracked work item for Closed-loop stimulation for memory — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '966a3cf0-4355-5e12-b632-ecc68287741f'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Prepare figure panels',
  'Tracked work item for Closed-loop stimulation for memory — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cea40e3b-4e13-57f6-815d-2f4f1260b546'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Closed-loop stimulation for memory — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c2c70d7b-f53d-5393-81c2-fb237de98ba3'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '37b964eb-0d13-5a38-a137-0a583546a5f1'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1fbbbc1e-af87-56a1-9bcc-ff14ed6eb086'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  true,
  'planning',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'bc88c2a2-5001-5322-b6f6-4f0ed3496dd9'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  true,
  'analysis',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '678551c5-59f4-5bd1-91fd-8365cefbae35'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  true,
  'writing',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '72e58f41-2a9f-5bbb-af5d-6a045641a8bb'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
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
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Community vaccine confidence study — cohort 1',
  'Community vaccine confidence study is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around surveys, equity, vaccines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  ARRAY['surveys','equity','vaccines']::text[],
  'planning',
  'Public Health',
  ARRAY['Epidemiology','R','Survey design']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Zurich, CH',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f894cb2a-a06f-5454-9c96-3d7dd00ee29e'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  'owner',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b6306308-07d4-5843-9bd1-cd320acae42e'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'editor',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5bbc9b91-3366-5851-8a08-abf450c83fa5'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'viewer',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd2abc774-a61a-57c0-b43e-47bbb8a6ff11'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  'viewer',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '458ef807-ff11-5385-9c40-cd9f2103e65c'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  'viewer',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ee8a8f21-7a71-5e91-b4c4-84c4efcc2cf3'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'viewer',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f0c7a343-0120-57a0-bcb6-99e935ac0bad'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  'viewer',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5bd08454-be9d-5880-8750-80a5b12d2dbd'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  'viewer',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '63ecbf61-f890-532c-803e-eaef879ba256'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  'viewer',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '311fc899-9a74-5123-ab5c-c39be754d282'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Draft related work section',
  'Tracked work item for Community vaccine confidence study — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '936f6bbf-9ddf-5683-b09a-871cdb13a4eb'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Clean and version dataset',
  'Tracked work item for Community vaccine confidence study — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '36007062-38b4-5c85-8806-e8d0d39652f8'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Run baseline model',
  'Tracked work item for Community vaccine confidence study — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e7ddd331-5cdc-5d82-91dc-a511fa109127'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Write IRB amendment',
  'Tracked work item for Community vaccine confidence study — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1afddbe9-b7f4-5f6d-8220-7564787a8b47'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Prepare figure panels',
  'Tracked work item for Community vaccine confidence study — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7e6e488b-ab9c-5189-ae45-7fca43d1bebb'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Community vaccine confidence study — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eb8486bb-b542-5767-995e-0f4b250d3b7e'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Community vaccine confidence study — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dfa6d596-f8a4-567d-b178-33ca47096c68'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Community vaccine confidence study — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '89cab345-ed75-5386-9063-c97f2dbfdba1'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  true,
  'planning',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a8c953e7-0c93-591e-b060-686950f1ea68'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  true,
  'analysis',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'adaab32f-e27d-5549-9901-15836fa3e0db'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  true,
  'writing',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '50adfe8f-10de-5cc5-8686-7005cfc4a153'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  true,
  'ops',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;