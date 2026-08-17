INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bb844046-6c2d-5eb0-aaed-fb7bf7c0bbb4'::uuid, '45150839-6840-5863-8a4a-6531e7974e3f'::uuid, 'eb6564c3-b3de-5c08-8236-eee1ca3d0923'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4071a933-269f-5df4-8496-63cb24908f1c'::uuid, 'eb6564c3-b3de-5c08-8236-eee1ca3d0923'::uuid, '45150839-6840-5863-8a4a-6531e7974e3f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('769f3521-bbf1-557b-8088-664e774da9bd'::uuid, '45150839-6840-5863-8a4a-6531e7974e3f'::uuid, 'eb6564c3-b3de-5c08-8236-eee1ca3d0923'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('035c7775-000e-5168-806a-cfa71610dafa'::uuid, '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d197a477-6a41-59e9-a5be-54a1c1277b32'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2897ef0a-8608-5443-9581-8babbd4b3dac'::uuid, '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c3ccc2c1-28d6-50f9-8777-3f6d42492d35'::uuid,
  '2897ef0a-8608-5443-9581-8babbd4b3dac'::uuid,
  '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid,
  'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'eeda8663-eb51-5ee3-8492-ebd401d9a27e'::uuid,
  '2897ef0a-8608-5443-9581-8babbd4b3dac'::uuid,
  'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid,
  '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('41fade3c-bb49-5584-b5f2-6cea54d488d0'::uuid, 'a44778cb-c276-5a51-bc92-31e723fba28c'::uuid, 'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('be5de321-2c96-590b-afa5-3bbc2f554199'::uuid, 'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid, 'a44778cb-c276-5a51-bc92-31e723fba28c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc229ab5-b8aa-585b-b980-6e1df2a85c98'::uuid, 'a44778cb-c276-5a51-bc92-31e723fba28c'::uuid, 'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('290f2145-8413-585d-bd74-591f873db596'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, '53500f58-1453-5133-8118-eb17c7a347e0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fb56e6bc-f6ff-5f3c-b840-4dba54674703'::uuid, '53500f58-1453-5133-8118-eb17c7a347e0'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bac40750-d401-53b2-bafe-106fcaf3c930'::uuid, '53500f58-1453-5133-8118-eb17c7a347e0'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4520db47-762f-59d7-8372-ad36cd159c9c'::uuid,
  'bac40750-d401-53b2-bafe-106fcaf3c930'::uuid,
  'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid,
  '53500f58-1453-5133-8118-eb17c7a347e0'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4bb31ce3-19d9-5bd1-9350-824f192311a9'::uuid,
  'bac40750-d401-53b2-bafe-106fcaf3c930'::uuid,
  '53500f58-1453-5133-8118-eb17c7a347e0'::uuid,
  'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ff9a7602-1e8e-51af-b54b-8fd1bde26319'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('417533cd-0a6b-5c0c-9424-1c4b455ae1a6'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cada7cfe-ded8-5da6-8f84-5418073f3864'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b50c4598-91e3-5606-b3b0-cbdb9eeca3d3'::uuid, 'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid, 'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aa14265b-6fbb-576f-ba0e-025b92c3b4e3'::uuid, 'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid, 'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5616567e-8478-5b86-a1a1-93b006306b82'::uuid, 'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid, 'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6f95451c-97c3-519a-a5b1-5cb5747207e7'::uuid,
  '5616567e-8478-5b86-a1a1-93b006306b82'::uuid,
  'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid,
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1092fce2-6c3e-5484-9124-82cf470155e6'::uuid,
  '5616567e-8478-5b86-a1a1-93b006306b82'::uuid,
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
  'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c2a326bf-9ae1-5e7b-a521-ae4feddf11ac'::uuid, '83edcab9-6153-5dfa-86b0-e2e832723741'::uuid, '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f5f304dc-1e65-53cc-b9ed-ce020702d318'::uuid, '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid, '83edcab9-6153-5dfa-86b0-e2e832723741'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a657aa5f-36f4-5479-a9fb-265a1debb4b5'::uuid, '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid, '83edcab9-6153-5dfa-86b0-e2e832723741'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('57918583-647a-5303-86c3-618ce1b65513'::uuid, '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bf3c9bac-3644-5daf-a397-bda913493d51'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0e85a772-f7f9-5c08-a171-c11e92adddf6'::uuid, '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bef8ad18-4832-54b8-8638-0a6d41187bd4'::uuid,
  '0e85a772-f7f9-5c08-a171-c11e92adddf6'::uuid,
  '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid,
  'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3dac71ef-158c-5427-b979-e11c9c56afbc'::uuid,
  '0e85a772-f7f9-5c08-a171-c11e92adddf6'::uuid,
  'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid,
  '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('63519e5a-b1a6-59ac-bd46-f2bf16c0ea8f'::uuid, '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('12616925-9ea0-5a19-82f6-a33f40ca3eb5'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c29a057c-92c3-51e7-807d-5a9cb464d721'::uuid, '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c77a41d3-0e8c-5d45-b934-f0ee3278ffdd'::uuid, '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid, '4c408ffd-f61b-5dd9-88bf-5a5065140dbf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8a2d9782-f7f7-5599-9e2a-81f0669fd428'::uuid, '4c408ffd-f61b-5dd9-88bf-5a5065140dbf'::uuid, '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e060b23e-6513-50e4-a74b-3b6427282f45'::uuid, '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid, '4c408ffd-f61b-5dd9-88bf-5a5065140dbf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7373324b-dbea-50a1-9fde-ba75525a1b12'::uuid,
  'e060b23e-6513-50e4-a74b-3b6427282f45'::uuid,
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  '4c408ffd-f61b-5dd9-88bf-5a5065140dbf'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'becaf4f7-cc4e-562b-8bb2-31251bee5c1a'::uuid,
  'e060b23e-6513-50e4-a74b-3b6427282f45'::uuid,
  '4c408ffd-f61b-5dd9-88bf-5a5065140dbf'::uuid,
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;