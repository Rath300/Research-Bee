INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('822dfd73-57bd-5cab-b10c-cf7c8b1e0848'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa7fee85-9051-5dae-94e0-a08bbf4c714a'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8dd0b831-0fef-5eb5-80bb-d5c566169eb1'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6f135068-8faa-54b4-a4e9-03465dec4200'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e110909-5eea-55d5-b7b3-395b664704d8'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7abfda4-507a-5915-8236-d391b90e0655'::uuid, 'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d3546735-edca-5228-a03c-33ac2129458d'::uuid, 'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '80acb97a-7b72-5378-973b-7859a420427b'::uuid,
  'd3546735-edca-5228-a03c-33ac2129458d'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5a267afa-30b9-5047-b5ad-2f359926bb5b'::uuid,
  'd3546735-edca-5228-a03c-33ac2129458d'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('533f7440-8025-5d54-954e-e25e7cd37c1f'::uuid, '709233fc-6dac-5a42-941b-d839482389b8'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3a096248-55c0-59e4-99c9-7900ee4fd4d9'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, '56f8439d-f665-534b-a3ed-49809023f629'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('54f2b6bd-50ad-5795-8c7d-98131ca0132d'::uuid, '56f8439d-f665-534b-a3ed-49809023f629'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3e20f8fe-1c97-5e28-85b4-f7c3a2c55030'::uuid, '56f8439d-f665-534b-a3ed-49809023f629'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6d3f666b-3541-5291-b014-00de02f17c1e'::uuid, '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('294e72b5-f28b-5887-897d-905ad187b6cd'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, 'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7d7eea62-4879-5be8-b8d0-fdc61592620e'::uuid, 'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e02b1cc2-c0a5-5348-8194-1ebb2a400f4c'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, 'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd9f0e204-a694-5ac6-8830-267c4407d186'::uuid,
  'e02b1cc2-c0a5-5348-8194-1ebb2a400f4c'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b47e42cb-f8d4-5931-875d-723dd4160c38'::uuid,
  'e02b1cc2-c0a5-5348-8194-1ebb2a400f4c'::uuid,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bab6e7d0-aabc-5dc2-9372-c858b2d12ed5'::uuid, '1ca806bf-7216-5681-8652-8db2434048ce'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('236b440a-be31-5e33-bd86-eecd1abe8aa3'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0c6297c5-02bd-5ad4-be20-1097661d87c6'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('10a98895-6449-5474-bd8c-5bf347add02b'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0a0c9f7a-82b9-53f8-983f-83e03acc46eb'::uuid, '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('881ea39e-fdab-58c8-ad16-b16540003c83'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, '709233fc-6dac-5a42-941b-d839482389b8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ca922987-864e-511d-82b9-5ad6ba7e1011'::uuid, '709233fc-6dac-5a42-941b-d839482389b8'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f93d9b3d-fccc-579b-a8b9-3069cb7a5e09'::uuid, '709233fc-6dac-5a42-941b-d839482389b8'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2b45a664-ee30-507f-96e7-f75512a2f43c'::uuid,
  'f93d9b3d-fccc-579b-a8b9-3069cb7a5e09'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  '709233fc-6dac-5a42-941b-d839482389b8'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6f8e6e5c-a78e-5742-b1ab-9aa35b194840'::uuid,
  'f93d9b3d-fccc-579b-a8b9-3069cb7a5e09'::uuid,
  '709233fc-6dac-5a42-941b-d839482389b8'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8637f251-6e4d-5201-bbcd-30b0aae6b9c9'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8ad758f7-ed3f-5b4a-8d08-7c43a599c2c6'::uuid, 'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('50a448f5-80cf-5101-b023-4b8d60905e18'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e69f5030-c60d-56ca-a0bf-7b6c1ca8a86e'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6d46a626-58be-5441-b650-e6215fbb9063'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('87aa5568-0852-50a6-9843-add74393aa0d'::uuid, '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c77c3401-fc24-5c2f-928d-bd902c95c32d'::uuid, '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '18381c4a-446e-51b9-982f-648e89899586'::uuid,
  'c77c3401-fc24-5c2f-928d-bd902c95c32d'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f6c570e6-43bb-5eae-bd6a-5d992dc64172'::uuid,
  'c77c3401-fc24-5c2f-928d-bd902c95c32d'::uuid,
  '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fde28ffe-ac6f-5a6c-b277-841589fcffe8'::uuid, '9583a091-71fc-59e2-a837-c827f33c072a'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('282e24f1-d64b-5012-9fc7-bc6ae0ef0e1d'::uuid, '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid, '1ca806bf-7216-5681-8652-8db2434048ce'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;