INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Classroom AI tutor field study — cohort 4',
  'Classroom AI tutor field study is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around edtech, RCT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  ARRAY['edtech','RCT']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'remote',
  'long_term',
  10,
  true,
  'New Haven, CT',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0278678c-d862-58e6-8148-f5f15c5d4899'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'owner',
  'active',
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '448d7450-8345-5489-a2da-82b3be918a29'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid,
  'editor',
  'active',
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd2b73d4c-b1df-5510-9da5-96c5693fe658'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid,
  'viewer',
  'active',
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd36d5ff6-af0d-5397-bd27-e357b25de203'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid,
  'viewer',
  'active',
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bf37537a-b264-51ee-80ee-a8445132c7ec'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Draft related work section',
  'Tracked work item for Classroom AI tutor field study — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f6024cfd-43b8-5757-933e-b718a519dfce'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Clean and version dataset',
  'Tracked work item for Classroom AI tutor field study — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '31e462ef-8d10-5f3b-aa01-71e6f72138c2'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Run baseline model',
  'Tracked work item for Classroom AI tutor field study — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '41a5a235-b856-5f1f-b3df-2fabc9b39fd7'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Write IRB amendment',
  'Tracked work item for Classroom AI tutor field study — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4c0e5845-16ac-52e3-a68a-286608dfef62'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Prepare figure panels',
  'Tracked work item for Classroom AI tutor field study — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd902cf84-004a-5724-9c25-e4fc6c2ba064'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Classroom AI tutor field study — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4491c639-ae18-56af-80d9-c0abc6cdec46'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Classroom AI tutor field study — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '64e30cc8-2ff5-5f43-ac32-d5aa930d25d3'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Classroom AI tutor field study — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a37ea7a4-827c-5811-855d-d5864c69c1c6'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  true,
  'planning',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd6d31f8e-3020-549d-b33d-721e76b1fdcb'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid,
  'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid,
  true,
  'analysis',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f8224249-3333-504b-874f-8b40285c7727'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid,
  '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid,
  true,
  'writing',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd7716a91-325e-5201-b4fa-f4989724a59b'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid,
  'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid,
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
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Privacy-preserving wearable analytics — cohort 4',
  'Privacy-preserving wearable analytics is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around wearables, privacy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  ARRAY['wearables','privacy']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Princeton, NJ',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c4ff7502-4f5e-5fd4-9309-bb532fbf4013'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  'owner',
  'active',
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b4cf7baf-32df-5190-852c-39577d365f34'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  'editor',
  'active',
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ad015257-0642-52b6-b7e2-98adaaaa4d76'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid,
  'viewer',
  'active',
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '574fdcc1-1f86-50e0-aa65-0551da4ebffe'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid,
  'viewer',
  'active',
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dc0aa14d-b11a-523f-afc8-7b30f0933f3a'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid,
  'viewer',
  'active',
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '97fa498f-900c-5065-880a-2274452472dc'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Draft related work section',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '87eb2cc8-2285-5090-8ea8-aab126e2e341'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Clean and version dataset',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9069edba-eb33-5f5f-9032-2e03a288a74c'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Run baseline model',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4742a2a0-6ceb-53df-9d7c-59250073b86e'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Write IRB amendment',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b4605f53-4594-5db3-ab59-c5730462a41e'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Prepare figure panels',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '55f38640-4185-575e-9ddf-305559218673'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b7973dae-8af5-572f-99b5-599f825b34ac'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a6ba0226-23b0-5911-a455-4f675780f9d2'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f66cd75e-d157-5925-9311-2a6b8c193cd0'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  true,
  'planning',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8069c1b4-436c-5035-aa7a-befb02d6c4e8'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  true,
  'analysis',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '25f69fa3-17df-58e9-aed7-27edc5a62384'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid,
  'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid,
  true,
  'writing',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6b081498-9eb2-5f14-aef1-64d2d6986f4c'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid,
  'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid,
  true,
  'ops',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;