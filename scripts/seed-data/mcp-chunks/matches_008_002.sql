INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1349c613-ee11-58ba-86b3-60faa75bbb37'::uuid, '545134f1-47eb-57dc-89af-f53e59335d17'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ea09b613-a5a7-5603-b1c0-ce6df8872871'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, '545134f1-47eb-57dc-89af-f53e59335d17'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6810e640-b17b-5b5e-a827-70c631cd0ce5'::uuid,
  'ea09b613-a5a7-5603-b1c0-ce6df8872871'::uuid,
  '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid,
  '545134f1-47eb-57dc-89af-f53e59335d17'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c997cf3d-1977-542d-a8b2-976b94ea691d'::uuid,
  'ea09b613-a5a7-5603-b1c0-ce6df8872871'::uuid,
  '545134f1-47eb-57dc-89af-f53e59335d17'::uuid,
  '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5ceb359e-9482-5055-ba41-9b5210aeeabc'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('99823eb6-3553-584c-b319-146899221e75'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4a26afcc-057b-5f83-b017-e3e910f2ee26'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('21980b09-26d8-5eee-ade8-ad5823678aa0'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1a1b9408-80e4-5c01-9d86-da215b037ba8'::uuid, '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0a313e5a-9dd6-5c8b-9ed0-7412ff88efb7'::uuid, '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '65e93f8c-6850-5fc6-a4c6-62dcf0f3ebf9'::uuid,
  '0a313e5a-9dd6-5c8b-9ed0-7412ff88efb7'::uuid,
  '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid,
  '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9bbb95d3-2a99-571c-86b5-d519211b2b8b'::uuid,
  '0a313e5a-9dd6-5c8b-9ed0-7412ff88efb7'::uuid,
  '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid,
  '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c97d0a32-caf6-5ddf-8ebf-e5b2334b0e7a'::uuid, '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid, 'dab59244-4f3e-5e87-a1c5-d2738f719a6a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('092b2657-810a-5935-a4ca-559aa0377dd8'::uuid, 'dab59244-4f3e-5e87-a1c5-d2738f719a6a'::uuid, '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ad9419a4-2065-517f-86db-5b97caa79d01'::uuid, '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid, 'dab59244-4f3e-5e87-a1c5-d2738f719a6a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('62a3d00d-7bfa-5ae9-821b-873045a2e4d3'::uuid, 'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid, '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6a6a5881-758e-5bec-b849-3c943d85e3d9'::uuid, '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid, 'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('69f5d43f-7fee-59ef-841a-8a0cb804ad09'::uuid, '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid, 'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9c263b7d-cd72-5b8c-a0ac-a8fe230159af'::uuid,
  '69f5d43f-7fee-59ef-841a-8a0cb804ad09'::uuid,
  'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid,
  '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'edf1533b-60a2-5efe-bf57-fdd32080e549'::uuid,
  '69f5d43f-7fee-59ef-841a-8a0cb804ad09'::uuid,
  '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid,
  'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3775dd44-57b4-54f4-9676-c5b3fd908040'::uuid, 'ff878e2b-1aec-594f-ad30-e0ed7c4c90ef'::uuid, 'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('70c3845f-2a7e-5f6b-8dfd-e15b72c97558'::uuid, 'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid, 'ff878e2b-1aec-594f-ad30-e0ed7c4c90ef'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d4f77ef6-8d8f-5067-8d20-8bcce8bde515'::uuid, 'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid, 'ff878e2b-1aec-594f-ad30-e0ed7c4c90ef'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b0bce18a-ebde-503d-9788-f23cbe74cfef'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, 'e054a422-05f1-59ce-8a48-b1440c9b8b07'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('407835ab-e04d-5121-8ad5-1209c22ed2a7'::uuid, 'e054a422-05f1-59ce-8a48-b1440c9b8b07'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('19f32a41-cfac-59ce-b901-513222911397'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, 'e054a422-05f1-59ce-8a48-b1440c9b8b07'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dc866221-b1f4-575c-b424-d0242d81c5bd'::uuid,
  '19f32a41-cfac-59ce-b901-513222911397'::uuid,
  'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid,
  'e054a422-05f1-59ce-8a48-b1440c9b8b07'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'afe4d3aa-7506-5ed5-bb59-375c1d78bd7b'::uuid,
  '19f32a41-cfac-59ce-b901-513222911397'::uuid,
  'e054a422-05f1-59ce-8a48-b1440c9b8b07'::uuid,
  'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d82f5b23-9c11-58fc-a38a-b7d0847c6236'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d4aa8d51-f86b-5f94-ba8c-2a1e60ee4ef0'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7d4266de-fe04-529e-97f9-34c20f895dce'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6be81b01-df29-5832-90b6-3117dd918586'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, '74683992-9a31-552a-8e82-cd7205332508'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0a1ae3df-02b3-5723-94ac-f3f508252e9e'::uuid, '74683992-9a31-552a-8e82-cd7205332508'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f5689fb9-2d09-53cc-b9cb-bce6741bd65f'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, '74683992-9a31-552a-8e82-cd7205332508'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '83ace155-a1ec-5a2a-8c79-ec76fc6054e4'::uuid,
  'f5689fb9-2d09-53cc-b9cb-bce6741bd65f'::uuid,
  '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid,
  '74683992-9a31-552a-8e82-cd7205332508'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8fbbcf18-cd47-578f-ba7c-0055a4f43f05'::uuid,
  'f5689fb9-2d09-53cc-b9cb-bce6741bd65f'::uuid,
  '74683992-9a31-552a-8e82-cd7205332508'::uuid,
  '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3f269c23-37b2-55cd-97c5-d99a7c3e4a8b'::uuid, 'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid, 'b822e46a-24e0-5c86-819e-929acfc5a4df'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7ace564-8c16-5279-9582-04a76e0b51ae'::uuid, 'b822e46a-24e0-5c86-819e-929acfc5a4df'::uuid, 'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b147dee0-ab82-593f-a830-586e8f573ef4'::uuid, 'b822e46a-24e0-5c86-819e-929acfc5a4df'::uuid, 'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('95643e02-3323-5e79-aa4f-c41ecd9d97f4'::uuid, 'dd003888-417e-5adb-be0b-88b099d71a72'::uuid, 'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;