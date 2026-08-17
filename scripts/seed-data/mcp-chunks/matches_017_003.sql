INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7ff77c8e-7f96-5fd4-918d-1caeaab9fc2e'::uuid, '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid, '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c4e70572-855c-5e51-954a-2a83de73cd55'::uuid, '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid, '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b6b9e321-463c-57ea-bb2a-6b53752f2284'::uuid, '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid, '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8275f02b-399f-5a59-b6fc-3e2465a5fd58'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, 'b8f3c581-831a-5e5a-a62b-11337746e107'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('182de8d2-ff23-5980-9704-0bb948b16ecd'::uuid, 'b8f3c581-831a-5e5a-a62b-11337746e107'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b8d356d6-f96a-5286-b7b5-a47e4a1f8023'::uuid, 'b8f3c581-831a-5e5a-a62b-11337746e107'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6927736e-ac5b-55c0-9a27-dc5c4245d5c8'::uuid,
  'b8d356d6-f96a-5286-b7b5-a47e4a1f8023'::uuid,
  'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid,
  'b8f3c581-831a-5e5a-a62b-11337746e107'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '65457eb1-cd5e-518e-803f-da74df1777d7'::uuid,
  'b8d356d6-f96a-5286-b7b5-a47e4a1f8023'::uuid,
  'b8f3c581-831a-5e5a-a62b-11337746e107'::uuid,
  'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8e76a34e-e817-535a-b195-fe45228f9955'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, 'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7b2a8132-af6c-5a61-b8a1-06c98e0674e4'::uuid, 'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fd692b78-a2ce-56d5-ae5e-f87ca6b8d66f'::uuid, 'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4efbaff5-da55-5277-93a4-6e9735f41ba8'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, 'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('22ccd4d6-35ca-5829-9663-dc1f01ed218c'::uuid, 'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('72f4a2bd-09c6-5bf8-86d7-ed792d27d728'::uuid, 'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '59e328ab-cc42-517b-a07f-45b46e4735fe'::uuid,
  '72f4a2bd-09c6-5bf8-86d7-ed792d27d728'::uuid,
  'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid,
  'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bf53f15a-2c18-55c9-9d0c-422efde089e4'::uuid,
  '72f4a2bd-09c6-5bf8-86d7-ed792d27d728'::uuid,
  'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid,
  'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('49aeaeb1-078c-5c03-b941-44c129c29cea'::uuid, '345c8171-44e4-513a-98ee-6a601680d628'::uuid, '4c0bc010-334e-5366-bbb5-89f5fbd0f1c1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1b830819-b8d9-5bf2-8193-e26b22a356fb'::uuid, '4c0bc010-334e-5366-bbb5-89f5fbd0f1c1'::uuid, '345c8171-44e4-513a-98ee-6a601680d628'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('09ef492d-527b-5539-b712-87d45a728e9c'::uuid, '345c8171-44e4-513a-98ee-6a601680d628'::uuid, '4c0bc010-334e-5366-bbb5-89f5fbd0f1c1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('390c2846-d8c0-5069-addd-1dc6aee19b62'::uuid, '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid, '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('59dcef5b-9364-5d43-9fca-b923ac2c5544'::uuid, '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid, '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c129fb1a-7ff3-5600-9a96-dec0b82dd747'::uuid, '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid, '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '124b564d-b9ad-5b63-afc8-5ebf58ceb774'::uuid,
  'c129fb1a-7ff3-5600-9a96-dec0b82dd747'::uuid,
  '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid,
  '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cf49784b-98d9-5128-b36d-e6d8cc48197a'::uuid,
  'c129fb1a-7ff3-5600-9a96-dec0b82dd747'::uuid,
  '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid,
  '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f23f7bca-78c5-5903-b33c-e78a8dd9f76e'::uuid, '3bd2ebbe-1d87-59b0-bbcc-11eda780a6bc'::uuid, '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('01f22f3f-636d-5813-a90d-c64bd1a8386a'::uuid, '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid, '3bd2ebbe-1d87-59b0-bbcc-11eda780a6bc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('961ffaeb-5405-5c02-9740-50f43b5c835f'::uuid, '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid, '3bd2ebbe-1d87-59b0-bbcc-11eda780a6bc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9290e56b-67bb-52ba-a042-11b15cc05578'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f20e26b6-9f98-5eca-8767-1ab5cb0cdb2a'::uuid, '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fca1bff1-3853-5a89-8d0f-8aabdef84bdc'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '18b06fae-da79-5190-b7f5-e008d2ae8710'::uuid,
  'fca1bff1-3853-5a89-8d0f-8aabdef84bdc'::uuid,
  '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid,
  '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9297e37e-2a87-5ebd-8fc9-75214ff94dda'::uuid,
  'fca1bff1-3853-5a89-8d0f-8aabdef84bdc'::uuid,
  '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid,
  '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0974df8f-42ca-579c-a6e3-b7a6b62a8272'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('460a3544-ee53-5f00-987b-54c739db452f'::uuid, '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('60b52680-125d-5adc-b7fd-15f6f681b484'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f018f116-e23e-5ef1-8159-a18fe0e1632f'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6490b98e-354c-5a66-9ebe-b094ccf5118a'::uuid, '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('89b7fc0d-a3e7-5b6d-bdce-ca1173318623'::uuid, '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cd9175ac-c9f9-560b-b642-61a86c472da3'::uuid,
  '89b7fc0d-a3e7-5b6d-bdce-ca1173318623'::uuid,
  '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid,
  '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '59f9cf9a-320b-525f-a0fd-0843f99581e3'::uuid,
  '89b7fc0d-a3e7-5b6d-bdce-ca1173318623'::uuid,
  '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid,
  '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;