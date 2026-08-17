INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('facd502d-ba9b-5ee7-a99c-04b781e63e84'::uuid, 'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid, 'a9c2ac75-ccc9-57df-8596-ce89dc703b66'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3ed97db1-5742-5720-ab1d-2f5b8a5ba465'::uuid, 'a9c2ac75-ccc9-57df-8596-ce89dc703b66'::uuid, 'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '302a70da-09bb-53ef-a1f5-74861ff0dc44'::uuid,
  '3ed97db1-5742-5720-ab1d-2f5b8a5ba465'::uuid,
  'a9c2ac75-ccc9-57df-8596-ce89dc703b66'::uuid,
  'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '86e85923-323b-5dd4-84eb-4e32a59b14fd'::uuid,
  '3ed97db1-5742-5720-ab1d-2f5b8a5ba465'::uuid,
  'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid,
  'a9c2ac75-ccc9-57df-8596-ce89dc703b66'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('683d6c34-55c6-57dd-ac5a-3a852a967f1e'::uuid, 'dcbc3732-b957-594c-aa65-a88d71f238c4'::uuid, '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('755da06a-3a53-517a-9f4c-670ee8d456d1'::uuid, '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid, 'dcbc3732-b957-594c-aa65-a88d71f238c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ec1b40f6-69e4-5d04-9611-f3fae7559b2f'::uuid, '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid, 'dcbc3732-b957-594c-aa65-a88d71f238c4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2b85e3a3-4867-56e7-9c59-20609d17ae45'::uuid, '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid, '666efcc9-c467-5b54-b887-659ecb744286'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2c0065be-5126-5af7-acac-d6fd3d0889e0'::uuid, '666efcc9-c467-5b54-b887-659ecb744286'::uuid, '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('de0f361f-72ed-5114-a535-856852613f67'::uuid, '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid, '666efcc9-c467-5b54-b887-659ecb744286'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5d2d42d7-481c-5c2e-99c0-1c979fb79031'::uuid,
  'de0f361f-72ed-5114-a535-856852613f67'::uuid,
  '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid,
  '666efcc9-c467-5b54-b887-659ecb744286'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '356ec2bf-6c92-5ba0-9f94-8cd2db907858'::uuid,
  'de0f361f-72ed-5114-a535-856852613f67'::uuid,
  '666efcc9-c467-5b54-b887-659ecb744286'::uuid,
  '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('59dcbd9f-f529-5b1c-9549-319dda2dc879'::uuid, '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid, 'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2386d88d-6609-52db-b51c-06c8241511b5'::uuid, 'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid, '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('74cec6cc-817a-53ef-b78c-0c2a4c8897f8'::uuid, '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid, 'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9821e4c5-f5d8-5d0d-a63f-2d7bda4ba891'::uuid, '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid, '279c319c-89db-5ae5-b134-f4418f82a365'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f1e00411-71d2-5940-96ec-3bf5b5f8baf9'::uuid, '279c319c-89db-5ae5-b134-f4418f82a365'::uuid, '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e1a42994-7980-5535-84eb-c68dd968ec55'::uuid, '279c319c-89db-5ae5-b134-f4418f82a365'::uuid, '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a34b7a4b-b376-5dda-87f4-2bc027a8a901'::uuid,
  'e1a42994-7980-5535-84eb-c68dd968ec55'::uuid,
  '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid,
  '279c319c-89db-5ae5-b134-f4418f82a365'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4602fb18-d85d-5b66-9307-001441b435d8'::uuid,
  'e1a42994-7980-5535-84eb-c68dd968ec55'::uuid,
  '279c319c-89db-5ae5-b134-f4418f82a365'::uuid,
  '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9f5dbdcb-cd02-5c2c-ada5-b467baceb112'::uuid, '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid, 'b1a15199-4e78-51ba-99e1-56bf9f18a970'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5f10f778-0711-56eb-9a31-3916df9d4db2'::uuid, 'b1a15199-4e78-51ba-99e1-56bf9f18a970'::uuid, '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d22c762b-01e7-5923-a51a-ba6aa60a3f10'::uuid, '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid, 'b1a15199-4e78-51ba-99e1-56bf9f18a970'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('777997b3-2f07-5180-9418-a10e3673dbde'::uuid, 'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid, '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bc4907f6-b36e-5100-b945-3125e853e603'::uuid, '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid, 'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ca0bccdc-76f2-5250-8e71-034cd956c144'::uuid, '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid, 'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '94db876b-9a25-5e65-bb52-d3c49141f252'::uuid,
  'ca0bccdc-76f2-5250-8e71-034cd956c144'::uuid,
  'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid,
  '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1c25a18d-4f0b-5a9e-9320-05d4f480ddbb'::uuid,
  'ca0bccdc-76f2-5250-8e71-034cd956c144'::uuid,
  '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid,
  'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('890e921f-a4f7-5bb5-9101-b71a1eb07ae9'::uuid, 'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid, 'db69352b-36e0-5136-a601-8cd783f826e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9db696ae-dd40-5d56-88b9-41b6ec2e656f'::uuid, 'db69352b-36e0-5136-a601-8cd783f826e7'::uuid, 'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0d87adae-732e-5708-9057-d83ae18d7fcb'::uuid, 'db69352b-36e0-5136-a601-8cd783f826e7'::uuid, 'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b9ca27cf-e5ad-5b33-b386-1783e7f01032'::uuid, 'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid, '1a61d961-51b5-5a7b-a66f-f3270ebcf8b4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bba33721-dec6-5fe4-ab7c-a6f867615050'::uuid, '1a61d961-51b5-5a7b-a66f-f3270ebcf8b4'::uuid, 'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5761fc91-18ad-541e-9a92-e91e9ff02680'::uuid, '1a61d961-51b5-5a7b-a66f-f3270ebcf8b4'::uuid, 'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '799fc559-f8a4-5073-97e3-91ede66c47d4'::uuid,
  '5761fc91-18ad-541e-9a92-e91e9ff02680'::uuid,
  'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid,
  '1a61d961-51b5-5a7b-a66f-f3270ebcf8b4'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fe531a55-c845-594a-9218-319a96b0e6d4'::uuid,
  '5761fc91-18ad-541e-9a92-e91e9ff02680'::uuid,
  '1a61d961-51b5-5a7b-a66f-f3270ebcf8b4'::uuid,
  'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d96f77d4-8275-534b-85eb-a83e66cf4736'::uuid, 'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid, '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c4dc2d67-aa27-5ce9-8f19-911ad5d98b98'::uuid, '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid, 'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1c2a90a3-9ee2-55f4-8ea6-e4a33c91c8ec'::uuid, '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid, 'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8e1bd155-aff7-5f59-b691-2ae5ad5c3a6a'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;