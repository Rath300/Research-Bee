INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'STEM identity in first-gen undergraduates — cohort 6',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Toronto, ON',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0419d4d4-eb40-54ad-9407-e47fd713b84d'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  'owner',
  'active',
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fa8567a7-e95c-5af3-b163-44115d611311'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  'editor',
  'active',
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b244b1bb-2445-5974-87fc-c58c58429a44'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  'viewer',
  'active',
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1f650161-0ef9-5c14-82b7-d36c680d1609'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid,
  'viewer',
  'active',
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9afd00e2-2810-5f42-855c-758bb94b6e9b'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'd0ad7377-23be-599e-a7a4-536cf065e51d'::uuid,
  'viewer',
  'active',
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e11d595b-0f27-5f6b-9c04-d5557635d310'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Prepare figure panels',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '953dddc6-43a1-509a-8615-00b8863698ae'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3806d920-b80b-5265-8c3f-5fc841975a78'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Upload supplementary tables',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2ec9606e-f984-54c8-a0c8-83fc76656ee1'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '02746317-ee50-556f-9e81-f8ec727c9cba'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Validate QC pipeline',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd0ad7377-23be-599e-a7a4-536cf065e51d'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '13f13df0-a9ff-5de7-8dde-a01c979d6f94'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Collect pilot feedback',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '63811611-c64a-5445-b6d2-0cbb40813b7c'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Submit internal review (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f04897f6-3152-5abb-855f-aa2454732081'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Update project README (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9afc941e-6367-52a1-a013-adaac7722499'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f66c302a-c85d-54f3-9b4c-649127c14b03'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5cb39876-7615-577a-bf7a-669e0dacc567'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '847452db-3fe6-5c7d-8831-9be0aa05733e'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid,
  '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid,
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
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Dexterous packing under uncertainty — cohort 6',
  'Dexterous packing under uncertainty is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'local',
  'long_term',
  6,
  true,
  'Zurich, CH',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f0c20374-7109-5831-8861-bcb663dfd0d7'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'owner',
  'active',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd4ab150a-8cce-521b-9c08-b55a6d511d7f'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  'editor',
  'active',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '557419ae-f618-5e5c-ac18-c1893686f947'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  'viewer',
  'active',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a31edec2-19f0-5bce-96d2-1078c30babcb'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid,
  'viewer',
  'active',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '06b116cc-b9f6-5cb5-85ec-b170bd90c752'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  '8bb8a23a-9edf-5a77-92bb-92fa6ea26628'::uuid,
  'viewer',
  'active',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f6973763-1d1f-5c25-a0e5-3ef4e15a413a'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'e689d62a-1c67-5a79-87ec-81b794bd9c0f'::uuid,
  'viewer',
  'active',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'af995184-7913-5918-b901-fe915e136197'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Prepare figure panels',
  'Tracked work item for Dexterous packing under uncertainty — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a4fa8f74-96c0-57ee-8082-ac90d210e9ae'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Dexterous packing under uncertainty — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dddbc274-c068-5581-a67b-6dfe99d72655'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Dexterous packing under uncertainty — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b5eddd52-c93a-52d0-af83-cfe8f6a3007d'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Dexterous packing under uncertainty — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '920ada30-2c52-5c49-862c-6c322c5c2d7c'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Dexterous packing under uncertainty — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '8bb8a23a-9edf-5a77-92bb-92fa6ea26628'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'afd0af64-baa9-5c74-a748-1c84b8601bb1'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Dexterous packing under uncertainty — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e689d62a-1c67-5a79-87ec-81b794bd9c0f'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f70cb19f-4b6b-59fc-9d2a-4bc48c671d21'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a9b017d7-0ebc-551a-b298-b373d6d26936'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Update project README (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6b4d6d2b-f87c-5d70-8586-e7c9545bc403'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c84ad722-8446-5221-890d-6a79c3e4dbb4'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f194f38a-7e95-597e-9fbd-e152e548af87'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5d73dd49-d7bc-5700-b930-32b54dfcf166'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid,
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid,
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
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 6',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'remote',
  'long_term',
  7,
  true,
  'London, UK',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9fbb84d9-504a-586d-b540-c42764620b16'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'owner',
  'active',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c37c9bdf-8516-50cc-a0c2-64a7b8153ab0'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid,
  'editor',
  'active',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9d639d5a-ca51-56c9-aa6a-69d6f5963229'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  'viewer',
  'active',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c45adb5c-6614-51a2-a3ed-56252cbe6bde'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid,
  'viewer',
  'active',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c868fc26-3481-5a3f-82ad-481be0454343'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid,
  'viewer',
  'active',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ad80d630-8f30-5c49-89ca-896189582a8d'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  '7ef20ab1-ba74-5bbd-8474-5509bd90af81'::uuid,
  'viewer',
  'active',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0b8407f3-4800-52b4-a213-4a66e33d666e'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid,
  'viewer',
  'active',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '16f8a46b-72d9-557d-a7c3-6965f19fc5af'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Prepare figure panels',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'faea7c9b-e7e5-5ce0-b7fc-24fdd8825de3'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f00801fc-71a7-57ff-9282-08c102a74cd0'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '404c14bf-ff21-52ba-bd69-dd32f5ab7b6e'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '35582308-eabd-5f01-aad6-0444353f46de'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '68b7554d-f595-5f5f-b5bf-b482a74ddb95'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '7ef20ab1-ba74-5bbd-8474-5509bd90af81'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7455ccc0-504c-5fd5-bf7e-608f06753073'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '928c4163-5558-5aaa-9648-69e0ffb818b3'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Update project README (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '561a02fe-9584-59bb-a957-403e8f13321f'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9a8cd299-23e9-53b2-8277-d94a54a02e77'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid,
  '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '24a3aba0-c480-5a67-9b1f-adc2fcd12cf4'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b6575430-cc53-53af-9a4f-f19a0b2cd6f9'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid,
  '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid,
  true,
  'ops',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;