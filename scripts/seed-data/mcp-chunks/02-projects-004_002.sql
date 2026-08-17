INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Near-term quantum error mitigation — cohort 5',
  'Near-term quantum error mitigation is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'local',
  'long_term',
  6,
  true,
  'Berkeley, CA',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ca2a6376-6583-564d-855c-e02674ceb1c6'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  'owner',
  'active',
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1dfd2154-31c3-5335-a004-004e99c1e845'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  '57922f55-9cea-510b-8329-299c51dd6d47'::uuid,
  'editor',
  'active',
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a3d9abc4-9255-5cc3-a3dc-532954c23064'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid,
  'viewer',
  'active',
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8708a4d4-9a1d-58aa-b927-f9d2396a83f8'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid,
  'viewer',
  'active',
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '903711ab-7af0-52c0-afee-f9168d92fbff'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'a169404e-faf7-5071-b788-07d72b750c2c'::uuid,
  'viewer',
  'active',
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '49d9dee8-cbfa-5d13-a38a-a9877d017878'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'a446d3e3-844d-589c-9f96-50f5f4eaee5b'::uuid,
  'viewer',
  'active',
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9a6b0686-9910-53a5-9867-a9139dfd5438'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Near-term quantum error mitigation — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '652dcda1-0602-55fc-9405-454d2d6803d5'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Near-term quantum error mitigation — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '57922f55-9cea-510b-8329-299c51dd6d47'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5cfeb7a6-ba51-5087-aa04-57f2015f9dc7'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Submit internal review',
  'Tracked work item for Near-term quantum error mitigation — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'aee72ecf-751e-55d9-aa70-7aff43ba4afd'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Update project README',
  'Tracked work item for Near-term quantum error mitigation — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f474397c-3434-515c-a734-73b201ee9249'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Draft related work section',
  'Tracked work item for Near-term quantum error mitigation — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'a169404e-faf7-5071-b788-07d72b750c2c'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9cde124e-5cc6-5bdc-89c1-7453e349fe2d'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Clean and version dataset',
  'Tracked work item for Near-term quantum error mitigation — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'a446d3e3-844d-589c-9f96-50f5f4eaee5b'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ee1c0d00-9c66-574f-9dda-903fbf07eedc'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fc865241-5c7b-5cf0-8f8f-bdca7bc00ddf'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '57922f55-9cea-510b-8329-299c51dd6d47'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ec8ad8b0-a753-5e49-abf4-b2316f6c6fcf'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '447f6adb-761f-55d7-baf2-0647ece91ab7'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '57922f55-9cea-510b-8329-299c51dd6d47'::uuid,
  '57922f55-9cea-510b-8329-299c51dd6d47'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '637442d3-d6e5-5156-bbee-c2cf6fb05241'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid,
  'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '29a00caa-9b2c-5dde-bde8-3bffae10a5d3'::uuid,
  'f46e9852-6d7b-55cb-af82-ea2e48d1ec1f'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid,
  '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid,
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
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Robust evaluation for clinical LLMs — cohort 5',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Boston, MA',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4c04e924-6bf9-5263-90cc-29e0ca7dbf5d'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'owner',
  'active',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1ada0de3-48d3-5caa-876b-fd78ed1071f1'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  '49fbee97-9df9-5705-9855-5aac175ded93'::uuid,
  'editor',
  'active',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'df98e9dc-99bb-5160-bcac-a1044addb993'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid,
  'viewer',
  'active',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f559edfb-325f-523a-8b9b-24a3b2ae89ec'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid,
  'viewer',
  'active',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '16a9a324-93d8-5e61-869f-c4884dc2d07a'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  '27c33522-5956-5737-a7aa-a471b0013983'::uuid,
  'viewer',
  'active',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6db3e4d1-fddb-504e-84a8-b9699d7d3f4e'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid,
  'viewer',
  'active',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '24b165fc-5742-5ef9-b768-fba8eba9dd65'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'dcbc3732-b957-594c-aa65-a88d71f238c4'::uuid,
  'viewer',
  'active',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dfb2da48-e549-5bf7-bfa2-68820a9502a3'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7064de22-2a5b-5363-907f-3c43b09e21c9'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '49fbee97-9df9-5705-9855-5aac175ded93'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '61312b6c-78ba-5f27-a5d0-7d394b1dac44'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Submit internal review',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4732982c-806a-5f46-94ce-c779dd27c292'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Update project README',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fa21179c-fb26-5f5d-9e42-a054137cc631'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Draft related work section',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '27c33522-5956-5737-a7aa-a471b0013983'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f677b2da-ac8b-5b06-880e-87a30fe9a294'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Clean and version dataset',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3c138566-ef11-5f62-af16-9b48d51759e3'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'dcbc3732-b957-594c-aa65-a88d71f238c4'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '626ac942-15e7-5d60-b9e2-97b482f1df85'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c0d70108-c125-5d69-8695-f31eb3b06ad5'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6e9a6db3-9bf3-58d5-8c27-527206770319'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '49fbee97-9df9-5705-9855-5aac175ded93'::uuid,
  '49fbee97-9df9-5705-9855-5aac175ded93'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '51d60a61-af4a-5956-9eb0-58cd5030287a'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid,
  'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '20b14abb-49e4-57b6-9a8d-3598ac158ad1'::uuid,
  'e06427a5-1b51-5ed3-a977-4b38bbd729a8'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid,
  '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid,
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
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 5',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Toronto, ON',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '180694aa-5ccb-5f71-9274-5ca57e92f647'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  'owner',
  'active',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1418848f-17dc-522d-b166-592d5556c0b7'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid,
  'editor',
  'active',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0c157439-da53-556c-b2b3-a89347f1610a'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid,
  'viewer',
  'active',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f682970c-cb31-5481-9cb9-ed71f55a676c'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid,
  'viewer',
  'active',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '419f4bab-649a-54ee-8b01-85f081e67341'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid,
  'viewer',
  'active',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd2b972fc-ef25-5784-ae36-b7167cca020e'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid,
  'viewer',
  'active',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '693228ee-3706-515d-9660-ee33022d079b'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid,
  'viewer',
  'active',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '276c8be6-8698-552a-8bd8-2c16373efcf0'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'bbd25235-3b2e-5db2-a0dd-8a7dddfac498'::uuid,
  'viewer',
  'active',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b34c06da-5e0b-5e64-b758-110640f2487e'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2b4ff0de-7cf9-5c82-99e7-e494a13022ba'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f950b0de-3acc-5bd5-a97b-826722f48c09'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Submit internal review',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2cd17b46-4ea9-5804-b269-2810a4604189'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Update project README',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd20c241f-ab72-5d5c-8044-6d8b049e9c1a'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Draft related work section',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1dd5c7ce-c586-5795-b43d-c7d2ad7b1c9f'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Clean and version dataset',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd0ff5a49-b8a2-5b12-8d9a-ca7206ff9ebb'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '834d4932-941e-546b-a438-0264dafb59aa'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'bbd25235-3b2e-5db2-a0dd-8a7dddfac498'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '71ea6b8b-e5f5-54fd-b10c-705a2cc5bf44'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '04d377e0-7f1d-51ad-85e0-6f870fe85ee8'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid,
  '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6864e0fa-4751-5b07-8bfc-6b741014e73f'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid,
  'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b180ff8c-f796-59e4-ad94-49e65825be9c'::uuid,
  '148f1e1d-a0df-5a2d-abd0-c62349e3651d'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid,
  '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid,
  true,
  'ops',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;