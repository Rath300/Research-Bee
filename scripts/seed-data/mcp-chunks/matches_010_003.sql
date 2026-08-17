INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a037318b-2045-56e1-8156-9bb0dcd1a4e8'::uuid, '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid, 'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1dfa3916-dd38-5b19-8f6d-6b40e11b86ba'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9ea6856c-ec49-5006-820c-f781a6e718f3'::uuid, '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8471e4cd-d7c0-5c99-bc1e-ce344721d4a4'::uuid, '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'af587e80-33c5-573e-82d8-c563bbc4abe8'::uuid,
  '8471e4cd-d7c0-5c99-bc1e-ce344721d4a4'::uuid,
  'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid,
  '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ac4c4dad-ecb4-59c6-9e66-aa96c12a2b6b'::uuid,
  '8471e4cd-d7c0-5c99-bc1e-ce344721d4a4'::uuid,
  '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid,
  'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9680399c-1f35-5c69-b613-d78afe56bf5f'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5d478117-40ff-5dab-80ec-18538f48344a'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9c9b6e8b-2bfb-5276-9daf-b404a1eab5b6'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c7995139-a8cc-5ce2-9dda-6fece0100228'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('69bc451b-eb6d-5514-b74e-4b64082db0c2'::uuid, '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('384e361d-380e-5f75-8377-7b91e90abf24'::uuid, '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '67b58555-b50f-5f32-92be-d60dc0a2f5ec'::uuid,
  '384e361d-380e-5f75-8377-7b91e90abf24'::uuid,
  '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid,
  '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '540c776e-084f-5b3a-ac40-17d50585352b'::uuid,
  '384e361d-380e-5f75-8377-7b91e90abf24'::uuid,
  '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid,
  '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('471c27e7-c138-5025-98d2-8b4fc90a747e'::uuid, 'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid, '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('db853e69-2878-5d77-aa93-8b7f6e897456'::uuid, '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid, 'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bca2d12e-7c93-57a7-844e-8bc1fa6c8466'::uuid, '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid, 'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('90783c7a-6898-5c25-9238-3bbce1cdcb3e'::uuid, 'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('49c5f82d-3d4c-5100-9b4d-c772015e2306'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, 'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('60dae97a-f275-55c6-a96e-b98218da4dbc'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, 'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '97fa96f6-77d2-5c25-8e9e-2e8829b2ae95'::uuid,
  '60dae97a-f275-55c6-a96e-b98218da4dbc'::uuid,
  'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid,
  '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4435ff86-f7f9-56b8-ac74-cb8ffd0bd96d'::uuid,
  '60dae97a-f275-55c6-a96e-b98218da4dbc'::uuid,
  '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid,
  'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4f6dd6ad-957a-51d2-9476-a3b6dcd6f333'::uuid, 'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid, 'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('748f5676-2de9-553b-ac8a-f675b09c947e'::uuid, 'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid, 'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a0992ddc-e894-58dc-b2f3-8a9d3bc3a6ea'::uuid, 'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid, 'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ceb1603d-d3dc-5893-abc7-d4b09c374002'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, 'a5eb7d26-8083-5569-82c4-2cbb0f496de7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e8f7c96-387d-5464-ba2d-72fb1bca7554'::uuid, 'a5eb7d26-8083-5569-82c4-2cbb0f496de7'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3b35b7e9-a2f8-563b-bea3-6f233f9dbb8b'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, 'a5eb7d26-8083-5569-82c4-2cbb0f496de7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5a26571c-4a1f-5736-92fd-a0991cc22a2f'::uuid,
  '3b35b7e9-a2f8-563b-bea3-6f233f9dbb8b'::uuid,
  '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid,
  'a5eb7d26-8083-5569-82c4-2cbb0f496de7'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f945588d-0821-5e60-be8a-03c979e7ada2'::uuid,
  '3b35b7e9-a2f8-563b-bea3-6f233f9dbb8b'::uuid,
  'a5eb7d26-8083-5569-82c4-2cbb0f496de7'::uuid,
  '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('01ec8209-c839-5731-896c-8d5f7c1e9bd1'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f19277e5-0285-5b28-a305-41bb1ce625f1'::uuid, '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('88500296-b393-5881-81fb-d9f9668726a7'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6a411a56-1d2f-5f45-9562-0f1665e37acd'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, 'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cb3d1f15-269d-5820-9a6f-3d1ce56f0e01'::uuid, 'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3ef9fef5-7031-5ae6-9aa2-101e04e17181'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, 'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '635a0476-460b-5ef0-94c2-af94890f7ca5'::uuid,
  '3ef9fef5-7031-5ae6-9aa2-101e04e17181'::uuid,
  '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid,
  'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '65fc9594-00c0-5244-9691-65a69e662459'::uuid,
  '3ef9fef5-7031-5ae6-9aa2-101e04e17181'::uuid,
  'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid,
  '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38269715-e34f-5bf5-a8bf-cc2080675d04'::uuid, '0d1d60a3-6461-5d9d-97bf-d3d4eaa8d252'::uuid, '12fb840a-85f9-51d1-a098-9f48ae2a57b8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e7dda20-75d8-5ac5-88e0-946b7718745d'::uuid, '12fb840a-85f9-51d1-a098-9f48ae2a57b8'::uuid, '0d1d60a3-6461-5d9d-97bf-d3d4eaa8d252'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;