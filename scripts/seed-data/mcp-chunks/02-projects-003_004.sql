INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Vascularized cardiac organoids — cohort 4',
  'Vascularized cardiac organoids is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'remote',
  'short_term',
  4,
  true,
  'Atlanta, GA',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e92fca73-abc4-5201-bd30-cb46c9e9e4e6'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'owner',
  'active',
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1df5075d-4cc6-5040-9b30-f75f2763a4a5'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid,
  'editor',
  'active',
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2cc138f5-b66c-50be-b9d7-6442c5321351'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid,
  'viewer',
  'active',
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '035f412d-2ee3-57b3-adf5-77fd9bb02c68'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid,
  'viewer',
  'active',
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cff989b8-22ea-5be4-8b68-fdd709e8c58c'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Draft related work section',
  'Tracked work item for Vascularized cardiac organoids — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '42c566b5-d033-523b-be8e-534f34a3c2e4'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Clean and version dataset',
  'Tracked work item for Vascularized cardiac organoids — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e3bc7f90-9dbb-5474-9d01-0f49a7f8ef96'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Run baseline model',
  'Tracked work item for Vascularized cardiac organoids — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9ebb47e4-4cd3-5787-b251-605781e2cc10'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Write IRB amendment',
  'Tracked work item for Vascularized cardiac organoids — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9d190289-acf8-5917-9ec2-0e423d5e136b'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Prepare figure panels',
  'Tracked work item for Vascularized cardiac organoids — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '75ea5a7d-726a-5185-9213-6a0230d9eea9'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Vascularized cardiac organoids — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '11f008e8-d7e4-561e-88de-33735f823f80'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8a732a6c-f843-5b97-9a1f-179caf7530f9'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6fbff551-5f63-5636-9dcb-f3ec5f91efcd'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e4d46383-f3e3-542c-b0b8-aca79e71c415'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid,
  'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fcfac40c-d507-565f-9f57-4651a39616cd'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid,
  '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a3d32d0a-e130-56d2-8f2f-c90d277e1b0d'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid,
  '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid,
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
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Labor market effects of credentialing — cohort 4',
  'Labor market effects of credentialing is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Ann Arbor, MI',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2734a69b-35cb-51a7-a086-64cd5866a339'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  'owner',
  'active',
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b972e6c0-bf91-5fab-a369-d217c8e6507a'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid,
  'editor',
  'active',
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '51c886de-3266-528f-bc8d-f0dc2e68cb55'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid,
  'viewer',
  'active',
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '457a333e-243b-592f-9281-8ce5c6404ea5'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid,
  'viewer',
  'active',
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f8440681-7c19-5b55-92d2-bf16dd7860d1'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid,
  'viewer',
  'active',
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fc05402f-b51d-56a9-a9ab-230614bf7f0e'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Draft related work section',
  'Tracked work item for Labor market effects of credentialing — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd24ed907-c140-5f01-9759-b141d8e647ba'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Clean and version dataset',
  'Tracked work item for Labor market effects of credentialing — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '433ad69b-4973-5db5-bf62-2d0b8e154f7b'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Run baseline model',
  'Tracked work item for Labor market effects of credentialing — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1dd5cb85-0150-51da-a391-619047de4d9b'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Write IRB amendment',
  'Tracked work item for Labor market effects of credentialing — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6eaa8bc2-50c8-5d86-855a-8b25f7345a3a'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Prepare figure panels',
  'Tracked work item for Labor market effects of credentialing — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0d135ad1-e1c2-5ec9-af4f-452bc14d500c'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Labor market effects of credentialing — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4fb8d56d-0dfd-5946-b8ba-9b438f931a1f'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '25c26b92-1200-5b35-8242-52b93ceb750a'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ff62f978-85ef-580b-9999-42f1570af78c'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8ecc3744-7314-5d43-b52b-85b9c79afa8c'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid,
  '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c408b6e4-2220-5d6f-bc58-3ce205897097'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid,
  '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'def4ce44-2b5e-589f-b718-21c64fc5ace9'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid,
  '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid,
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
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Low-cost water contaminant sensing — cohort 4',
  'Low-cost water contaminant sensing is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'local',
  'long_term',
  6,
  true,
  'Los Angeles, CA',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6a0cf601-f4f8-56ed-9158-88609f0303ff'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  'owner',
  'active',
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1e10e76b-23cd-5852-8f48-37fe66adc84f'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  '3d805200-315a-549f-9527-ae5519886cbb'::uuid,
  'editor',
  'active',
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '693e5c8b-0be0-544c-8e72-87f169bfe345'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid,
  'viewer',
  'active',
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd5edf8ac-8906-5b5e-b015-9105c2c36cca'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid,
  'viewer',
  'active',
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '41dd2cda-7e7f-5fa3-9699-bd1eac58da0e'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid,
  'viewer',
  'active',
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2f05014b-eac3-5bc3-95a8-3ecb8cf93949'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid,
  'viewer',
  'active',
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2e66d970-a7db-59a5-bd57-ca70d7580e7b'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Draft related work section',
  'Tracked work item for Low-cost water contaminant sensing — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'af5f251f-6db8-50bc-9bb7-d41221483dac'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Clean and version dataset',
  'Tracked work item for Low-cost water contaminant sensing — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '3d805200-315a-549f-9527-ae5519886cbb'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a343dff0-3bda-51e7-946a-7acd3747be90'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Run baseline model',
  'Tracked work item for Low-cost water contaminant sensing — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fbc6d699-3840-5d50-b43d-95e78a7330cd'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Write IRB amendment',
  'Tracked work item for Low-cost water contaminant sensing — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9c287198-c96e-5e50-b23b-bc71cb9e8f4e'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Prepare figure panels',
  'Tracked work item for Low-cost water contaminant sensing — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '81231cb4-65ff-5033-a195-a5e813eacbe1'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Low-cost water contaminant sensing — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cc8b06e9-db37-5a41-a659-900ca204a4b7'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd9ac81f6-8bfa-5afc-ab1c-498bd67cf801'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '3d805200-315a-549f-9527-ae5519886cbb'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b0f68dbb-e4a2-577f-b238-bfa7480f230a'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '43e52f69-529f-592b-b298-bd7a12424554'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '3d805200-315a-549f-9527-ae5519886cbb'::uuid,
  '3d805200-315a-549f-9527-ae5519886cbb'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8a1316c9-7c1b-5e05-8f14-7f772bc60dc8'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid,
  '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '88e4d116-fa9b-5073-a07a-fafb31bdb118'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid,
  '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid,
  true,
  'ops',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;