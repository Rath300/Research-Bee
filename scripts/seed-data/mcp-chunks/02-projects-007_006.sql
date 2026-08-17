INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Classroom AI tutor field study — cohort 8',
  'Classroom AI tutor field study is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around edtech, RCT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  ARRAY['edtech','RCT']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'local',
  'long_term',
  6,
  true,
  'Los Angeles, CA',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'db93d129-f74d-5d1d-b752-0b712257845a'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  'editor',
  'active',
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3aa0b09e-b6ef-563f-acb6-cdec2be78e9c'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  'editor',
  'active',
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fafc5eae-3072-5000-b2d6-0e220255e9df'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'viewer',
  'active',
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a3be0404-bab6-52bb-8384-8b7ede61ebd3'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'viewer',
  'active',
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '99c8f783-be4c-5f39-bd1a-67653f5715ab'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  'owner',
  'active',
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8b7b5445-d7f9-5e80-ac2c-5ecd15ca974f'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Classroom AI tutor field study — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '32c2d534-8a0a-5815-a07e-cb67242ce75a'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Classroom AI tutor field study — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3e516642-33b9-54d5-941d-13d7708d86cc'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Submit internal review',
  'Tracked work item for Classroom AI tutor field study — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '41801d36-aff0-5346-b3b5-9e9fee4b0268'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Update project README',
  'Tracked work item for Classroom AI tutor field study — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a2820851-49c2-5216-b4a5-4fcf31f9c2f4'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Draft related work section',
  'Tracked work item for Classroom AI tutor field study — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '49c332b5-6614-5d52-9ff9-70f93d9da47a'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Clean and version dataset',
  'Tracked work item for Classroom AI tutor field study — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '34372423-9abb-5f26-bec8-5a921926fda1'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Classroom AI tutor field study — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6090b765-73fa-5c79-8f87-8cbc07aac6f6'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Classroom AI tutor field study — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8164381d-b589-528f-8ff9-d9f44c39c7a3'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  true,
  'planning',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b895b401-500e-5f8d-bcd6-c85226975080'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  true,
  'analysis',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5045a183-28bd-54f6-bd94-7171172ad019'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  true,
  'writing',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd7a8d07c-5ea8-5975-9ddf-2c17ee51305c'::uuid,
  '839b0923-301c-516f-9af0-416428a580bf'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
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
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Privacy-preserving wearable analytics — cohort 8',
  'Privacy-preserving wearable analytics is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around wearables, privacy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  ARRAY['wearables','privacy']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'remote',
  'long_term',
  7,
  true,
  'New York, NY',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9acccdea-053b-5d48-bb0a-b51f959f0aeb'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  'owner',
  'active',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b9ee22b6-c233-5245-b779-cc3afd7c435c'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  'editor',
  'active',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '881a02fa-1e4c-564e-b895-1cc55c19da48'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  'viewer',
  'active',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1cc9caf8-3ab2-5a24-b0f7-835c8908d500'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  'viewer',
  'active',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ff51d23f-95b6-53c6-a3f1-7b25b7aacb00'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  'viewer',
  'active',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bcf4046b-f4ac-54f8-a999-dc9f148b92e5'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  'viewer',
  'active',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e3122ce0-ae08-5430-b848-8f8ebc6eb32e'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid,
  'viewer',
  'active',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9a4dfa5d-7282-53d3-b55f-1632d98c463c'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '82b245f8-2688-5f47-9503-cf73f26c2504'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'afde7bb9-1a01-5b50-b3f8-7854af76b1fd'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Submit internal review',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9dd138ad-cee3-58cf-be1b-ece028167ccb'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Update project README',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'af0c0ed3-5a5d-5a98-ab1b-58a67d2faed7'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Draft related work section',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b4fe7f83-351f-5259-a6c3-0f1059df60da'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Clean and version dataset',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b8cd0c12-1770-52c5-a096-c8f639c9f6af'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0c8982b5-ff72-5172-ad18-526fc8a54795'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e2f224b9-18a5-54a5-aa8b-95a54bf36e54'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  true,
  'planning',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fda28abc-8846-5da6-83f2-f10a06b2d85e'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  true,
  'analysis',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1bedff3f-499e-5618-a646-0355ffb07b8d'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  true,
  'writing',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'dc71873e-410b-5b40-b861-b170e2263ecd'::uuid,
  '5fa51902-18b7-5d71-96d9-1abc03d6fb82'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  true,
  'ops',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;