INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Classroom AI tutor field study — cohort 1',
  'Classroom AI tutor field study is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around edtech, RCT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  ARRAY['edtech','RCT']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'remote',
  'long_term',
  10,
  true,
  'Oxford, UK',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'febfaeb1-3e84-5619-99da-9209ce754dea'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'owner',
  'active',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5332bc23-c528-5b76-ae33-bb328a82a70a'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  'editor',
  'active',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fc5fc4ce-1767-5a76-a272-44fae5fc53f3'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  'viewer',
  'active',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4fbcb366-be29-5be1-ac5c-39016e7fff75'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  'viewer',
  'active',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '14a96dac-b8f4-56f5-9adc-fdb14a728d23'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Draft related work section',
  'Tracked work item for Classroom AI tutor field study — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f9a8afaa-a7cb-517b-9891-a6b44a794849'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Clean and version dataset',
  'Tracked work item for Classroom AI tutor field study — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c73325a1-f21a-5e75-9e26-fbc6c63b4461'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Run baseline model',
  'Tracked work item for Classroom AI tutor field study — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '694bec12-d3c4-5868-8b42-9d04d7c9b015'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Write IRB amendment',
  'Tracked work item for Classroom AI tutor field study — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ae77845d-edb4-5ef9-b437-805579673cbd'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Prepare figure panels',
  'Tracked work item for Classroom AI tutor field study — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c49bd5b0-4941-5e8a-ac9e-ddee08b3a110'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Classroom AI tutor field study — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cbd6fc43-5f7d-54cd-a1e7-209857fa3f12'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Classroom AI tutor field study — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6955ee89-cfd2-58f1-9eed-02839daf809e'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Classroom AI tutor field study — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6a5fd643-acda-5b73-9e6a-7f91091168cd'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  true,
  'planning',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '15d12724-dcce-5e92-b292-5c83c2a85fe8'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  true,
  'analysis',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd18605f6-1389-5129-af1b-00463d8ab5af'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  true,
  'writing',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd4632762-aab9-5e55-8faa-4d4a74c5c3fe'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
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
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Privacy-preserving wearable analytics — cohort 1',
  'Privacy-preserving wearable analytics is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around wearables, privacy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  ARRAY['wearables','privacy']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Singapore',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3acb3139-e84e-5f63-bb2a-79a1cfebfca4'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  'owner',
  'active',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2efa7f57-7b32-5281-b9c7-a4e6aea272fb'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  'editor',
  'active',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1219f745-e5d5-5d82-b70d-fe2ec5361cbd'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'viewer',
  'active',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '164c4b56-da54-5d03-ac61-68da49b9e939'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  'viewer',
  'active',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e4bcfa39-f67b-57ba-9adb-a2ec9d6d8f15'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  'viewer',
  'active',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '58272668-98ab-5940-a92d-ef1da693232e'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Draft related work section',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b1aa6b68-010d-523c-935a-d9741e4cf329'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Clean and version dataset',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bffc5286-5f5a-5c9a-bc09-47c8f2d1a000'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Run baseline model',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0bd845a1-8c75-5330-b3db-e68afdd1fb3c'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Write IRB amendment',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1164a723-ba5b-5d45-9d1c-09d7d96a61df'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Prepare figure panels',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fbca297b-a06f-51ea-a1c4-2916a673f0a4'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e4b9eafd-2d08-55b2-ac01-551712048a0a'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '853ce50d-92bd-5664-9cdd-9a594e52b78b'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '03452cb0-c148-5b65-837c-d19017c1c2b0'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  true,
  'planning',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a52f26d9-b446-5cca-8512-f3394cbd5df9'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  true,
  'analysis',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '52521c86-53c7-57e4-909e-b04a34fed992'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  true,
  'writing',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7631d12b-6f5b-5486-9516-c9275d024911'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  true,
  'ops',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;