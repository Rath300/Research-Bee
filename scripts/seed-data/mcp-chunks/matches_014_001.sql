INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ddf62ae1-de70-5eb6-a13a-64a6adf33ae3'::uuid,
  '486e37a9-351d-5a45-942a-bff66c7bc459'::uuid,
  '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid,
  '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('293a487e-af12-5ab5-ba6d-2a78df67b0ec'::uuid, '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid, '8c8802de-eb32-550b-88b8-412797aef970'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('62b5d218-10a9-5648-a40a-6ba3d0f5d6a2'::uuid, '8c8802de-eb32-550b-88b8-412797aef970'::uuid, '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7c8ec460-12fa-56ed-862d-2cbc149aa8b3'::uuid, '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid, '8c8802de-eb32-550b-88b8-412797aef970'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b342e3ec-cec1-5e46-9a80-9311243bcf4d'::uuid, 'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid, 'fcf09069-b03f-594a-a134-7c45d7478589'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('445b7dfb-dc51-5d83-ab71-423a0e74456d'::uuid, 'fcf09069-b03f-594a-a134-7c45d7478589'::uuid, 'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1f8c551b-c5ac-5e79-b38f-222d1339f933'::uuid, 'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid, 'fcf09069-b03f-594a-a134-7c45d7478589'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a6ae819a-d780-51e9-b856-cfd48642820e'::uuid,
  '1f8c551b-c5ac-5e79-b38f-222d1339f933'::uuid,
  'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid,
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cb0b530b-f2d9-5639-8f4b-217a4696c673'::uuid,
  '1f8c551b-c5ac-5e79-b38f-222d1339f933'::uuid,
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3ba805d-f1bc-5b48-bc6e-f61237dc92fe'::uuid, '73d21f69-f082-53ec-a793-9805a6962209'::uuid, '03507a6f-20a9-5023-b188-401053301f7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a3cdb8c0-cba4-5140-b271-c5ca9754b5a8'::uuid, '03507a6f-20a9-5023-b188-401053301f7b'::uuid, '73d21f69-f082-53ec-a793-9805a6962209'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5754b5d5-9f4a-5e5c-bf1c-b0d033bba038'::uuid, '03507a6f-20a9-5023-b188-401053301f7b'::uuid, '73d21f69-f082-53ec-a793-9805a6962209'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cd8f25e7-53d7-5d3d-8593-3c908d2ec404'::uuid, 'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid, '4affe376-3337-5316-8b8e-7c109b527c78'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d9409d2f-ebf0-5384-81cd-c433ddae5369'::uuid, '4affe376-3337-5316-8b8e-7c109b527c78'::uuid, 'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b836d4e4-9c86-5695-9bf0-b3ccccccb6a2'::uuid, '4affe376-3337-5316-8b8e-7c109b527c78'::uuid, 'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '56a42c81-7764-5a94-b853-f73b8018c753'::uuid,
  'b836d4e4-9c86-5695-9bf0-b3ccccccb6a2'::uuid,
  'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid,
  '4affe376-3337-5316-8b8e-7c109b527c78'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '48542e98-f590-5feb-bb59-878aa5806047'::uuid,
  'b836d4e4-9c86-5695-9bf0-b3ccccccb6a2'::uuid,
  '4affe376-3337-5316-8b8e-7c109b527c78'::uuid,
  'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b69ac7b-f8a0-5569-95a0-6d427f2d0707'::uuid, 'bbd25235-3b2e-5db2-a0dd-8a7dddfac498'::uuid, '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('333ac5c6-b1cc-5cf8-9829-b7dea9e9c10a'::uuid, '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid, 'bbd25235-3b2e-5db2-a0dd-8a7dddfac498'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f364def6-cca0-5584-a368-c3c9106012e5'::uuid, '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid, 'bbd25235-3b2e-5db2-a0dd-8a7dddfac498'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8d452164-28f4-5adf-b782-4a611f41e515'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, '07e78528-7a32-5945-9289-b917095c02bc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c7114c2a-cb36-5afa-8038-3f80d2b685e9'::uuid, '07e78528-7a32-5945-9289-b917095c02bc'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('63421ec9-fbba-563b-a430-070c332d499b'::uuid, '07e78528-7a32-5945-9289-b917095c02bc'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5ac9bb82-4429-5480-9b87-11059c75c222'::uuid,
  '63421ec9-fbba-563b-a430-070c332d499b'::uuid,
  '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid,
  '07e78528-7a32-5945-9289-b917095c02bc'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '66b1f48c-21e7-5041-96fe-f2456cb291f9'::uuid,
  '63421ec9-fbba-563b-a430-070c332d499b'::uuid,
  '07e78528-7a32-5945-9289-b917095c02bc'::uuid,
  '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2129d6ca-055b-527c-adf7-e4ba149fdebe'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, 'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('247b8b68-210f-5530-9e05-95b1d3093bee'::uuid, 'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('15f767ad-3f61-52ab-9a91-b777d64e581a'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, 'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0700a97d-fbde-5a27-9afd-3ff44c64e554'::uuid, 'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid, 'f86df400-9392-5e5e-b646-34ad46c78283'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('25311c4e-a3c0-5a44-8ecc-37c1eda26157'::uuid, 'f86df400-9392-5e5e-b646-34ad46c78283'::uuid, 'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e738667a-f1cb-59ea-ab70-a7f43615ad12'::uuid, 'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid, 'f86df400-9392-5e5e-b646-34ad46c78283'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2766f85b-e258-5204-860e-7f9c5df029f8'::uuid,
  'e738667a-f1cb-59ea-ab70-a7f43615ad12'::uuid,
  'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid,
  'f86df400-9392-5e5e-b646-34ad46c78283'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8ed6a748-36ec-5573-b69c-341834bdfc86'::uuid,
  'e738667a-f1cb-59ea-ab70-a7f43615ad12'::uuid,
  'f86df400-9392-5e5e-b646-34ad46c78283'::uuid,
  'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('06dad4fc-823f-5c9b-ba0a-0cd0560ca4ec'::uuid, '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid, 'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9f84ea9f-72c9-58cc-b75c-281f1a4254ce'::uuid, 'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid, '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc66ae63-2050-52e3-9b67-b9cff9401a69'::uuid, '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid, 'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b55d803f-9199-5b75-b102-05d03f5dfc44'::uuid, '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid, 'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('78878821-a772-5960-8801-bbc9e71b1a15'::uuid, 'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid, '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f5b08a1f-7c6f-5537-b675-6ed5aac4216c'::uuid, '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid, 'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '60014d67-10fc-5d65-b000-617a5ad26b03'::uuid,
  'f5b08a1f-7c6f-5537-b675-6ed5aac4216c'::uuid,
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;