INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Vascularized cardiac organoids — cohort 5',
  'Vascularized cardiac organoids is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'local',
  'short_term',
  12,
  true,
  'Pittsburgh, PA',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '73b85e5b-f402-52e0-ba8c-bb91ef30c524'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  'owner',
  'active',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '59ece076-9122-546f-8b5b-9f0e0f61b962'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid,
  'editor',
  'active',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '18f6eeb5-8e3e-5856-8bf6-734041fd8227'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid,
  'viewer',
  'active',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '21cba1c7-bce5-5860-bbf4-333171f2d3f4'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
  'viewer',
  'active',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e9676d39-91a2-5c65-9c09-ef612202ea07'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid,
  'viewer',
  'active',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '67aa8cff-3b76-5b7e-a3ab-b03fb6d89fb5'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid,
  'viewer',
  'active',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ad837daa-f123-5aac-bee8-1864738d7f56'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Vascularized cardiac organoids — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0fed4d9b-db61-5157-90cd-4c9a333ad8a9'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Vascularized cardiac organoids — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '41986b85-24f0-5c70-bc65-8ff4cbaad641'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Submit internal review',
  'Tracked work item for Vascularized cardiac organoids — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '70fae980-fc51-52cf-a1e0-82a702f9375d'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Update project README',
  'Tracked work item for Vascularized cardiac organoids — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6a3824fc-1951-58cd-a444-2cc8ddcaa646'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Draft related work section',
  'Tracked work item for Vascularized cardiac organoids — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3fc5a0c7-1d06-5395-b087-ec3fe9790b9c'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Clean and version dataset',
  'Tracked work item for Vascularized cardiac organoids — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bf62559d-1f2a-5a8c-8e14-2c2b87e36499'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '601c069a-367e-5320-a284-9d6c6342e83e'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '605805b3-e9e9-5815-88cd-4a445a4f9715'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f18ef108-50e4-5b4e-9cfd-c819c08d41ad'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid,
  'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4d60fa2e-5d27-52ca-98cf-2d41b8d27825'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid,
  'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '95e26e78-eb64-556b-84b3-2d69727120ce'::uuid,
  'b8fee438-6ea8-583c-b6e7-6c989b881799'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
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
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Labor market effects of credentialing — cohort 5',
  'Labor market effects of credentialing is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'Atlanta, GA',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b887eadc-8796-5551-9b59-7923238f2c4e'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'owner',
  'active',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '915956dc-7a73-5807-907d-b6289eaa9495'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid,
  'editor',
  'active',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'acf59932-076f-59b5-b416-7c72ed8fe6f1'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid,
  'viewer',
  'active',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bf5edef4-6190-555d-bc46-b1a9e21cc82a'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid,
  'viewer',
  'active',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2a9d2877-b749-5c5c-a1e6-e3f0570b9769'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid,
  'viewer',
  'active',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1c05968e-b315-57a3-8e23-7552542a0953'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid,
  'viewer',
  'active',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '80a39e70-a94b-50be-838f-d8a5743a0332'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'db69352b-36e0-5136-a601-8cd783f826e7'::uuid,
  'viewer',
  'active',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f59a6267-851e-596a-9f0f-dd5c916c0962'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Labor market effects of credentialing — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '397ada40-328f-576e-be87-d83d775c628b'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Labor market effects of credentialing — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bdc201d2-7aa6-5436-bf70-726fbb0a2e34'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Submit internal review',
  'Tracked work item for Labor market effects of credentialing — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '55e6b589-b0b5-51f8-bc6b-e37caf006241'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Update project README',
  'Tracked work item for Labor market effects of credentialing — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a59dda6c-c1dd-5dc9-a456-101630ae47d3'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Draft related work section',
  'Tracked work item for Labor market effects of credentialing — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '30230e63-763e-5170-bcac-c17c5d51d367'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Clean and version dataset',
  'Tracked work item for Labor market effects of credentialing — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '44bb977c-d8ac-5e6c-9910-9e02829b2af0'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'db69352b-36e0-5136-a601-8cd783f826e7'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9fe314ab-5185-5ab1-bb4e-e29c76fd0c62'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c05426a9-1b91-5498-ac46-7faf2d92885d'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ee01f437-1bd7-53d4-acc9-791cf2237e2b'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid,
  '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ffb6443a-38dc-59e5-9882-7b69e71b09eb'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid,
  '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '67ea60fb-b00d-5320-ac9d-3801a8900028'::uuid,
  'f0486bcb-1e45-5a14-add6-6ecf9f0de3c4'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid,
  '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid,
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
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Low-cost water contaminant sensing — cohort 5',
  'Low-cost water contaminant sensing is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Ann Arbor, MI',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '56f267a2-8267-5204-a6fa-148e16b9d02d'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  'owner',
  'active',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e87cbf6c-4cac-5c5c-b0bc-e787d0ceb9a4'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid,
  'editor',
  'active',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4e80999e-0786-50a9-8509-7ab96e5c3455'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid,
  'viewer',
  'active',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ab072b0b-1594-5a1c-b9f6-cde535425fd4'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid,
  'viewer',
  'active',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '69bc551e-8332-5d71-8142-7fd73878464b'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid,
  'viewer',
  'active',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd915b7bf-d95e-592e-b51a-f96f1a3b8f73'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid,
  'viewer',
  'active',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9a1b3b0e-142b-5580-8dde-6721d7114072'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid,
  'viewer',
  'active',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd3e95b88-b506-5912-8c71-3dc909738b91'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid,
  'viewer',
  'active',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4c895964-52dd-5c24-95e9-3437e5090173'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Low-cost water contaminant sensing — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'aafab062-c8fc-55ec-b48d-4f47806196b3'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Low-cost water contaminant sensing — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e16b62c3-a449-5ff8-941c-3a6c82e9892c'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Submit internal review',
  'Tracked work item for Low-cost water contaminant sensing — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd34a9602-3233-5f71-9408-eb7ad12a2242'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Update project README',
  'Tracked work item for Low-cost water contaminant sensing — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '396ce0df-f109-5f5d-93e9-3b2c090c3f7a'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Draft related work section',
  'Tracked work item for Low-cost water contaminant sensing — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9dc963ec-96e7-572c-aacd-70dca62fab1a'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Clean and version dataset',
  'Tracked work item for Low-cost water contaminant sensing — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f0540264-1828-51a2-987b-60c82db907fa'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'db2b5657-4abd-57b4-8d6b-c7eeaa35dec0'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2cc406bf-1230-56f6-a331-17045243dfd4'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '002a9535-22e4-54a4-9fd0-f4bc45dd8c21'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid,
  'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'de4b5cf2-25a3-5086-b294-30bd23d09486'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid,
  '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9c105c6c-a0c6-541e-a8a1-2788eeaa93e3'::uuid,
  'd1c0bc15-1ab8-545b-972e-c2d5a2db681a'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid,
  '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid,
  true,
  'ops',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;