INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a3b4633f-f389-555f-844d-869082f85fff'::uuid, '8446497b-9183-5777-853d-340063eca952'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('09c178a2-b578-5fca-a4d5-afc7e5e48969'::uuid, '8446497b-9183-5777-853d-340063eca952'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '92011da2-a611-54dd-a64e-6081ab49788f'::uuid,
  '09c178a2-b578-5fca-a4d5-afc7e5e48969'::uuid,
  'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid,
  '8446497b-9183-5777-853d-340063eca952'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '01de5929-c9a3-51b4-9ca3-8e6cfd10a6d7'::uuid,
  '09c178a2-b578-5fca-a4d5-afc7e5e48969'::uuid,
  '8446497b-9183-5777-853d-340063eca952'::uuid,
  'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e27197a4-e5c2-504a-9b76-ee8a58331cfb'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('33b7ba3a-d036-50ca-b18c-20980983ac3b'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('73f8e62f-24ce-596f-8040-7a9ef0ceb884'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b6e92f06-39d2-5490-a059-d31f91f43fe9'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d0846915-8c4f-55da-8f55-51e202d12577'::uuid, '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('836c3c54-b2a5-5381-b738-7fb1a70284c9'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd7441285-125c-5d9a-b7d3-77510a105225'::uuid,
  '836c3c54-b2a5-5381-b738-7fb1a70284c9'::uuid,
  '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid,
  '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6b46bf61-a9e2-579b-9b7a-33a61cc7f468'::uuid,
  '836c3c54-b2a5-5381-b738-7fb1a70284c9'::uuid,
  '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid,
  '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fe558ef7-2730-5c29-9eb3-c96a7765a1c3'::uuid, '4c408ffd-f61b-5dd9-88bf-5a5065140dbf'::uuid, 'b9db1144-db8a-57a8-8052-2191f1cc14b1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30fe7b3f-d45c-5ed8-ba82-ac208dddc97a'::uuid, 'b9db1144-db8a-57a8-8052-2191f1cc14b1'::uuid, '4c408ffd-f61b-5dd9-88bf-5a5065140dbf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fa505dcd-a927-5f68-b95c-54d76dab1bb4'::uuid, '4c408ffd-f61b-5dd9-88bf-5a5065140dbf'::uuid, 'b9db1144-db8a-57a8-8052-2191f1cc14b1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7e7c9339-63ad-56b1-92e9-609c4825a7bb'::uuid, '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2350b015-f913-5f64-9c0a-018e70230436'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4f37ba26-42c3-50eb-8dc3-1647f7340629'::uuid, '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c3333255-bffa-5b69-b82c-320e460d1702'::uuid,
  '4f37ba26-42c3-50eb-8dc3-1647f7340629'::uuid,
  '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid,
  'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0fc169a6-0d93-5001-a662-b9e2117e3f22'::uuid,
  '4f37ba26-42c3-50eb-8dc3-1647f7340629'::uuid,
  'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid,
  '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72a7aed2-9858-55ca-9eaa-95c890e870c5'::uuid, '3dd86691-9e6d-5f95-b08a-8f29f3faa19d'::uuid, '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6053b3f7-7fb5-5e6a-8795-5c560ba9ec5e'::uuid, '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid, '3dd86691-9e6d-5f95-b08a-8f29f3faa19d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cea47b01-19bb-57f0-81a3-d38cfd2033b4'::uuid, '3dd86691-9e6d-5f95-b08a-8f29f3faa19d'::uuid, '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2bcf90d0-e30c-591a-a969-f256149d0891'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3ecb2c2-33dc-5cef-b521-cdd2724e9522'::uuid, '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e574bd2c-181e-5e69-b6b6-83c377861c09'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3dfd705b-c9a8-5005-99a8-a460c494fd1c'::uuid,
  'e574bd2c-181e-5e69-b6b6-83c377861c09'::uuid,
  '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid,
  '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c3121ab0-9fda-57ff-9e0b-986355e16cfa'::uuid,
  'e574bd2c-181e-5e69-b6b6-83c377861c09'::uuid,
  '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid,
  '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a7b799f2-6378-547d-9c81-47781282adf5'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('93e9c397-68ac-5235-84a7-d144ab6a132b'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7c1f503b-94fc-5a89-a5c6-a65908636cb1'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ac9d9d7b-b36a-560d-9108-fea75c6c8152'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('68b8a1d1-1643-5a52-96e5-50c5332a7965'::uuid, '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cd776cef-a6a1-5ce5-a7e0-5b1604dbce2b'::uuid, '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ee531e1e-4a3b-5aed-9dab-5c618e405631'::uuid,
  'cd776cef-a6a1-5ce5-a7e0-5b1604dbce2b'::uuid,
  'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid,
  '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4da0a756-44dd-5f88-8cb2-750c551dbfa4'::uuid,
  'cd776cef-a6a1-5ce5-a7e0-5b1604dbce2b'::uuid,
  '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid,
  'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2f942e83-7a1e-5df5-9883-2c8d6f83d9db'::uuid, '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid, '93dc5596-9d0e-58a4-b02f-69457ebd4204'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('57f9929e-0053-5eb1-b7c0-66456d46b93b'::uuid, '93dc5596-9d0e-58a4-b02f-69457ebd4204'::uuid, '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f1a2f0c3-4da3-549c-8030-e69754ed2f32'::uuid, '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid, '93dc5596-9d0e-58a4-b02f-69457ebd4204'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('87469b6f-7ff3-58f4-b385-7e8c754a86e3'::uuid, '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;