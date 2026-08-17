INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Near-term quantum error mitigation — cohort 1',
  'Near-term quantum error mitigation is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'remote',
  'long_term',
  10,
  true,
  'London, UK',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ff12d659-c96b-502e-965e-2006f33f3fac'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'owner',
  'active',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8f1c56ab-9331-51b6-9552-cf42bc088972'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'editor',
  'active',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd2ea04d2-7b1f-5e5f-b224-e77a212db820'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  'viewer',
  'active',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '41a0914b-430a-5307-aa9a-465c70e37bfb'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'viewer',
  'active',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd43bba77-a8b8-53f8-9144-926fbe0b1dc8'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Draft related work section',
  'Tracked work item for Near-term quantum error mitigation — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '553c38e9-1f4f-5561-9d74-643bdca60615'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Clean and version dataset',
  'Tracked work item for Near-term quantum error mitigation — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9a6646c0-bec6-5bf1-99d1-de9bb889c649'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Run baseline model',
  'Tracked work item for Near-term quantum error mitigation — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ff1fc44b-c740-5885-8c71-2ff88001cc0f'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Write IRB amendment',
  'Tracked work item for Near-term quantum error mitigation — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '48438998-b1c1-5e61-94e0-52f8a0bbbdbf'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Prepare figure panels',
  'Tracked work item for Near-term quantum error mitigation — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7e02bed5-d34d-584d-a84c-1b26a7648a11'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Near-term quantum error mitigation — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '13536a5c-3b82-5381-a7c1-cdd23d49df59'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9037fc83-9dcd-5486-aaea-1339bf54c348'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c0c4b65c-3771-5081-9c64-ff29205e442b'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e76d7e03-a2d2-5527-b22f-edcaed8d78c5'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '83a019cd-547b-5618-a067-96bc966bcc9b'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '78009f38-7e78-5ea4-b6ab-9c6939de859f'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
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
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Robust evaluation for clinical LLMs — cohort 1',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Seattle, WA',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ede50f62-8b7b-5c69-b718-ecf9b2220b15'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  'owner',
  'active',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd1a6b7c1-e97c-59b6-9e4b-452e04caf98e'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  'editor',
  'active',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4ed2dff8-2f01-5534-ad57-7ab3cbc26bf7'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  'viewer',
  'active',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a0cdc274-18bc-5581-99d7-2f6708a2e623'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'viewer',
  'active',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f30f4962-69db-584d-bc28-99c2ffe97b5c'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  'viewer',
  'active',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6303af87-6b27-59b9-8d26-0d20031783fb'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Draft related work section',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7d601ea8-e99d-5516-bbc2-58c5c8ee4507'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Clean and version dataset',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7ace70b4-49dd-5bc7-bcbb-51fa06966409'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Run baseline model',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ad66d812-1ed0-58ac-89d3-db54552bf057'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Write IRB amendment',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5a2bc1cb-8434-5795-9314-c37e9760fad8'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Prepare figure panels',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b1e2d1b9-8211-5a88-91b6-e4f629bb3103'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '870ed4f5-304e-5ede-8946-d179ac5e4f1f'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '731f0d03-7467-521b-bf28-948e46400430'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b7f5ac10-ad32-54be-89ba-901735b973e6'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0ae12443-cf8c-5cb2-b792-f5f3590c17f3'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8e5516ff-39a1-538f-8093-71dfdbb2471c'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a94cebd2-cf70-5f74-9fc5-16568688b670'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
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
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 1',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'local',
  'short_term',
  12,
  true,
  'Pittsburgh, PA',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2a479ef8-0489-5caa-9e9f-c9608e37cb09'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  'owner',
  'active',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '17ce0263-7ed4-5cb1-8200-2febab0dcfd9'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  'editor',
  'active',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '669c982f-af0d-56e7-9d18-e393fd17d5af'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'viewer',
  'active',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '68cfeb8c-7927-5457-9027-552531063630'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  'viewer',
  'active',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0e5ea60c-df2b-59ce-9549-0d9478f79490'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'viewer',
  'active',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b9d490b5-2e85-5d07-a766-378103dd0b1b'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  'viewer',
  'active',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '066ffce9-a4d3-5804-aadc-9de6b52d6dff'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Draft related work section',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8b8a1dde-0391-53f5-baa2-37bf9c86e26a'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Clean and version dataset',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f1b8e529-3b19-5a31-aa83-39f68121e5f9'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Run baseline model',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '83b906cd-cefb-5b0e-ba69-9c241560c1ea'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Write IRB amendment',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7d4c494b-33d3-593c-a483-a448cf7c98d3'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Prepare figure panels',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ac1d11ad-7c1b-5249-82a3-f62969a5b982'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2725fe0b-28a3-5ab0-9e0b-92cc63a7f045'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6dd5fe2b-05bb-526f-850e-29b40b7c99f6'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0a8d4587-be28-51bf-a26a-274257a6036d'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '72237e19-eb7b-5f6d-8887-349fe457670d'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c72abb29-c2d6-5505-a7c2-176a5824bdc6'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a6ccac8a-3e40-5fb2-965d-2229ddb0275b'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  true,
  'ops',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;