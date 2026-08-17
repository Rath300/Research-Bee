INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fe7ee33e-8532-5bd5-ac67-45b4d0450d34'::uuid, '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid, '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e4f6079a-3cf0-577e-a76d-c1052cad71b0'::uuid, '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid, '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2a6fa52e-5819-5e7e-a8bb-9821f588558b'::uuid, '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid, '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('646fa0d4-b017-55ad-9a3d-14a2a917f2eb'::uuid, 'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid, 'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('48fe272f-cd11-5cbd-a187-6d8f6fceeff3'::uuid, 'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid, 'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('52eed708-bbce-5c12-91d2-daa3aec0ac11'::uuid, 'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid, 'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '81b737b8-d123-53a6-af3e-07f2f696b7f3'::uuid,
  '52eed708-bbce-5c12-91d2-daa3aec0ac11'::uuid,
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'be890bab-9b08-5d3e-86c4-df7b007da078'::uuid,
  '52eed708-bbce-5c12-91d2-daa3aec0ac11'::uuid,
  'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid,
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('94706120-a44b-5692-ba57-a188d612a81f'::uuid, '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid, 'd18c35cd-30d2-5a94-bfe3-7782f41a3dc6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3bc5107e-530f-5f01-bccb-f4d596f48525'::uuid, 'd18c35cd-30d2-5a94-bfe3-7782f41a3dc6'::uuid, '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0700d6ac-20be-5841-a4b0-ed0d50fc76b7'::uuid, '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid, 'd18c35cd-30d2-5a94-bfe3-7782f41a3dc6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8b853b8c-0afc-5b8c-adbf-de339ef39dab'::uuid, '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid, '17e09f15-8bff-59bc-a0d2-6ddba4ef2622'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3a170a87-c58b-5874-87fb-a38a5456e4a1'::uuid, '17e09f15-8bff-59bc-a0d2-6ddba4ef2622'::uuid, '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fd84a6ca-e148-5c67-8714-75be9fa3e16b'::uuid, '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid, '17e09f15-8bff-59bc-a0d2-6ddba4ef2622'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '98fbff88-1718-547a-9223-a5b09d4b2b2f'::uuid,
  'fd84a6ca-e148-5c67-8714-75be9fa3e16b'::uuid,
  '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid,
  '17e09f15-8bff-59bc-a0d2-6ddba4ef2622'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2a328a09-1529-5b6b-bc50-1d51c6b4506b'::uuid,
  'fd84a6ca-e148-5c67-8714-75be9fa3e16b'::uuid,
  '17e09f15-8bff-59bc-a0d2-6ddba4ef2622'::uuid,
  '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6bc27fbe-160b-5d19-b5fd-a98ffe01bfd6'::uuid, '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid, '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3709851a-e2ba-5ee0-9b17-cbe1be66845a'::uuid, '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid, '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e27fbd35-6ef9-5b40-bb91-68236fa8e6ab'::uuid, '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid, '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2d69cf55-f529-5f32-8652-6de77bc19e57'::uuid, '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid, '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('17ba0047-0dde-5751-bc26-7dcd3f757e9d'::uuid, '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid, '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('390a509e-e748-5fc5-9b72-1b8b17da9601'::uuid, '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid, '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e9657ad9-4422-523d-b2b7-35d89685bb86'::uuid,
  '390a509e-e748-5fc5-9b72-1b8b17da9601'::uuid,
  '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid,
  '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a2520f7d-9258-513f-ad3d-a609d519068f'::uuid,
  '390a509e-e748-5fc5-9b72-1b8b17da9601'::uuid,
  '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid,
  '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c4325ab1-9806-58fc-bb01-2e88e70c19b6'::uuid, '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid, 'e77bd75c-1999-5e56-92a9-44fe5a7f4f21'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8f40e6c5-bc82-5e87-a686-94ba48ad6bc2'::uuid, 'e77bd75c-1999-5e56-92a9-44fe5a7f4f21'::uuid, '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e4b840c2-42ef-5c75-a5ab-7cd4b0e1cb1f'::uuid, '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid, 'e77bd75c-1999-5e56-92a9-44fe5a7f4f21'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f08e398d-7d85-512b-9cfe-d7e2e4085b05'::uuid, '04149813-8770-5834-9525-c8ba8a4f02af'::uuid, 'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b1d330b7-d4d0-57bb-8acd-76f37597e948'::uuid, 'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid, '04149813-8770-5834-9525-c8ba8a4f02af'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('abcf7a43-53be-5769-81e1-f7df31aca81a'::uuid, '04149813-8770-5834-9525-c8ba8a4f02af'::uuid, 'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9ecdc5a0-45ce-5062-a57c-fbe2123fa8f8'::uuid,
  'abcf7a43-53be-5769-81e1-f7df31aca81a'::uuid,
  '04149813-8770-5834-9525-c8ba8a4f02af'::uuid,
  'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0cfd14df-1210-58b4-961c-446465e42a34'::uuid,
  'abcf7a43-53be-5769-81e1-f7df31aca81a'::uuid,
  'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid,
  '04149813-8770-5834-9525-c8ba8a4f02af'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('56d3d4db-0557-5e1a-b787-d1a20cef41b3'::uuid, 'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid, 'e64abfce-a585-5002-987d-172bddea50c0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('64885254-28a2-537b-a3d3-74593e4ddd91'::uuid, 'e64abfce-a585-5002-987d-172bddea50c0'::uuid, 'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('896d7871-3d91-5291-8831-b16e6464a7a2'::uuid, 'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid, 'e64abfce-a585-5002-987d-172bddea50c0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d319346e-0588-5fa0-a2e7-47c26fca42fc'::uuid, 'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid, '99ceddcc-d9c2-5912-8674-a0ed919a9522'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('838219e1-6e5b-5f8a-8317-fcb074da4a38'::uuid, '99ceddcc-d9c2-5912-8674-a0ed919a9522'::uuid, 'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1565aa52-6644-546c-b8bc-a07d2a9292ea'::uuid, '99ceddcc-d9c2-5912-8674-a0ed919a9522'::uuid, 'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '36818253-37dd-506b-bdc9-27662e7ff869'::uuid,
  '1565aa52-6644-546c-b8bc-a07d2a9292ea'::uuid,
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  '99ceddcc-d9c2-5912-8674-a0ed919a9522'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '75b5c7df-79e8-5ca8-a89f-3f06cba91f66'::uuid,
  '1565aa52-6644-546c-b8bc-a07d2a9292ea'::uuid,
  '99ceddcc-d9c2-5912-8674-a0ed919a9522'::uuid,
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;