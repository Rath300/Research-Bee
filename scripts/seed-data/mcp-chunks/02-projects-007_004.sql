INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Vascularized cardiac organoids — cohort 8',
  'Vascularized cardiac organoids is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'local',
  'short_term',
  12,
  true,
  'Zurich, CH',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b1cd76aa-0f41-52bf-8b49-a60be1a7010c'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  'owner',
  'active',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '153bc5f1-9c9e-56c7-93aa-2a7013cbea62'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  'editor',
  'active',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'df33c30d-8ef4-5076-bb3a-4ac8907aa551'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  'viewer',
  'active',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '46644222-7788-58e7-b530-5a3e7cd82d38'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  'viewer',
  'active',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7655d592-2eac-5bf9-8cf9-eb22e74e5594'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  'viewer',
  'active',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '13ac9e64-d4a3-5db0-aed8-44b1870062af'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  'viewer',
  'active',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd9842ed5-9f18-5e09-9a05-c88cbc710a88'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Vascularized cardiac organoids — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '249fdaf0-d70a-5916-a404-f29047a60d2a'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Vascularized cardiac organoids — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b5a86ed8-97e2-5cef-b21e-c7e51cf95671'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Submit internal review',
  'Tracked work item for Vascularized cardiac organoids — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '100fd28c-b937-518b-9a4c-aebc6696c230'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Update project README',
  'Tracked work item for Vascularized cardiac organoids — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cc478cc9-7101-5d87-af81-3a68f903f430'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Draft related work section',
  'Tracked work item for Vascularized cardiac organoids — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6428e75f-a120-5aac-8bb4-58359b9dc473'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Clean and version dataset',
  'Tracked work item for Vascularized cardiac organoids — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3392bfdc-e0c5-518b-a298-74713d22f405'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b851b0f6-e257-5ea1-98a2-d9a7d6e21dce'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6956b795-a252-5320-9300-7319ef2fbb7f'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '83966c5d-0251-51cb-a035-9b80262ddbb5'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'edbf9faa-eb3b-5434-9d93-4bbf55adb855'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c81dae6e-30d0-5b72-857c-f34123c01569'::uuid,
  '4fc0f7b3-37f1-55e4-a0d6-4c52c771c99f'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
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
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Labor market effects of credentialing — cohort 8',
  'Labor market effects of credentialing is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'London, UK',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '78eddc7a-4580-55bf-96be-5c03af736416'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  'owner',
  'active',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '819ca140-89b9-5165-80b1-8b397d43324a'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  'editor',
  'active',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '07903239-e5f0-5d79-8cfa-28eafddcdcb0'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  'viewer',
  'active',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '886f6cbf-c385-59f5-a213-190780910814'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  'viewer',
  'active',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '863efad9-1eb6-5639-8b55-7ea89c74e78e'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'viewer',
  'active',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3ff861e8-99df-5d2c-9248-722f2dd887cb'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  'viewer',
  'active',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b5427f61-d33c-5b3d-9cb8-07456304b5f4'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  'viewer',
  'active',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5a993cff-2b70-5906-8b18-915511a36212'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Labor market effects of credentialing — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '989cd206-b81c-5e5f-b843-daa16aae365d'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Labor market effects of credentialing — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '02c3d4c5-3780-5540-82da-45bc3c52d094'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Submit internal review',
  'Tracked work item for Labor market effects of credentialing — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5fbe81ec-656e-570f-a833-f878d5837cca'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Update project README',
  'Tracked work item for Labor market effects of credentialing — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9adc07e6-7fda-5fe0-b28b-46de1c2a23ab'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Draft related work section',
  'Tracked work item for Labor market effects of credentialing — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f877e2e0-6aa8-5b1e-a59d-fa648288dbbd'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Clean and version dataset',
  'Tracked work item for Labor market effects of credentialing — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1af9a75b-24da-5256-b3e0-8e7f5eeccf36'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bf022c0e-c351-502d-a375-48c911fb2fc9'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ac8be80b-3cce-56e8-927e-1f2af3aa24c0'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'bd65e6df-76e6-5347-b7c8-7d92127fc091'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9b96ae65-418e-5c77-85f0-38414ed8e220'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4e948d00-3e99-509d-abf5-ea93048b2393'::uuid,
  'e04882b0-cac3-5d51-9575-8e5efe3b2a35'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
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
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Low-cost water contaminant sensing — cohort 8',
  'Low-cost water contaminant sensing is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Seattle, WA',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '75e88c3e-2d5c-5718-9d08-93a35530806e'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  'owner',
  'active',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '81741ad1-79a2-59fd-a04a-93cbc37fb42c'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'editor',
  'active',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f85a32e8-e231-5113-8ea5-3d08e9b7d69d'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'viewer',
  'active',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'edaebaf1-218d-5e71-978f-0aa043e45691'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  'viewer',
  'active',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '451afcfc-66b9-525b-9065-d35dd9d9281e'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  'viewer',
  'active',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b43f2ec6-d846-51b5-bcf6-770704a20f0b'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  'viewer',
  'active',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2f2c99fd-d239-514e-b86b-7475bf9bf10f'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  'viewer',
  'active',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1fbb719d-1235-58c5-a7f3-8656b04f30ce'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  'viewer',
  'active',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a1ca41e4-1fcc-5584-8ce0-029af9d359d8'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Low-cost water contaminant sensing — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e93b3ecb-a23b-50bc-a453-2049bfb5a688'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Low-cost water contaminant sensing — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '475f8303-c0d4-5f8f-adbe-3072b3ced2b3'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Submit internal review',
  'Tracked work item for Low-cost water contaminant sensing — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd3086138-405c-59ab-962e-863c8211a2c4'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Update project README',
  'Tracked work item for Low-cost water contaminant sensing — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '09e5aa4c-b3c5-54e4-91c5-b0372a1f9210'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Draft related work section',
  'Tracked work item for Low-cost water contaminant sensing — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1c6aaa87-90b7-520a-a498-dbd31e4600c5'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Clean and version dataset',
  'Tracked work item for Low-cost water contaminant sensing — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'da1c66af-dec3-5f67-b22e-2959150a915b'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3f4dff7e-6f96-591f-a309-3f7c55d30919'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '046c23fe-0773-5f59-b8c2-0afacccfb179'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '74d3894b-818d-5791-b377-c1da903313e1'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '49c9fc1a-e9aa-55b2-9e51-7c508c1bb1e5'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'aae16104-cfc0-5d84-8c45-4a0a1a8ca928'::uuid,
  'f487b60e-93a9-5c06-bd0a-30261755d016'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  true,
  'ops',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;