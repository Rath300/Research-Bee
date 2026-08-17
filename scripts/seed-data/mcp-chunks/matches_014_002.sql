INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '438b7a56-1758-5ae4-804c-d602f4093a94'::uuid,
  'f5b08a1f-7c6f-5537-b675-6ed5aac4216c'::uuid,
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid,
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6f42e02b-5335-50f2-83e6-58d51f488f6f'::uuid, 'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid, '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d4c797cc-22f5-5f4c-8097-b02d9de3b54c'::uuid, '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid, 'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a97bc62b-f81f-5ccc-ac1b-40434b1ebccd'::uuid, '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid, 'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b7322cca-f97d-5a5f-8c06-cc78b6c98017'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a731f7cc-ca57-5f58-97a5-d277988ed3c6'::uuid, '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c4f546f2-f30d-5707-a848-2618111634db'::uuid, '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c12eae19-dab5-5ab5-9d92-e3cb4b4bb801'::uuid,
  'c4f546f2-f30d-5707-a848-2618111634db'::uuid,
  'eebb922f-dd26-57ea-a213-9149abab4313'::uuid,
  '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ba8870bc-bd2e-5706-8736-49c45289dd51'::uuid,
  'c4f546f2-f30d-5707-a848-2618111634db'::uuid,
  '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid,
  'eebb922f-dd26-57ea-a213-9149abab4313'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c8578bb-8977-58cd-9db0-f366433b0216'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bd08a43c-59f6-5fe7-8a12-a2872de875c3'::uuid, '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b681f3aa-512c-5e3d-aa66-1a24ad93d97c'::uuid, '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e639ee27-bb0f-51c7-9707-831a00574d80'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, 'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4a457ad3-6596-5ab7-9f38-1b6d606d766e'::uuid, 'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2ad3b52f-8095-507e-bf05-f78656465b14'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, 'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b6de01c0-246c-5863-bee7-37067a1b8103'::uuid,
  '2ad3b52f-8095-507e-bf05-f78656465b14'::uuid,
  '7946e966-b7f0-5144-a21a-04765a50638c'::uuid,
  'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e37780ca-9973-592b-9921-8dc4aff0c6c8'::uuid,
  '2ad3b52f-8095-507e-bf05-f78656465b14'::uuid,
  'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid,
  '7946e966-b7f0-5144-a21a-04765a50638c'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('81b24a8f-a2f2-5484-8bed-d63156dad06c'::uuid, '2d6a40b8-dfab-5368-9f36-49bd06c4e841'::uuid, '4d8cd75d-d374-569f-85a8-6440bd0fe5a2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ef26aab9-3caa-5a18-ab4a-b8f13ed8262f'::uuid, '4d8cd75d-d374-569f-85a8-6440bd0fe5a2'::uuid, '2d6a40b8-dfab-5368-9f36-49bd06c4e841'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b6e4aeff-49f1-50b3-b51e-7ae477f33192'::uuid, '2d6a40b8-dfab-5368-9f36-49bd06c4e841'::uuid, '4d8cd75d-d374-569f-85a8-6440bd0fe5a2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5bdb4b8b-448d-5279-86c9-5e9d510407d4'::uuid, 'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid, '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f32713d1-72af-55cc-a9f9-6a2bd231e005'::uuid, '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid, 'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('adf5d789-eb7f-5fd1-b53d-2be46ca45653'::uuid, '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid, 'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '292083c9-1f1c-5ae0-82b3-58329e9e4b13'::uuid,
  'adf5d789-eb7f-5fd1-b53d-2be46ca45653'::uuid,
  'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid,
  '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b8cfcc7a-8f5d-5338-bdd9-2321829fbac9'::uuid,
  'adf5d789-eb7f-5fd1-b53d-2be46ca45653'::uuid,
  '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid,
  'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cd92afd6-9b8b-592f-b71d-721b83c917e4'::uuid, 'd5b0211b-c5f4-597f-acb9-7622a4effdc1'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f303f16c-47e8-5706-ba36-b6bec58972f3'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, 'd5b0211b-c5f4-597f-acb9-7622a4effdc1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('59e9f4d0-cb47-5cde-9594-5ebdf1cafefa'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, 'd5b0211b-c5f4-597f-acb9-7622a4effdc1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1daa7477-41eb-5c56-8a7f-8d711a58a1e3'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8e4cebbf-36ce-52b4-80b1-474cb9cd84e1'::uuid, '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('af481ce7-d8ca-5391-bf21-4ff9b68b60dc'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3c0f206a-fd7a-5286-8981-009546b63e79'::uuid,
  'af481ce7-d8ca-5391-bf21-4ff9b68b60dc'::uuid,
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bbed7fbe-d645-5860-b698-d98050a0cd43'::uuid,
  'af481ce7-d8ca-5391-bf21-4ff9b68b60dc'::uuid,
  '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid,
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b4f0cfe3-51a8-5562-945a-9069c4e46e3b'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c6d7f4f2-a158-5a9b-abef-c9cba06fceb5'::uuid, '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e3f76ddb-660c-5400-87c8-490f6174bace'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eed70358-fc67-55e3-9a53-074c77470af5'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('835f2e32-3518-51b7-a53d-ced5d0e3b0d1'::uuid, '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6afa15d5-12aa-5c21-b707-e2ce17c9b836'::uuid, '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3a8e14bc-ff75-5b3d-8887-cb9636ebcd44'::uuid,
  '6afa15d5-12aa-5c21-b707-e2ce17c9b836'::uuid,
  'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid,
  '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;