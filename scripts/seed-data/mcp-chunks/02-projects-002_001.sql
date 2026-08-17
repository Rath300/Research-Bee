INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Accessible clinical note summarization — cohort 3',
  'Accessible clinical note summarization is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around NLP, healthcare, UX. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  ARRAY['NLP','healthcare','UX']::text[],
  'active',
  'Human-Computer Interaction',
  ARRAY['User research','Prototyping','Statistics']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Palo Alto, CA',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f54feec5-1f75-564e-81b8-5011727abe8b'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  'owner',
  'active',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '19dbde20-fd72-53b0-8fda-4defbb1f4191'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid,
  'editor',
  'active',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'be7fddeb-db7d-5b37-8990-817ed58f1e5a'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid,
  'viewer',
  'active',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cc273686-3c91-575c-b621-2908507e2948'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid,
  'viewer',
  'active',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '92477c45-c4fa-51ef-8c94-a78879ada0da'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'e58b467c-3b92-5318-aac0-d48d03143307'::uuid,
  'viewer',
  'active',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8e5a3da2-9e52-5dd4-82e6-a06dfd327ce6'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Prepare figure panels',
  'Tracked work item for Accessible clinical note summarization — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4c622df7-9abc-55fc-834f-b3cfcfecf082'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Accessible clinical note summarization — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '83a5a6a6-7e95-5030-98a7-e91501de0820'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Accessible clinical note summarization — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '649d78df-b4fa-5c95-bdfd-b51fd556cb86'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Accessible clinical note summarization — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c4c88e99-d75d-5225-8c88-35fede602cc7'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Accessible clinical note summarization — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e58b467c-3b92-5318-aac0-d48d03143307'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ecdb391c-3bc8-56be-babb-695a9b5e6ea2'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Accessible clinical note summarization — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '75408a35-e10f-5527-b18b-73ce77f5e2a2'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Accessible clinical note summarization — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '85ecf385-dad6-54b2-8829-798f6b12c2fa'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Update project README (3)',
  'Tracked work item for Accessible clinical note summarization — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '737fc7fc-a377-5d06-b0e9-17d735feeb3c'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  true,
  'planning',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2321f9ad-26bb-595f-85c2-aa479d5b7ffe'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid,
  '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid,
  true,
  'analysis',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'af74ca20-6031-581c-b223-f6ced9adf16d'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid,
  '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid,
  true,
  'writing',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9cf1bade-b85e-546e-b6d9-6383b89b414c'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid,
  '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid,
  true,
  'ops',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Closed-loop stimulation for memory — cohort 3',
  'Closed-loop stimulation for memory is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around neurotech, memory, EEG. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  ARRAY['neurotech','memory','EEG']::text[],
  'active',
  'Neuroscience',
  ARRAY['fMRI','Electrophysiology','Python']::text[],
  'local',
  'short_term',
  12,
  true,
  'Berkeley, CA',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e3d14225-3d7d-5068-b4f9-8e3ce1065b40'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  'owner',
  'active',
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '149d8b39-f6f3-5169-952b-e7757c618699'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  'editor',
  'active',
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f26b6c71-bc31-5902-baa3-2f6a21844b44'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid,
  'viewer',
  'active',
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4b88a3aa-5824-575f-b5cd-61452607b928'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid,
  'viewer',
  'active',
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '48ececfe-86bb-58ff-83ef-571cf318c56a'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid,
  'viewer',
  'active',
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c60308a3-6ed9-5913-a564-093189f12ab0'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid,
  'viewer',
  'active',
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '873adc6b-1798-58cc-84ad-a024572ab37c'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Prepare figure panels',
  'Tracked work item for Closed-loop stimulation for memory — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e79e79ab-619d-59c7-b075-5cff7d748c68'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Closed-loop stimulation for memory — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'af6ec8b7-ce1c-541d-96b7-e5b77111ec0d'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Closed-loop stimulation for memory — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '75bdebc9-c87a-5de9-9ef4-df1e1827a760'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Closed-loop stimulation for memory — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a8bd946c-0f5a-5014-abc6-c1cadd9e2632'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Closed-loop stimulation for memory — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4a9881a8-69a6-5eeb-ac46-868efd2a0dab'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Closed-loop stimulation for memory — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9faa10cd-b4b0-593c-81b2-73cc94c961e0'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9637aca2-dec3-59ca-ba3e-e090e3e94c5d'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Update project README (3)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a23d637b-facf-5dbd-80fc-e6d9b377883e'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  true,
  'planning',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1014ddd6-7d49-53e3-9140-11f4578c98e6'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  true,
  'analysis',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd6e5c7fc-0e2f-518c-b9cf-ebaf1b5a1935'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid,
  'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid,
  true,
  'writing',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5fbbe87e-befe-5be1-8bcd-b28269c06af1'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid,
  'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid,
  true,
  'ops',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Community vaccine confidence study — cohort 3',
  'Community vaccine confidence study is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around surveys, equity, vaccines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  ARRAY['surveys','equity','vaccines']::text[],
  'planning',
  'Public Health',
  ARRAY['Epidemiology','R','Survey design']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'Boston, MA',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd9e413f8-be57-506f-bfa1-54a66223e373'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  'owner',
  'active',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'eb043932-d871-537f-b276-c73b69473289'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid,
  'editor',
  'active',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e83651de-b7de-5ab8-afd2-5ea18a705ef4'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  'viewer',
  'active',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6758696c-00f4-5f14-90d9-f41f52a27c4a'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  '6967920a-06a3-5d3b-9991-777798ca8208'::uuid,
  'viewer',
  'active',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f327848d-4fc7-5f1c-b0d2-c6ae1199401f'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid,
  'viewer',
  'active',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0bfae4e0-4f59-5e5e-ae92-50539ba7c734'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  '17e09f15-8bff-59bc-a0d2-6ddba4ef2622'::uuid,
  'viewer',
  'active',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c48d8c1e-2c4b-5ed4-a95e-b25b49e008d9'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid,
  'viewer',
  'active',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3b1aee16-bf2e-56d4-98fa-22d556364f05'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Prepare figure panels',
  'Tracked work item for Community vaccine confidence study — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8b017740-d67b-5841-be18-183d99105f1f'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Community vaccine confidence study — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f52de48e-4d91-55b7-beed-d5d5d5c95748'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Community vaccine confidence study — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0e4824b5-1a6d-5808-82f5-d2f45d9e835c'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Community vaccine confidence study — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '6967920a-06a3-5d3b-9991-777798ca8208'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c2109a63-5109-5c6f-a94d-a9c3f31c3b08'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Community vaccine confidence study — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '14668d46-f343-5248-ab56-658790dcdc78'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Community vaccine confidence study — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '17e09f15-8bff-59bc-a0d2-6ddba4ef2622'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6ce514a0-cfa8-51ee-8dec-32807947dbe3'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Community vaccine confidence study — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '03cb539c-9a86-5b4c-8f58-ebf5210625d4'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Update project README (3)',
  'Tracked work item for Community vaccine confidence study — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c598358a-d394-5cf2-8040-6a90273e922b'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  true,
  'planning',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e8142c0c-87c0-5a05-b772-2895506c7908'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid,
  'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid,
  true,
  'analysis',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6c724154-b5eb-5c35-825f-a88611432a22'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  true,
  'writing',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0a8223e5-7104-5920-af5d-5bf1e9d0456d'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '6967920a-06a3-5d3b-9991-777798ca8208'::uuid,
  '6967920a-06a3-5d3b-9991-777798ca8208'::uuid,
  true,
  'ops',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;