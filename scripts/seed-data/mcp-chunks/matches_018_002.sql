INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6db1d3cd-ae29-58f5-9326-3b11b2945728'::uuid, 'da7ea795-6302-569b-a337-84672894f4df'::uuid, '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('94d53561-8d3e-5163-a059-7bc29e73e1f3'::uuid, '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid, 'da7ea795-6302-569b-a337-84672894f4df'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '425cfaf7-e45d-50d8-a90b-12e9fd123489'::uuid,
  '94d53561-8d3e-5163-a059-7bc29e73e1f3'::uuid,
  '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid,
  'da7ea795-6302-569b-a337-84672894f4df'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '281d58b2-06ea-5ed2-814a-ae5786e9f44d'::uuid,
  '94d53561-8d3e-5163-a059-7bc29e73e1f3'::uuid,
  'da7ea795-6302-569b-a337-84672894f4df'::uuid,
  '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e64eb5fe-45da-5160-acd8-9cbcce797a9c'::uuid, '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid, 'fa80e08b-c8b0-5154-aed5-9cae634d5c58'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58c36e94-fbfc-5511-9def-2e0c016e4465'::uuid, 'fa80e08b-c8b0-5154-aed5-9cae634d5c58'::uuid, '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5b7f3805-4102-55df-9c8e-1eb70794afee'::uuid, '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid, 'fa80e08b-c8b0-5154-aed5-9cae634d5c58'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('637073b4-627f-5c96-9b14-cec8993d9927'::uuid, '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid, 'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('701a5b0b-82d4-5573-b3f3-dd563d986e27'::uuid, 'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid, '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('80b0206f-fa7e-54ea-a771-9155a360855d'::uuid, '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid, 'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bbd45fee-2493-5785-b8f8-f7976121c355'::uuid,
  '80b0206f-fa7e-54ea-a771-9155a360855d'::uuid,
  '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid,
  'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e7b9a494-9170-56e9-8e48-75405330e939'::uuid,
  '80b0206f-fa7e-54ea-a771-9155a360855d'::uuid,
  'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid,
  '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('104bff46-5c0a-517d-915b-ea804e15db70'::uuid, 'eb6564c3-b3de-5c08-8236-eee1ca3d0923'::uuid, '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7097595c-86bf-5b39-9315-6f6bb61302e1'::uuid, '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid, 'eb6564c3-b3de-5c08-8236-eee1ca3d0923'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('04956120-d6f9-52f4-908c-601f4d5be214'::uuid, '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid, 'eb6564c3-b3de-5c08-8236-eee1ca3d0923'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0ce1a963-1c7c-5b72-bc4f-8a629e31553d'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a4044f3d-ca62-55e3-8949-f706dc7a5f99'::uuid, '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('316dec07-6ec0-5b25-a781-335ce415ea57'::uuid, '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b2ef0cd1-0fc1-5a56-8e2f-6093cc11cbbb'::uuid,
  '316dec07-6ec0-5b25-a781-335ce415ea57'::uuid,
  'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid,
  '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '10a7e6ca-1b7b-5481-b8f0-9012f4e97314'::uuid,
  '316dec07-6ec0-5b25-a781-335ce415ea57'::uuid,
  '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid,
  'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('01859dc1-d5ee-52be-bc17-f7e6a27133ae'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4439fff5-eefc-5776-a5bd-58b45316547f'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dbc8b864-753a-5ae2-910b-c95e1c74cb6c'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e67e6b5b-1b8a-5c38-a5b3-8ea4a5ecbc71'::uuid, 'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid, '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c4ca55b2-ba27-53c1-a17b-a22589790f9f'::uuid, '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid, 'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3da6950e-e96e-5b19-800d-ed78c04ae8f3'::uuid, '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid, 'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '07087737-8f85-54c7-9e8b-9914cce7b460'::uuid,
  '3da6950e-e96e-5b19-800d-ed78c04ae8f3'::uuid,
  'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid,
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '804a09a4-41ad-5e0e-9390-c370aac1677a'::uuid,
  '3da6950e-e96e-5b19-800d-ed78c04ae8f3'::uuid,
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0bd890c0-da2f-5933-9c8f-93463a9f57f9'::uuid, '53500f58-1453-5133-8118-eb17c7a347e0'::uuid, 'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4428cde8-a779-5a29-aca3-bd0201beb2eb'::uuid, 'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid, '53500f58-1453-5133-8118-eb17c7a347e0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3b3cda56-00ed-5d97-958f-6037cf020739'::uuid, '53500f58-1453-5133-8118-eb17c7a347e0'::uuid, 'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('247ce1f1-1d8b-50a2-bfb1-e0d16b6108a2'::uuid, 'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b3c3ab05-1941-5d00-aeef-f5557a22a457'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, 'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5b3e8cee-854d-5ee0-90f3-3102be6b9125'::uuid, 'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4bf22318-7a51-53d7-bc8a-6d6a6a482c03'::uuid,
  '5b3e8cee-854d-5ee0-90f3-3102be6b9125'::uuid,
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
  'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '91e5f515-0f32-528d-a0dd-1b7a2b21af89'::uuid,
  '5b3e8cee-854d-5ee0-90f3-3102be6b9125'::uuid,
  'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid,
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e196b5df-dc95-5dc2-b7df-8127290d6453'::uuid, '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid, '3d45d675-a875-5470-942c-38b3923c1d12'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('acd08c64-614d-5374-b116-8bcc2c9bb282'::uuid, '3d45d675-a875-5470-942c-38b3923c1d12'::uuid, '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('840a2af1-5bdb-5731-9c4c-f720fc7a8e03'::uuid, '3d45d675-a875-5470-942c-38b3923c1d12'::uuid, '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c563c50e-c0a2-56b1-a312-e7c8c104eb7e'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, '8446497b-9183-5777-853d-340063eca952'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;