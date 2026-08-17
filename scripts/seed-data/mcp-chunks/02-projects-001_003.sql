INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'STEM identity in first-gen undergraduates — cohort 2',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Pittsburgh, PA',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7b84e5e6-77d2-5814-b329-798709d5f71c'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  'owner',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ee19cc5f-3c97-5f18-9eb6-0d757283758b'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  'editor',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '64630679-07c9-5ad0-aa04-a3900759a2dc'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  'viewer',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2a469597-2a07-58f8-9188-f40a036fda8f'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid,
  'viewer',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd7dcf6d9-e80d-546c-9c14-b2c09385337f'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid,
  'viewer',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '17e777e1-e3d0-58f4-a9dc-f99965610e23'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'adab7a98-c1d6-591f-8b46-750925810a73'::uuid,
  'viewer',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '529c07f7-fe91-5fe6-bcd8-66aa2df9fa3d'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid,
  'viewer',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '28c0b736-4e05-50ea-a7c8-8238a8959a6d'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid,
  'viewer',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f6af5b29-0a00-5510-9afd-ea66a9141931'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  '8539a32a-815b-5a83-a51e-679ee612278d'::uuid,
  'viewer',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '46baf69d-cf36-53ca-90ae-f6917176b345'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Validate QC pipeline',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eddde4bf-664d-5129-a028-af1a01143f6c'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Collect pilot feedback',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a8959813-95ea-5f34-b040-06033fcb0815'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Submit internal review',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8f026efc-1edb-531c-a6b6-b41fc8b531ef'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Update project README',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3f88a09e-5afa-569b-aac0-80adab6095a8'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Draft related work section',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cb3c92cd-ff90-5065-87ee-b18b03935ea2'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Clean and version dataset',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'adab7a98-c1d6-591f-8b46-750925810a73'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cacc06fa-d5d9-58a8-9b28-62b1692332c8'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Run baseline model (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f06c17d0-d8de-5544-9607-e3cb96c67cc9'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '008a11e2-3432-580b-8c5e-67b240aaf20b'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '52fbcc1f-3bc6-53de-850e-e12971bb66de'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fb5719a5-51dc-5d4d-90c0-6e6d9aff8930'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '10e8746e-572d-5e56-b7db-6c2b5602a472'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid,
  '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid,
  true,
  'ops',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Dexterous packing under uncertainty — cohort 2',
  'Dexterous packing under uncertainty is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'remote',
  'long_term',
  10,
  true,
  'Atlanta, GA',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1292ceb3-75cf-5e94-91ad-36290096ef42'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'owner',
  'active',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1656d9be-744b-53ba-b57b-46a081330c04'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'editor',
  'active',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd9519937-e67a-55e2-a5d2-5d9365341b50'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  'viewer',
  'active',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b37acdf8-6f9a-5218-b149-419309d23291'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid,
  'viewer',
  'active',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2f968188-2055-5834-a9da-55e87f580495'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Dexterous packing under uncertainty — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1acfc586-5b1b-5a89-a353-c12d424a17ce'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Dexterous packing under uncertainty — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6fc6de54-0bbd-5375-badb-b707a186164b'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Submit internal review',
  'Tracked work item for Dexterous packing under uncertainty — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '497a2363-ef2a-5a33-b952-33a05776abd1'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Update project README',
  'Tracked work item for Dexterous packing under uncertainty — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8d35649f-0dc8-50f7-8f75-72ad44fd95e1'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Draft related work section',
  'Tracked work item for Dexterous packing under uncertainty — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '935295fe-2a34-5226-b9bf-429556a11b9d'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Clean and version dataset',
  'Tracked work item for Dexterous packing under uncertainty — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ba8f92a6-ad1c-5cc9-a1c1-0716b75fbe7b'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '87e43268-8c01-5ce2-8113-d457fd727b6c'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1a097b26-b87d-5b7a-b0d9-5b440d23d7e7'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '73096506-3070-5786-b90c-e8987a21d9b1'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b07830a9-6d1c-5086-b986-3f77d87e35e3'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '43a5d084-c354-543e-a11b-0694c7a4ab44'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid,
  '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid,
  true,
  'ops',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 2',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Ann Arbor, MI',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '34901869-3ce7-543c-bced-f7a52837e03f'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  'owner',
  'active',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5d63910e-ce41-5778-9235-d18c05777d3d'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  'editor',
  'active',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '18804a87-fddf-5117-a9f5-21aeb9fffd9d'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  'viewer',
  'active',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '756e8991-f577-5073-8853-5b47d26bcc9e'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  'viewer',
  'active',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1e33b5ac-7792-51ca-beb0-ff96df765e63'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid,
  'viewer',
  'active',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8abc02d0-9a85-544d-8c9d-654236d7e021'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '23d4f4b9-9c91-533a-a0b6-8b7f2b21cf7d'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f1be4c97-f539-564c-a2aa-6f79aaba7871'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Submit internal review',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4d36272a-cca5-583c-9581-97e2e6aa0664'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Update project README',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5acf26fb-d93f-52db-a11b-5bf382aa25a3'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Draft related work section',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '65177981-7489-5ce6-bf08-a89bbd2c42b2'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Clean and version dataset',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4a6705c6-c7fd-589f-b5f3-cdfe1232d7ac'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd588c789-cb02-5879-855a-25154543cafb'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6a0d858f-2f3e-5b6c-a8f8-f393036aba75'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c1a965e6-5d52-569f-acdb-e4304063cee9'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c971e39f-d51f-544d-a733-ab2f84d64f23'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4b1aeb64-1a22-5446-be36-a2e0f41acc97'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  true,
  'ops',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;