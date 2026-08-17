INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Near-term quantum error mitigation — cohort 6',
  'Near-term quantum error mitigation is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Palo Alto, CA',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd9efc384-12f2-5aba-bf32-9d4ea995a430'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  'owner',
  'active',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b7e564ee-9e86-5fef-ac61-0156188830ee'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid,
  'editor',
  'active',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '72621d52-d345-533e-81cb-af785ae0e249'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  'viewer',
  'active',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6a6f237b-52f8-5e8c-8ddd-5ade2e4f85f9'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid,
  'viewer',
  'active',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9bbdee19-ef26-544e-b7f9-1c3093b7f38a'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid,
  'viewer',
  'active',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2abc6f2b-8ced-5e4a-80c2-958312f61fc1'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid,
  'viewer',
  'active',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9d61746c-9578-5d96-be8c-2d4db8f2e24c'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  '0b206d9d-85dd-5e6b-b77d-5850790c8b18'::uuid,
  'viewer',
  'active',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '21180799-3774-5f72-b3de-82f92ea4b0dc'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid,
  'viewer',
  'active',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '06eca318-2711-5b5c-86de-bc5f1bdd68c5'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Prepare figure panels',
  'Tracked work item for Near-term quantum error mitigation — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'faf4ecf8-2272-543e-8a53-f102323de958'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Near-term quantum error mitigation — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '01c36db2-7ae7-545a-a569-49c59bdb7377'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Near-term quantum error mitigation — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ca4ecaef-5a3e-56dd-9ece-2aaad05c97d7'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Near-term quantum error mitigation — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '910e9827-7e2b-51a5-92af-fef619753f9c'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Near-term quantum error mitigation — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1d49374c-624a-5c1f-a3a7-12841b2219e6'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Near-term quantum error mitigation — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '015434e8-e697-593f-a581-158c81568df5'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '0b206d9d-85dd-5e6b-b77d-5850790c8b18'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '47124acc-7785-5f12-8beb-e6071bec77dd'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Update project README (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a9e4c8e4-d460-538a-b06a-66598e57c1aa'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c70eccde-c76a-59e9-9ea8-17968b94bca6'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid,
  '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0aac91ad-8201-5395-8c8f-f6e2babd62c3'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f8e58b88-1612-5727-99a1-33abc0fe1cf5'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid,
  'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid,
  true,
  'ops',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Robust evaluation for clinical LLMs — cohort 6',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'local',
  'long_term',
  15,
  true,
  'Berkeley, CA',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c0c2f6db-e849-5cd7-916d-43cd37a23160'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  'owner',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1501e4c5-2de6-5bb2-8e57-16b737cc2744'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid,
  'editor',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '523bc3bd-036c-59fe-a401-d377a5503082'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid,
  'viewer',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0e54bee6-627f-5ed7-a70e-ce1bea8bf6f7'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
  'viewer',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f29d612a-f6dc-57fd-9ed8-1f89ab8cfe87'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid,
  'viewer',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '831c9ed9-07bf-5c1a-b782-efe005ebe49f'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  '8c8802de-eb32-550b-88b8-412797aef970'::uuid,
  'viewer',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cf271531-fbce-56fe-be33-87dbdcf3ab53'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  '770fdfc7-b37c-557f-aa86-9108d6059d54'::uuid,
  'viewer',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c97f6860-f509-58e6-8a98-ef556b8c795d'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'e57c50be-fd3b-5bcb-a5e2-fc50014c7bf9'::uuid,
  'viewer',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '30290bfa-5bb3-5e87-84cd-2cd0125e8a8d'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid,
  'viewer',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2866e882-326f-5a7d-96f8-6ee17eee4ae7'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Prepare figure panels',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bd921e0b-1ac0-5e2c-8bfd-7baae55f1abe'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '184febb2-97be-5bb0-ab75-4ef124728d7b'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1b59f3fe-b463-5d97-9006-afc194c489d4'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2a76bcfe-031a-5e3a-9a4e-051abb5c2213'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '05ed8927-d621-5e4f-853c-7b2ae9e0ea30'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '8c8802de-eb32-550b-88b8-412797aef970'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '20a301d5-28a3-5851-8242-40fbc24eb18d'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '770fdfc7-b37c-557f-aa86-9108d6059d54'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b8ecd00f-c1f1-531c-8836-660e52f8928a'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Update project README (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e57c50be-fd3b-5bcb-a5e2-fc50014c7bf9'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9e5e09dc-16c5-509c-b081-d0f5ee71e56b'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8fda3d73-e8a4-5938-b7c2-1ead621a3f3e'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid,
  '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '75e3443b-de51-5cd2-8a6a-38e9699249de'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid,
  'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '798b7854-df35-5819-828f-0d52c5a7f6d4'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
  true,
  'ops',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 6',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'remote',
  'short_term',
  4,
  true,
  'Boston, MA',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f6836f3e-6705-533c-b59d-1225f3539a39'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  'owner',
  'active',
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1329556b-b308-52a8-bd80-cc81408b2bd5'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  'editor',
  'active',
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '244c06df-85e6-5a18-961c-32dc93f119cc'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid,
  'viewer',
  'active',
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dc78707e-a6e2-5bcc-8cbb-4d81a9a544a3'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  'viewer',
  'active',
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '31b24be4-ba79-52e9-8bac-7f18663bd539'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Prepare figure panels',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c481706e-0d9c-5144-94cc-4a1cd631d0aa'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '54d9fb68-e058-576c-a489-03957ce95ba1'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '376e4f43-a237-5ac5-a035-3418ce683faf'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8bb8be36-abf1-5a16-8b75-2416f911fa96'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '94390375-a10a-53e3-b166-c611cc251819'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ad130623-dd57-5721-8829-1f0b882266c7'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b68a30c2-a7e4-55a8-9c2f-f1660d955580'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Update project README (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4bc3b74f-e6cd-5c29-b717-d373c07111d5'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b98f4f58-4944-5fe8-857e-fbd12a2fcc47'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cb743569-933e-5df1-83bf-1a59e0a6dc9c'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid,
  'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5b38f483-3739-587f-a3ff-8d35f412ec59'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  true,
  'ops',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;