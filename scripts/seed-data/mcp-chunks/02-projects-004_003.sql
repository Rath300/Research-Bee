INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'STEM identity in first-gen undergraduates — cohort 5',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Zurich, CH',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a7224b98-206c-50d2-8c01-c58682d36a08'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  'owner',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '53e1e1af-aaa4-540f-82a4-116a1ed68719'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  '40866e35-1364-5559-8365-e428e26a9b73'::uuid,
  'editor',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6819d3b2-90f3-5dbf-9ef9-3fe892c949a8'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid,
  'viewer',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7dbf3019-0f78-5f18-aa21-6420de991140'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid,
  'viewer',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6cf9c0d5-b5d7-5abc-bf1e-a5f5f308cf14'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid,
  'viewer',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ae10a087-3f08-500d-9154-3337625552d7'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid,
  'viewer',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '244ee4ad-feda-550e-85d1-86efd9e863f5'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid,
  'viewer',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '89998ed8-6fe3-538b-9cfb-bd7b4db4e590'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  '7946e966-b7f0-5144-a21a-04765a50638c'::uuid,
  'viewer',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '24509a61-0b20-572e-8d15-e750303223a0'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'b1a15199-4e78-51ba-99e1-56bf9f18a970'::uuid,
  'viewer',
  'active',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '77004bc3-0d70-5797-981b-0cc1dc57cad6'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Validate QC pipeline',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd9bdba0e-0f82-5a46-aa7b-765729714368'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Collect pilot feedback',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '40866e35-1364-5559-8365-e428e26a9b73'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1125caea-8ba3-508c-8cd7-fce34958f318'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Submit internal review',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '035a3b1b-5f96-5c71-be40-21dee0ea1c2e'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Update project README',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '49eabe48-4f9e-5aa4-ad73-3c933eabf63e'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Draft related work section',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dbf41787-5679-5c80-a6ba-dde33a65598d'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Clean and version dataset',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e5df5fd2-2e91-5e2e-bd73-62ba386ed1d8'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Run baseline model (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6201fd7c-e965-5935-b072-cd04471da887'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '7946e966-b7f0-5144-a21a-04765a50638c'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2e650e40-714c-577f-9423-e8b12038ee7c'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0cbcff0b-5138-56fc-ba2c-493bdeadacfc'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '40866e35-1364-5559-8365-e428e26a9b73'::uuid,
  '40866e35-1364-5559-8365-e428e26a9b73'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '915f608f-8015-5502-bc3c-6e5c0d4a031b'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid,
  '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '171e1642-b91c-50bc-8c10-7d06902d16c7'::uuid,
  '301e20de-b10c-5b5c-b1e6-70f33a312081'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid,
  'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid,
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
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Dexterous packing under uncertainty — cohort 5',
  'Dexterous packing under uncertainty is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'remote',
  'long_term',
  10,
  true,
  'London, UK',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f84cbd94-0b25-5924-86a1-12fc44b8c49d'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  'owner',
  'active',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '26d1c62e-fed5-57bc-ba21-9e032da999be'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  'editor',
  'active',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '49d784f7-0f0e-51e6-81dd-48ffadd9dc41'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid,
  'viewer',
  'active',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ce2a5b95-7b93-5459-ad50-dc86ef0aba82'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid,
  'viewer',
  'active',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '98bd5d2d-00d3-55a2-8f5a-129ffede138a'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Dexterous packing under uncertainty — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '08e3c804-98a5-5b04-99ab-bc4ee1603843'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Dexterous packing under uncertainty — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '426e9f82-430f-506f-b127-6720fb2acae2'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Submit internal review',
  'Tracked work item for Dexterous packing under uncertainty — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c6bc4112-6755-5180-b2cf-bcdd2d446053'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Update project README',
  'Tracked work item for Dexterous packing under uncertainty — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6a19aee0-fdd9-54f2-81ab-4f721fc6db13'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Draft related work section',
  'Tracked work item for Dexterous packing under uncertainty — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7e9e48c6-3d78-5326-a104-4a3f1f5b79a0'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Clean and version dataset',
  'Tracked work item for Dexterous packing under uncertainty — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bd84e453-040e-5c8f-ae0e-ae49e7cb934a'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '816fab60-4402-55f0-975b-a557ac1ed023'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e6e84df7-ee97-52a3-85bc-60314d778afd'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c18df505-d300-5f5f-8848-a85f12584934'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e6a70c27-6bca-5beb-82a1-92027ecbd3e7'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid,
  '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b1234fa0-4c05-559b-8c61-de08348a1142'::uuid,
  '317144e7-e7f2-5473-b446-3fde38633c7c'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid,
  '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid,
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
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 5',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Seattle, WA',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0744abe3-ea52-528b-9c2e-c77cbdda78e7'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'owner',
  'active',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6e59fcaa-2edd-5169-bcc0-2b5fb0238a9a'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid,
  'editor',
  'active',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b0f8ff49-b111-555c-9432-1843ae6076e7'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid,
  'viewer',
  'active',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '43a5e021-4fa1-522f-9205-bc31d698e759'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid,
  'viewer',
  'active',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '92c16509-679c-5de3-a66e-fa361223ec06'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid,
  'viewer',
  'active',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '23d9fe71-057d-54a7-87af-29fc194eeb6d'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '318f76ba-8489-5860-abc2-3c4985fea7f1'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '68061280-fd80-50e2-9cf6-545744297102'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Submit internal review',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a736534d-1cdd-521b-80ad-a2f9ed61cdb2'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Update project README',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2b7ba711-10d8-5687-a1e4-3f392ec4ec60'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Draft related work section',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0df7026e-1456-555d-a5e0-fcbdd3871a1e'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Clean and version dataset',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b85151ab-5398-5668-bbf7-2a9dc3eb96cf'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '75fae870-a634-5e49-9d4d-56e54ab1a2f4'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '855b3d44-9980-505b-96bf-f432091ea627'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1321e05b-c296-5bbb-9bea-187fd8a5bd07'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid,
  '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '86caf6e0-36fd-53cf-b65f-fda8a2277f59'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid,
  'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '813e7db2-b13f-5b6d-ad0b-47cf329765ff'::uuid,
  '47dc0361-67ef-55eb-8306-2a9e55d6d87b'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid,
  'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid,
  true,
  'ops',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;