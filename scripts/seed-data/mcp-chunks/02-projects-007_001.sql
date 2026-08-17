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