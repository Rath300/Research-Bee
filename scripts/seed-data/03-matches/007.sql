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

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('746bb143-7e7f-55ed-8c65-ca3817cb4e0e'::uuid, 'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid, 'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('04e23d20-b93f-594a-b466-b6b2b7b42e9d'::uuid, 'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid, 'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b8af5db6-4a37-5d23-8682-9be4d1ee1938'::uuid, 'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid, 'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cd34ff34-b33f-5eac-8da9-ba58d16edc20'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, 'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0baeca68-bb65-5d2a-b787-b737808faff5'::uuid, 'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('aa61ef11-c03d-59e4-88bd-ba000c6d231d'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, 'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '98095280-0741-588d-a696-c553348ee937'::uuid,
  'aa61ef11-c03d-59e4-88bd-ba000c6d231d'::uuid,
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '96a3aab6-5842-5f36-a62e-17bc3a0d68c6'::uuid,
  'aa61ef11-c03d-59e4-88bd-ba000c6d231d'::uuid,
  'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid,
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6c22f505-d967-5a2a-9b9a-cdca7a9b44fe'::uuid, '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid, '857a3bf5-dbaf-5df7-98b0-5661480e2727'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a341bb7e-e2be-557c-a0fd-28d2e3b51c0d'::uuid, '857a3bf5-dbaf-5df7-98b0-5661480e2727'::uuid, '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc701b1f-c9e8-5716-baf2-b3163808c2e0'::uuid, '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid, '857a3bf5-dbaf-5df7-98b0-5661480e2727'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dff1896c-7ac2-580b-8953-c5cf16e78904'::uuid, 'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7723b6d9-e86f-5809-b7a5-5577c1257e5d'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, 'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d4a96b95-a407-5f9e-9a51-96d6c6f8ea16'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, 'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '61cd2d0f-d7d5-5673-aa6b-0b848ab8226a'::uuid,
  'd4a96b95-a407-5f9e-9a51-96d6c6f8ea16'::uuid,
  'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid,
  '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '58f6553b-1e4f-5849-a537-ce488ec93177'::uuid,
  'd4a96b95-a407-5f9e-9a51-96d6c6f8ea16'::uuid,
  '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid,
  'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dd5a2024-ff1b-5bf8-b468-2a6b83a1db2b'::uuid, '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('13927699-057e-5d4d-8ec4-ce36f31f6390'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a293ee80-0565-5af5-9f74-0c83682fe485'::uuid, '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d43fe2e4-b6bc-5742-86bb-83f9c7cb94e1'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0611204f-6aa3-5417-9fe4-c250a5bac4de'::uuid, 'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4d2bcad0-38bd-5464-bd58-bd4e93784744'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e5ff4932-3b51-5418-afa3-ab6923175467'::uuid,
  '4d2bcad0-38bd-5464-bd58-bd4e93784744'::uuid,
  'e58b467c-3b92-5318-aac0-d48d03143307'::uuid,
  'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '083b6e60-3f66-5706-a84e-baee054c0359'::uuid,
  '4d2bcad0-38bd-5464-bd58-bd4e93784744'::uuid,
  'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid,
  'e58b467c-3b92-5318-aac0-d48d03143307'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7ed66b29-950c-500b-9cd6-e5f14be64211'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f7f8c36e-adef-56ab-826a-30f3858141cd'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('edb3df5f-9872-5bba-be3e-6d33cf087c7a'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5abe8c91-aef0-51a2-bc76-00ae40a1045f'::uuid, '6967920a-06a3-5d3b-9991-777798ca8208'::uuid, '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9e6044a-4d1d-5cf3-b0b7-41c33b708839'::uuid, '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid, '6967920a-06a3-5d3b-9991-777798ca8208'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cd53b687-ec8d-544a-b21d-6e657932eb36'::uuid, '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid, '6967920a-06a3-5d3b-9991-777798ca8208'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bf5f9378-812a-5d19-bc1d-2af6afb3c3df'::uuid,
  'cd53b687-ec8d-544a-b21d-6e657932eb36'::uuid,
  '6967920a-06a3-5d3b-9991-777798ca8208'::uuid,
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '797a8e19-8288-5a1f-98c2-999d906f5609'::uuid,
  'cd53b687-ec8d-544a-b21d-6e657932eb36'::uuid,
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  '6967920a-06a3-5d3b-9991-777798ca8208'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b57ca507-f545-5de5-ac69-b4d48772ed85'::uuid, '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid, '093a1f26-d390-58c7-aec1-16c205cfbd8d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('af5c327f-fa93-53d1-8b54-f76e29ad833d'::uuid, '093a1f26-d390-58c7-aec1-16c205cfbd8d'::uuid, '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('14f8397f-cf46-5752-af7b-b92ba8c13509'::uuid, '093a1f26-d390-58c7-aec1-16c205cfbd8d'::uuid, '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa03496a-833a-5015-9395-bf6c1fd58081'::uuid, '7af7f811-5976-5178-bda2-880a5acb1093'::uuid, '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('90f68d29-e5b8-5630-9910-abed6e68b884'::uuid, '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid, '7af7f811-5976-5178-bda2-880a5acb1093'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('52d9375c-861d-50ff-a8a3-4e9f9f83b92f'::uuid, '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid, '7af7f811-5976-5178-bda2-880a5acb1093'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f218eadf-ac48-5146-8439-39e76f1546d9'::uuid,
  '52d9375c-861d-50ff-a8a3-4e9f9f83b92f'::uuid,
  '7af7f811-5976-5178-bda2-880a5acb1093'::uuid,
  '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9cedebdb-d876-5915-b454-190be9eade4d'::uuid,
  '52d9375c-861d-50ff-a8a3-4e9f9f83b92f'::uuid,
  '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid,
  '7af7f811-5976-5178-bda2-880a5acb1093'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4de69e60-30e6-587d-bcc9-7465b0446aa2'::uuid, '02ed9420-1ec1-5ff8-a431-c0a1e337809f'::uuid, '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('efe8fee4-6c22-500d-84a1-1e0525066118'::uuid, '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid, '02ed9420-1ec1-5ff8-a431-c0a1e337809f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b3b62058-a0a9-5413-b9c3-aca3888631ce'::uuid, '02ed9420-1ec1-5ff8-a431-c0a1e337809f'::uuid, '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b4b278d6-6231-5e89-905e-e45e9355fa89'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, '68b3764d-cec2-57d1-bc8b-48f263aaed8c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4e170b93-7569-5fa4-920d-c2473c258ad6'::uuid, '68b3764d-cec2-57d1-bc8b-48f263aaed8c'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6a87630c-d0e3-51d0-9e9d-a2d45586c211'::uuid, '68b3764d-cec2-57d1-bc8b-48f263aaed8c'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '63438732-4921-50b7-90bf-82a5814476e9'::uuid,
  '6a87630c-d0e3-51d0-9e9d-a2d45586c211'::uuid,
  '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid,
  '68b3764d-cec2-57d1-bc8b-48f263aaed8c'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '61ccff99-9a9e-539d-9c4e-1839e76ecb38'::uuid,
  '6a87630c-d0e3-51d0-9e9d-a2d45586c211'::uuid,
  '68b3764d-cec2-57d1-bc8b-48f263aaed8c'::uuid,
  '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0f08c029-66c2-5ee0-833f-c39d696b4772'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a71bc7c8-dd61-598a-9705-b471ebcf6013'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('daf97901-60f1-5338-9141-01bc2136bbde'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('068be712-103e-5d1e-9763-5b1e4cbc6a7e'::uuid, '28443b95-67f6-5761-846b-913b1661ecc8'::uuid, '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2c702ed1-dd15-59b3-8e21-cabb8f65df87'::uuid, '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid, '28443b95-67f6-5761-846b-913b1661ecc8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('72d451a6-5c22-5737-82c6-6905ddf41317'::uuid, '28443b95-67f6-5761-846b-913b1661ecc8'::uuid, '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cf91bb00-ed75-585e-a517-adac11d379c8'::uuid,
  '72d451a6-5c22-5737-82c6-6905ddf41317'::uuid,
  '28443b95-67f6-5761-846b-913b1661ecc8'::uuid,
  '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd326e8ba-5f46-5142-89c0-4baa6794e1d2'::uuid,
  '72d451a6-5c22-5737-82c6-6905ddf41317'::uuid,
  '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid,
  '28443b95-67f6-5761-846b-913b1661ecc8'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f494a8b4-334a-50e0-b17a-5e37bcbd819b'::uuid, '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid, 'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('621c2f22-1a1f-5861-ad8c-f83f6f77568d'::uuid, 'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid, '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('65ca3f30-9211-5e76-b8b4-1e425f505dea'::uuid, '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid, 'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f82423bd-f489-57bd-b578-654cc4acb5f5'::uuid, 'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid, '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('10f3f4b4-f120-5d13-8334-161acfb8bed4'::uuid, '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid, 'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('59d8c8a4-a107-5cd8-89da-93009d731fd1'::uuid, '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid, 'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c68bf5b3-30c1-5d89-aafc-c8c42d66f7fd'::uuid,
  '59d8c8a4-a107-5cd8-89da-93009d731fd1'::uuid,
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bf7aed16-45ec-5e68-a759-9e86338b87f7'::uuid,
  '59d8c8a4-a107-5cd8-89da-93009d731fd1'::uuid,
  '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid,
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3121978f-11fc-5759-b8e9-90d5d9f72310'::uuid, 'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8adf3e90-1b71-5d58-8679-04f70fb84a28'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, 'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0cb20542-fd86-5ec7-9a51-f0adafd1dbaf'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, 'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('482fcaa5-f26a-5522-a87d-68609cfffc3f'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ffb5247a-ff46-58b5-b98c-d6abcb27bb6d'::uuid, '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('718ee0ad-918b-5c64-a5e5-b46c65705a79'::uuid, '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e80b7d04-cf0e-5623-8183-fa2ae90a8b08'::uuid,
  '718ee0ad-918b-5c64-a5e5-b46c65705a79'::uuid,
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid,
  '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '909bfa4e-56e1-5bef-bcae-7f850aa8c7f3'::uuid,
  '718ee0ad-918b-5c64-a5e5-b46c65705a79'::uuid,
  '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid,
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0736c41d-567c-566d-a04a-7c41cb772397'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1a5ce1fc-fbdc-56c4-b60a-ab32a59897ed'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('37d95acf-4f4a-5d3f-873a-4e08743d0def'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3f683750-f6c4-5fa4-862e-a214dd183397'::uuid, 'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid, '11da8f2c-7470-5582-a044-f03903e3992c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6ca4a17e-b8f3-56e5-a641-7e7041d039c8'::uuid, '11da8f2c-7470-5582-a044-f03903e3992c'::uuid, 'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('635b6018-18fe-54dd-a89a-9e68d2195f3f'::uuid, '11da8f2c-7470-5582-a044-f03903e3992c'::uuid, 'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '64157222-62cd-578d-a719-46ce197b1e56'::uuid,
  '635b6018-18fe-54dd-a89a-9e68d2195f3f'::uuid,
  'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid,
  '11da8f2c-7470-5582-a044-f03903e3992c'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9c4fe923-cd8f-5778-8b90-4913bc8aed69'::uuid,
  '635b6018-18fe-54dd-a89a-9e68d2195f3f'::uuid,
  '11da8f2c-7470-5582-a044-f03903e3992c'::uuid,
  'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3c933245-cb53-56a3-8adc-7f5252a70c6d'::uuid, '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid, '011fcd13-5185-5206-809d-115892a24501'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('642c7753-a478-552a-b64f-99d957ea5b64'::uuid, '011fcd13-5185-5206-809d-115892a24501'::uuid, '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a67575ad-753a-5642-9cb8-89eece138f9f'::uuid, '011fcd13-5185-5206-809d-115892a24501'::uuid, '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f262cb94-d969-58fe-b65b-ff73892d6341'::uuid, 'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f29a7ddc-f3af-5743-9e59-97541509377f'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, 'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('36fed797-6fd7-5837-af67-3da5536cdbf1'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, 'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dd551a30-36fc-50ad-82ed-d3b73a986557'::uuid,
  '36fed797-6fd7-5837-af67-3da5536cdbf1'::uuid,
  'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid,
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '63d586b7-7985-5d7e-a5fd-52bfb10117fe'::uuid,
  '36fed797-6fd7-5837-af67-3da5536cdbf1'::uuid,
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('12b54ce8-ab44-55f8-8e81-b300b450d32b'::uuid, '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid, '170229dc-697e-5b38-8001-6e6980b262ff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('565a6f9a-1a32-5a26-b839-dd0916ffe992'::uuid, '170229dc-697e-5b38-8001-6e6980b262ff'::uuid, '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9e84b550-bbcb-5dc2-95cc-ca86bed12fb8'::uuid, '170229dc-697e-5b38-8001-6e6980b262ff'::uuid, '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('637ed42a-4ee3-5b63-964d-6e8693a88ffc'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4867551a-8505-56e7-89bf-caefcf87ad77'::uuid, '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ecccc729-1224-5348-bf3d-0f7bebb03b5c'::uuid, '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7dbd10d7-1bcf-5de0-88a2-a1efdbe45c38'::uuid,
  'ecccc729-1224-5348-bf3d-0f7bebb03b5c'::uuid,
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9d4f3be9-45d3-56eb-8643-b19253c475a8'::uuid,
  'ecccc729-1224-5348-bf3d-0f7bebb03b5c'::uuid,
  '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid,
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8543da9f-e2d9-5eed-9400-833095dd1441'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5eefd1ed-c53d-5586-8cb2-4c1249bf0e8b'::uuid, '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2ec67a9f-8b16-5e04-b9b5-e7be02ee57bd'::uuid, '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('18b3e17e-debb-5559-a43c-cde3adf71bcd'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, '5a3de029-a188-532a-b55d-61583f327471'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('af976013-1edf-5718-b52b-40ec4a91b93d'::uuid, '5a3de029-a188-532a-b55d-61583f327471'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0091d997-b6a0-58aa-9f03-f018fa98bb71'::uuid, '5a3de029-a188-532a-b55d-61583f327471'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '997e5e18-007d-52bb-bd67-89488e08896c'::uuid,
  '0091d997-b6a0-58aa-9f03-f018fa98bb71'::uuid,
  '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid,
  '5a3de029-a188-532a-b55d-61583f327471'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '564d9431-fd89-5c02-893c-6d725165215f'::uuid,
  '0091d997-b6a0-58aa-9f03-f018fa98bb71'::uuid,
  '5a3de029-a188-532a-b55d-61583f327471'::uuid,
  '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0685edde-bbc3-5553-ba90-2dd4af3ab5f5'::uuid, '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid, '628a4781-3a09-5aca-bc6a-7ae2fc619371'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5012e38c-1ba5-5806-9e45-a0353cdc8132'::uuid, '628a4781-3a09-5aca-bc6a-7ae2fc619371'::uuid, '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4818572a-1a59-57b7-a239-34b1f2562ec0'::uuid, '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid, '628a4781-3a09-5aca-bc6a-7ae2fc619371'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('170b7d6e-4849-57b8-a422-4aefb968f95e'::uuid, '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('76572776-6e2b-5c09-96c5-bca14685258f'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e54bfc81-bd9f-5111-b5ba-0398ad06699c'::uuid, '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd3840da0-6679-5fbf-8bc5-98d52a937a3b'::uuid,
  'e54bfc81-bd9f-5111-b5ba-0398ad06699c'::uuid,
  '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid,
  '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '20571ff3-39fc-54b3-9ebb-acda649a766f'::uuid,
  'e54bfc81-bd9f-5111-b5ba-0398ad06699c'::uuid,
  '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid,
  '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5df10b52-2865-528c-95ef-3e16d7d6fb00'::uuid, 'f59d5527-b411-526d-b2aa-0069357fa215'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1fba8176-1652-5d93-bff4-4eaf72d578b5'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, 'f59d5527-b411-526d-b2aa-0069357fa215'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('feddca69-2017-56c8-9534-1e2121cade21'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, 'f59d5527-b411-526d-b2aa-0069357fa215'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('afb2eb31-bbf8-58ea-85f5-aa6320e9bbc8'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dbeaf220-e249-5790-a130-ece6f5a55e51'::uuid, '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bb2cf088-6b75-5ae7-a65e-c83b246c06e3'::uuid, '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '07ae72fc-7a61-57ff-9cf7-45e37782b7dc'::uuid,
  'bb2cf088-6b75-5ae7-a65e-c83b246c06e3'::uuid,
  'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid,
  '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '89a4afed-0d2b-56e4-b56e-ba50bca59a61'::uuid,
  'bb2cf088-6b75-5ae7-a65e-c83b246c06e3'::uuid,
  '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid,
  'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('811b1ea7-1be9-5606-83b6-3ae3398c6de6'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, '743deae9-0a26-5472-9f76-6e4aea019515'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8a64a055-8871-564d-afb2-2f6ffc8f0331'::uuid, '743deae9-0a26-5472-9f76-6e4aea019515'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1cd89215-8a09-5d95-8242-85edfc4965ab'::uuid, '743deae9-0a26-5472-9f76-6e4aea019515'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('748f89a8-0a97-532e-bffd-9e0d48a9b78d'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, 'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fad8bdcf-ac18-5191-bab1-6af234fdd98d'::uuid, 'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d007b8e0-6658-5f56-95ee-40417093308f'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, 'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a1bca44b-5a1b-5bc1-aef8-5938a6d48a35'::uuid,
  'd007b8e0-6658-5f56-95ee-40417093308f'::uuid,
  '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid,
  'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '26b76898-f88e-556d-9663-0becb536ca90'::uuid,
  'd007b8e0-6658-5f56-95ee-40417093308f'::uuid,
  'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid,
  '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('05ecf67d-8319-5d4b-a90b-cb1fba41ff8e'::uuid, '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid, 'ff878e2b-1aec-594f-ad30-e0ed7c4c90ef'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('29ee2a86-0d82-5a78-8a41-bed7cd1c160e'::uuid, 'ff878e2b-1aec-594f-ad30-e0ed7c4c90ef'::uuid, '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4e26fb9b-9f8e-50c9-9dec-a894970c1c6b'::uuid, '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid, 'ff878e2b-1aec-594f-ad30-e0ed7c4c90ef'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('42e5d141-296b-5cd5-865f-57d454a8bb62'::uuid, '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3cdc11cd-cc46-52d7-ba45-364cb21d207f'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f309e240-1bcf-572c-b43b-343d93b3ef5e'::uuid, '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '14af4660-0bb7-510c-b35e-65a1ed6610b3'::uuid,
  'f309e240-1bcf-572c-b43b-343d93b3ef5e'::uuid,
  '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid,
  'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2e70c508-8dba-5bbb-946c-0b6afa87e084'::uuid,
  'f309e240-1bcf-572c-b43b-343d93b3ef5e'::uuid,
  'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid,
  '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8c69263-e573-5652-a66b-5b9fd40bb858'::uuid, '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('986980eb-6820-5c89-bb2d-9d84dd3e7de2'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8867afd7-3e11-500c-9f44-7c2b4c5d1f43'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('717d150f-ecb1-5a9c-a4d6-55cce278ca4c'::uuid, 'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid, 'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('904ffc8f-6191-5a22-8779-09fe05dbe0fa'::uuid, 'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid, 'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('06411533-aa73-5951-89cd-0386a2d289d6'::uuid, 'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid, 'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2d4888fc-1530-5078-9b05-40dc0f0bd455'::uuid,
  '06411533-aa73-5951-89cd-0386a2d289d6'::uuid,
  'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid,
  'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '67455786-e176-5589-bc86-2183af8096ed'::uuid,
  '06411533-aa73-5951-89cd-0386a2d289d6'::uuid,
  'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid,
  'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('166ac3cb-041b-54d5-a099-d7500a972967'::uuid, 'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bf3b224a-0aaa-5fde-a2b6-26a074bf7dee'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, 'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('634beaab-ecfe-58dc-a4da-a2ecace7b8b7'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, 'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('268b6a80-6b23-5e98-b128-933fe263754c'::uuid, 'd18c35cd-30d2-5a94-bfe3-7782f41a3dc6'::uuid, 'dd003888-417e-5adb-be0b-88b099d71a72'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b7f0985c-fac7-5bdf-a217-7545169a26b1'::uuid, 'dd003888-417e-5adb-be0b-88b099d71a72'::uuid, 'd18c35cd-30d2-5a94-bfe3-7782f41a3dc6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0614fc15-784d-506b-acee-38cc4c0f874b'::uuid, 'd18c35cd-30d2-5a94-bfe3-7782f41a3dc6'::uuid, 'dd003888-417e-5adb-be0b-88b099d71a72'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fff6dd79-0f81-5704-81a2-b3beb02a9537'::uuid,
  '0614fc15-784d-506b-acee-38cc4c0f874b'::uuid,
  'd18c35cd-30d2-5a94-bfe3-7782f41a3dc6'::uuid,
  'dd003888-417e-5adb-be0b-88b099d71a72'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd0ff88d0-2cdd-5de3-bdf6-9d65eb5f0ede'::uuid,
  '0614fc15-784d-506b-acee-38cc4c0f874b'::uuid,
  'dd003888-417e-5adb-be0b-88b099d71a72'::uuid,
  'd18c35cd-30d2-5a94-bfe3-7782f41a3dc6'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('612b2b2f-54cc-5b31-9631-f77990a4be67'::uuid, '17e09f15-8bff-59bc-a0d2-6ddba4ef2622'::uuid, '6358d0af-c374-5016-a887-36f53d4bd779'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1556f8c9-5719-5465-9804-74a6d4f386df'::uuid, '6358d0af-c374-5016-a887-36f53d4bd779'::uuid, '17e09f15-8bff-59bc-a0d2-6ddba4ef2622'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('63a25a05-12fc-5256-abcf-6eb7cc37d5ba'::uuid, '17e09f15-8bff-59bc-a0d2-6ddba4ef2622'::uuid, '6358d0af-c374-5016-a887-36f53d4bd779'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('123a0993-8d02-58d2-b816-089bd768fdab'::uuid, '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid, '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('20cfd792-403a-5051-bc1e-cf3f42a19681'::uuid, '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid, '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e8410cfa-ae38-575b-9074-ac742cacb3da'::uuid, '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid, '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cdfd3f3b-85b4-5951-8cad-fd54c01f601a'::uuid,
  'e8410cfa-ae38-575b-9074-ac742cacb3da'::uuid,
  '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid,
  '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6f5b1623-e870-5e1c-a7b0-7b92c0646d7c'::uuid,
  'e8410cfa-ae38-575b-9074-ac742cacb3da'::uuid,
  '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid,
  '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('063f3012-f02c-5144-aa4a-9a6667370d9b'::uuid, 'e77bd75c-1999-5e56-92a9-44fe5a7f4f21'::uuid, 'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e9e9e6b-3cfe-57f9-abcf-091426d8ea8a'::uuid, 'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid, 'e77bd75c-1999-5e56-92a9-44fe5a7f4f21'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a34961ca-7751-50b1-95ff-cff6949cee97'::uuid, 'e77bd75c-1999-5e56-92a9-44fe5a7f4f21'::uuid, 'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3724a9ae-182b-5574-a29c-2bbfe8dd0b74'::uuid, 'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid, 'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('06dbb60f-446c-50d5-8bdb-90b642ff26a9'::uuid, 'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid, 'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4499f88c-8ca3-5d12-b074-4bb08ab8b09a'::uuid, 'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid, 'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '216e5c63-6407-5bb5-973d-6f61208ffa87'::uuid,
  '4499f88c-8ca3-5d12-b074-4bb08ab8b09a'::uuid,
  'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid,
  'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '63c340b8-287c-5ae1-9ab6-c882a17de890'::uuid,
  '4499f88c-8ca3-5d12-b074-4bb08ab8b09a'::uuid,
  'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid,
  'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('06844a17-aba0-57ca-8144-ba1a0a0f1d04'::uuid, 'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid, 'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9e205c95-55dc-59de-9536-98eea2ce86c5'::uuid, 'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid, 'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a76fc431-be86-5108-b89c-64a4781f7863'::uuid, 'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid, 'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('efbc425b-6106-55ca-886e-6e0f5e2c1f93'::uuid, 'e64abfce-a585-5002-987d-172bddea50c0'::uuid, 'ba1b768f-4f9b-5c27-8d62-0b88991fe853'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d31c56de-9922-517f-9fae-45c3a6af2038'::uuid, 'ba1b768f-4f9b-5c27-8d62-0b88991fe853'::uuid, 'e64abfce-a585-5002-987d-172bddea50c0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d5dbac9a-f573-5a8d-a5ef-b4132c48aff4'::uuid, 'ba1b768f-4f9b-5c27-8d62-0b88991fe853'::uuid, 'e64abfce-a585-5002-987d-172bddea50c0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd85dd060-7194-5b83-b1fa-8c848db0cd32'::uuid,
  'd5dbac9a-f573-5a8d-a5ef-b4132c48aff4'::uuid,
  'e64abfce-a585-5002-987d-172bddea50c0'::uuid,
  'ba1b768f-4f9b-5c27-8d62-0b88991fe853'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '009ae04c-fa58-523b-8811-c115a141395c'::uuid,
  'd5dbac9a-f573-5a8d-a5ef-b4132c48aff4'::uuid,
  'ba1b768f-4f9b-5c27-8d62-0b88991fe853'::uuid,
  'e64abfce-a585-5002-987d-172bddea50c0'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8488fde4-f92f-5980-8d11-1440810199cb'::uuid, '99ceddcc-d9c2-5912-8674-a0ed919a9522'::uuid, '15325c50-350f-5b7b-935d-79f8d63d9a1a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('52409373-4175-5951-9d54-c472e857bb9a'::uuid, '15325c50-350f-5b7b-935d-79f8d63d9a1a'::uuid, '99ceddcc-d9c2-5912-8674-a0ed919a9522'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2605c529-5d61-56c6-8a5c-b0a06dbd946e'::uuid, '15325c50-350f-5b7b-935d-79f8d63d9a1a'::uuid, '99ceddcc-d9c2-5912-8674-a0ed919a9522'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c536c6bb-0328-524f-98ad-f8d1613839a4'::uuid, 'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid, 'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('010d813e-5871-51cc-a95b-33033f6d5717'::uuid, 'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid, 'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6677ae7c-3736-5f81-b4de-cad9696a9e2a'::uuid, 'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid, 'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5edbca70-6453-5f49-ab0f-ea6439f07210'::uuid,
  '6677ae7c-3736-5f81-b4de-cad9696a9e2a'::uuid,
  'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid,
  'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9cb8dfb8-9613-5e1f-8477-927b2f2c2ff9'::uuid,
  '6677ae7c-3736-5f81-b4de-cad9696a9e2a'::uuid,
  'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid,
  'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('737ffb31-6822-59b8-b32f-93fd80827182'::uuid, '857a3bf5-dbaf-5df7-98b0-5661480e2727'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ef0988fd-4a22-5a6b-b956-47bb53088a31'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, '857a3bf5-dbaf-5df7-98b0-5661480e2727'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('40eb1c6c-3d6b-5b23-a3b5-3bfc2a37a085'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, '857a3bf5-dbaf-5df7-98b0-5661480e2727'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('778de110-c197-5005-8442-a900df39f06d'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d2804596-9e7b-5cbc-9502-1533a9cf2600'::uuid, '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c834b603-6b48-579a-9793-175d5c63eb24'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c20929c0-5dc5-54bc-844c-47c5d1a7b319'::uuid,
  'c834b603-6b48-579a-9793-175d5c63eb24'::uuid,
  '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid,
  '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a5bc188a-b49c-54b0-9460-ae045500def1'::uuid,
  'c834b603-6b48-579a-9793-175d5c63eb24'::uuid,
  '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid,
  '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8eef01d0-15e8-53e0-b76e-218a3ee291aa'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a4c64bd6-718a-5f19-bbc3-a4d2825cb31c'::uuid, '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7287ba61-e9a6-5d8b-9f5f-09f7fb9d3d7f'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ec11720e-a410-56b5-a8e8-f3e1c55c3aea'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, '94792f80-7643-5ea5-8a93-3248a225121b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0ab60b89-3808-5bdc-a630-3e0452e37558'::uuid, '94792f80-7643-5ea5-8a93-3248a225121b'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0b8f1d8b-b897-5c21-afe9-9646fa2f6ebc'::uuid, '94792f80-7643-5ea5-8a93-3248a225121b'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f73dfd43-78b5-5b87-86f6-7f551fdf9834'::uuid,
  '0b8f1d8b-b897-5c21-afe9-9646fa2f6ebc'::uuid,
  'a0817194-368d-5771-976a-7836d36b620b'::uuid,
  '94792f80-7643-5ea5-8a93-3248a225121b'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '89d2b95f-a562-5663-b198-f0f24f5dd0fc'::uuid,
  '0b8f1d8b-b897-5c21-afe9-9646fa2f6ebc'::uuid,
  '94792f80-7643-5ea5-8a93-3248a225121b'::uuid,
  'a0817194-368d-5771-976a-7836d36b620b'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('80e4fc79-99d1-55f2-879a-4b5516dc30e7'::uuid, 'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid, '800de340-7fca-5636-aa2d-5bc6b317e3c1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3b6101b8-14ec-52c9-9a2b-389290f83e41'::uuid, '800de340-7fca-5636-aa2d-5bc6b317e3c1'::uuid, 'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d0df4a90-3998-5149-b46e-bfb3fa27cc6e'::uuid, '800de340-7fca-5636-aa2d-5bc6b317e3c1'::uuid, 'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e6849914-a848-5ef2-8992-480acc653ecb'::uuid, '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid, '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;
