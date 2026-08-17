INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Classroom AI tutor field study — cohort 2',
  'Classroom AI tutor field study is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around edtech, RCT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  ARRAY['edtech','RCT']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'local',
  'long_term',
  6,
  true,
  'Pasadena, CA',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a83a636d-444f-53a9-a8db-5424c53ad9a1'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  'owner',
  'active',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6a7d830a-d3ca-5eca-901f-ca83ece52730'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  'editor',
  'active',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '07c722a8-5823-5c0c-878c-92bfeee78b19'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid,
  'viewer',
  'active',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '86536ca2-04a4-5641-a08a-04292ae4e248'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid,
  'viewer',
  'active',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7c364310-8d6b-5090-af57-63cd121add6f'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid,
  'viewer',
  'active',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '96fdc68d-d836-5fd1-8102-ea267a81fa18'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid,
  'viewer',
  'active',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '93d6d7ce-9d32-5ad4-82dd-5b2e2522bafb'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Classroom AI tutor field study — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6a57862a-18d4-5743-8e17-115c93cd3921'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Classroom AI tutor field study — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c84b4cbf-2e2f-5d2d-9c55-053338b31427'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Submit internal review',
  'Tracked work item for Classroom AI tutor field study — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a500f472-5f9a-56f3-ab3a-2e26ce7b9e7d'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Update project README',
  'Tracked work item for Classroom AI tutor field study — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '69a31be8-e459-5511-be6a-2bb36cdcfeb3'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Draft related work section',
  'Tracked work item for Classroom AI tutor field study — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '59f2d33b-6a7e-5d9d-8804-77dd5b3b9c0d'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Clean and version dataset',
  'Tracked work item for Classroom AI tutor field study — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3b4d11bf-d6c2-5153-8909-344d1530329f'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Classroom AI tutor field study — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '883ed659-5a3a-5e53-9e50-bbed4279ad4b'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Classroom AI tutor field study — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '97eeb3ba-d466-5ea5-9db0-ff6c37e9fe88'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  true,
  'planning',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4b8934c0-cacc-54ee-9c90-8c485196eec1'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  true,
  'analysis',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'bf86e715-d77a-53b9-9a2d-b9a0b08ab99e'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid,
  '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid,
  true,
  'writing',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '36444b60-fee8-57a3-bf6a-b345743da5cf'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid,
  'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid,
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
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Privacy-preserving wearable analytics — cohort 2',
  'Privacy-preserving wearable analytics is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around wearables, privacy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  ARRAY['wearables','privacy']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Oxford, UK',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '60322ff0-2a61-5231-bf79-1e1f32707c0e'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  'owner',
  'active',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c6b9abc4-4548-55ac-9eb6-41298cf6d37a'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  'editor',
  'active',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2d54ae97-04c9-53d6-917d-465b9ed2c713'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid,
  'viewer',
  'active',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd6252cbd-b42c-50ad-8229-af331c7b2964'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid,
  'viewer',
  'active',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '19131c03-a141-5ac8-89f3-60953b02a63b'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid,
  'viewer',
  'active',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2b67007f-91cd-5c85-b19b-ea6ecc4e1ce1'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid,
  'viewer',
  'active',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c4b1dea0-791e-5024-a159-5766442ac745'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid,
  'viewer',
  'active',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4176eb5e-02c4-5895-8317-d42c82780772'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2e7663de-6853-576b-adc9-f2184833875a'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2ca63ca7-7391-55c6-a51c-8a3e900db09e'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Submit internal review',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '828d9b06-f8d4-540f-b79c-ac79b028e910'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Update project README',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '02b2dbc0-e0b4-55bb-b343-16731066e636'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Draft related work section',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c5a21703-f6ca-594e-932e-61815897014d'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Clean and version dataset',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b9c63fda-a32b-5425-a1dd-3e77c1e1f281'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a6ee3984-f1db-5e2a-a057-46a46bbc5942'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd939c0ba-5281-5bd5-813d-aff5a63ccb4d'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  true,
  'planning',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '91ede839-f5ef-5aa3-a714-5fa111f7fda7'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  true,
  'analysis',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5d981d85-ae32-5b6b-af9e-c1bc5bd71295'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid,
  'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid,
  true,
  'writing',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '84753d97-d30c-523d-b8ff-0e790a233a5a'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid,
  '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid,
  true,
  'ops',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;