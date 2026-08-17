INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Vascularized cardiac organoids — cohort 3',
  'Vascularized cardiac organoids is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Ann Arbor, MI',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd617267c-8b46-54da-8b69-6d8f9308d59f'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  'owner',
  'active',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a189094f-07cb-58b3-8ff8-bd519b1b9aae'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid,
  'editor',
  'active',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c45bc111-8d44-5592-9fad-6b2a8c9a8554'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid,
  'viewer',
  'active',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4ea016bc-67de-5bd9-83bc-585cc5601bba'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  'viewer',
  'active',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '021652e3-5342-518d-9280-dd53bc6f1c2e'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'dd003888-417e-5adb-be0b-88b099d71a72'::uuid,
  'viewer',
  'active',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6f6f2695-82fd-5d36-9b59-27071f8d6a99'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'da781818-221e-5433-8ed5-0d93efc9d299'::uuid,
  'viewer',
  'active',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd7c7e54a-da2f-5e72-85fd-bbfeb19d0754'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'a92d4ffb-9625-5c8a-ab6f-18a27c05992d'::uuid,
  'viewer',
  'active',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd857e235-7d22-594d-83aa-ccbf24f4d7e1'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  '930dbf77-a75a-5e7d-9a6a-555d7e26ff51'::uuid,
  'viewer',
  'active',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '043ea5fb-5166-5a22-83c5-736f5c7183db'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Prepare figure panels',
  'Tracked work item for Vascularized cardiac organoids — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '68eea7be-91a9-54f6-a85a-87d1b5152afd'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Vascularized cardiac organoids — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b3e1fdeb-42f0-550b-9500-b4498c915d03'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Vascularized cardiac organoids — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a994fd67-4993-5c43-8d6a-0e77f231b0f0'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Vascularized cardiac organoids — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '56b6bacc-2d09-5513-aaed-6e331721f922'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Vascularized cardiac organoids — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'dd003888-417e-5adb-be0b-88b099d71a72'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6e304794-64a4-52e1-8062-678f009cd382'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Vascularized cardiac organoids — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'da781818-221e-5433-8ed5-0d93efc9d299'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '929b2138-65cd-5b1e-b55c-aa1a7cd4a4ba'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'a92d4ffb-9625-5c8a-ab6f-18a27c05992d'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '45c2baa8-b90c-5315-8b99-5bfe29d8d99e'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Update project README (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '930dbf77-a75a-5e7d-9a6a-555d7e26ff51'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cddb1e0f-5368-53aa-8c3a-cd11b5f48ac8'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '90bdfa02-b277-5fdc-be9d-c9e1b32571e4'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid,
  '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '90a192bb-978a-558f-9cc8-a2a88edcdbae'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid,
  'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '49b23c6a-c1ce-532b-8a46-92f439c9f719'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
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
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Labor market effects of credentialing — cohort 3',
  'Labor market effects of credentialing is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Los Angeles, CA',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd6a128c4-0694-50c5-9e77-48b3b4e2684b'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  'owner',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '40afad49-ee24-5c98-a1d6-5146e180edcc'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'e64abfce-a585-5002-987d-172bddea50c0'::uuid,
  'editor',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '58082c70-1a80-5a6d-864d-2ee8e45453a6'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid,
  'viewer',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2500d42e-fd74-5111-9538-5c1e89496823'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid,
  'viewer',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8c18694f-df2a-535e-81e2-54fca0c6cc69'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid,
  'viewer',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '91165499-9160-5efc-b6f9-0d16bffa10b6'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid,
  'viewer',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b3c37900-f167-590b-a6bd-d72c6eb7ed39'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid,
  'viewer',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3ba0cc86-941a-5fb1-b3ea-01c0b0df6291'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  '8dcc64e5-1781-5d54-acde-4fe2a4718700'::uuid,
  'viewer',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1ee04768-8a07-5bd5-b3f0-5eebd907702f'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid,
  'viewer',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6cc43871-0382-55b8-85f2-22ed9d2b3c9e'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Prepare figure panels',
  'Tracked work item for Labor market effects of credentialing — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '790a685c-b2f5-5e25-9371-4bc82a07f548'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Labor market effects of credentialing — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'e64abfce-a585-5002-987d-172bddea50c0'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'be397b56-028f-53f8-bc89-64b26fdec54b'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Labor market effects of credentialing — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '08bbf674-9402-577b-908b-1f17464d3934'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Labor market effects of credentialing — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'be26c7ce-068d-5db5-81f5-81eb32e01a1b'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Labor market effects of credentialing — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4d072467-2add-5ef6-83ca-e01adee9debd'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Labor market effects of credentialing — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fd8a1767-1587-5cfe-b6df-9682d7b0b7e9'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f158272e-f7f1-5f23-a34b-4ca7aba75db7'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Update project README (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '8dcc64e5-1781-5d54-acde-4fe2a4718700'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd02f0908-7cbb-569b-a1fe-007651f12d07'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'feb3a6a0-ecc5-5d57-b804-e4a176105674'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'e64abfce-a585-5002-987d-172bddea50c0'::uuid,
  'e64abfce-a585-5002-987d-172bddea50c0'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3dee8f89-0fd9-5707-99a6-f4aec643a0c8'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid,
  'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '45b7ed54-4189-520d-adc1-1e52ae8d36af'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid,
  '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid,
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
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Low-cost water contaminant sensing — cohort 3',
  'Low-cost water contaminant sensing is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'remote',
  'long_term',
  10,
  true,
  'New York, NY',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ee278a34-77e5-511e-9e83-cd0f77833cfb'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  'owner',
  'active',
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '001acbec-409e-55b7-951c-22d1a459d99e'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  'editor',
  'active',
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '653ebdd4-eee6-5788-adad-3861d653c831'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  'viewer',
  'active',
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '911a63ec-fe6a-5837-aad3-58f810800adf'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  '6358d0af-c374-5016-a887-36f53d4bd779'::uuid,
  'viewer',
  'active',
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c823a801-8d32-5185-a1b6-adb19b7795c6'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Prepare figure panels',
  'Tracked work item for Low-cost water contaminant sensing — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '59815376-5a0b-5002-af56-98e389d2ade5'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Low-cost water contaminant sensing — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a624b6f7-d4db-5cde-902c-a5ea5fd9edc3'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Low-cost water contaminant sensing — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'edf80df0-212d-59d0-94eb-eac073d969c4'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Low-cost water contaminant sensing — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '6358d0af-c374-5016-a887-36f53d4bd779'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f59aa8dd-4e00-5361-a7a1-27ea100c15fa'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Low-cost water contaminant sensing — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'edfa214c-d96a-5965-9883-952eccfaec4b'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Low-cost water contaminant sensing — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b2751cf2-9be7-5db3-a445-a3cd7492e54c'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ff276d6e-723d-5b14-a8f9-50e1f7713b41'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Update project README (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '6358d0af-c374-5016-a887-36f53d4bd779'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '108f094c-6599-5dfd-af66-53c1fc530d90'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '703d0a34-6803-593d-ab5e-3cc3666927d6'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cdf4f5cf-a8b7-5323-afd8-85e6f12b4b2f'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cc6dd48e-8d3b-598b-b398-0d81aece8cb8'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '6358d0af-c374-5016-a887-36f53d4bd779'::uuid,
  '6358d0af-c374-5016-a887-36f53d4bd779'::uuid,
  true,
  'ops',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;