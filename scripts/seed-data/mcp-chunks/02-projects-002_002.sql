INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Near-term quantum error mitigation — cohort 3',
  'Near-term quantum error mitigation is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Toronto, ON',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7b97e502-6ff9-5038-9f39-b67cc7bd388a'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  'owner',
  'active',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '93ce64c2-158d-507a-9aea-4769cce09bb7'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid,
  'editor',
  'active',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '33082d2a-fb58-5847-bd14-b47ddaa17607'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  'viewer',
  'active',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9d0d86ab-cffc-5a13-8f52-08d6c84bed8d'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  'viewer',
  'active',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '75a77896-aa9c-5518-83c8-28b8df703b0c'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid,
  'viewer',
  'active',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1bfbfb01-c7ac-5414-9701-cd0475938b07'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  '857a3bf5-dbaf-5df7-98b0-5661480e2727'::uuid,
  'viewer',
  'active',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5fa34461-1918-59f7-a5e8-2cc29b21de45'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid,
  'viewer',
  'active',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e6194b8f-e0d3-532f-8fb5-e23e1832ca01'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid,
  'viewer',
  'active',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6a4e6183-ce24-5b39-bf59-a6436a9f0408'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Prepare figure panels',
  'Tracked work item for Near-term quantum error mitigation — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4204d4af-e456-541b-ae10-51ce42f0a688'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Near-term quantum error mitigation — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '53d11bfb-1351-5d30-81a4-212b206bf186'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Near-term quantum error mitigation — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6522079c-6c8d-590a-8219-8c5e1c08454f'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Near-term quantum error mitigation — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '26ca018d-1af3-5214-b179-efa32809afa0'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Near-term quantum error mitigation — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2eafe026-1b70-51c8-b93c-20b1b1b7d88d'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Near-term quantum error mitigation — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '857a3bf5-dbaf-5df7-98b0-5661480e2727'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0fcf97e4-6973-52fe-9f99-7bc05c091e3a'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '161cdf1d-96f8-5e78-be05-ca668373509c'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Update project README (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b965ad45-d29a-531d-a504-b65e9ed06b0c'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2f7a6914-66e4-54bf-b937-b7c1a71eace6'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid,
  'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '71b062df-dcf1-5c96-a4a2-6053f90a3f24'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cf3c690c-fee3-51d6-84b3-3227e254e13c'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
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
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Robust evaluation for clinical LLMs — cohort 3',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'local',
  'long_term',
  15,
  true,
  'Zurich, CH',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f564b9c4-26ee-5efb-866a-086bdbfe85c8'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  'owner',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '56747f47-b001-56d0-b184-9aecf2ef84c7'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid,
  'editor',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ce5a0128-e1d4-5107-a0e9-3375aa4b3a64'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid,
  'viewer',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e36257af-3902-5e48-b102-d987b419bf56'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  'viewer',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a5f38326-94ee-56ed-b81b-35e05e52b9b5'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid,
  'viewer',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ff0c0d01-9195-5e45-8e64-643d2007f68a'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid,
  'viewer',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ea2e9e81-42bf-55ac-8c04-52b4bcc95a86'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  '628a4781-3a09-5aca-bc6a-7ae2fc619371'::uuid,
  'viewer',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '98fe134a-7a43-5cb4-bd29-e77fbc375f4e'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid,
  'viewer',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '097289bb-8e1f-56f2-8843-9e67a6cb4e5d'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid,
  'viewer',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b019c099-23fd-5e3a-aa89-fa9e9b6aa913'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Prepare figure panels',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '166dc9e1-0963-52e2-a8aa-d3d749716baa'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dbe75fb2-564a-5866-b02b-05b9e5072d35'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '75dd9348-ae8a-5ca9-bd73-d71fa3163630'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1a43b16e-90e7-5973-9dcd-50779eb73625'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd61928e8-2610-52ad-b82f-81829d912713'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '503bef0b-34fd-5779-9609-0e09f2fc8944'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '628a4781-3a09-5aca-bc6a-7ae2fc619371'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '92e7b646-e30a-5e96-95d7-5573af52e36b'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Update project README (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f4fde6c1-f240-53de-93af-74886e4400e9'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd8099381-eabe-5d85-bf0a-41623f7e2177'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid,
  '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8e0c398a-92b5-5f8b-94fa-807feba7741d'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid,
  '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a6ee63a5-ae74-5024-b953-c201bfd62b49'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
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
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 3',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'remote',
  'short_term',
  4,
  true,
  'London, UK',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6fb80e8f-a3a5-584b-b0e8-f5406e14cb7f'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'owner',
  'active',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'aaee101d-f584-533f-ad10-c07281509716'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  'editor',
  'active',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '99823124-edb9-5d27-b6d0-c053178781da'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid,
  'viewer',
  'active',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b4d64292-b261-5d9e-8b3f-b20da6c0c3ac'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid,
  'viewer',
  'active',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '80e31ce1-2947-5f57-a1d9-03fbcc590103'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Prepare figure panels',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '55fbf32e-86dc-546a-a2a4-323b3f416c15'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b487cccf-27eb-5c86-b53b-c4606015330d'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5ce01082-4032-5d08-91aa-11d3a2085018'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0b3be600-f3e2-57e0-9075-fd01dbf343ef'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cd353840-e18b-534c-bc93-9cae14e35244'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '39864eb4-67bb-55a2-87a5-a7f99a2f884f'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9b5bb8c6-f20b-5d31-a483-46bd481e45ec'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Update project README (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '46d65e7e-644f-557e-9520-4b37f0408982'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ef9abf59-d887-5734-b9b7-a8b3db68ddee'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '950b16d8-9173-5308-9b02-7d949763c6a4'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid,
  'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd1d31f8a-2555-5a85-8091-9833fac2bb03'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid,
  '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid,
  true,
  'ops',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;