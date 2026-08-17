INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e3d2526e-949d-5540-9c56-7dac7176e857'::uuid,
  'f053d221-1666-5ef3-8d8c-b8805d1af2b3'::uuid,
  'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid,
  '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2ca4ec5e-1791-5d98-9383-a6d26f538b81'::uuid, '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid, 'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58946818-52a1-5014-a2d5-5b73f708df7b'::uuid, 'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid, '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('17e9251e-f7be-5968-9a49-f4f5937bb89b'::uuid, '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid, 'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3d175c0e-fffd-5b7a-8868-1e495e7224de'::uuid, 'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid, '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6a567565-b1e9-5ab5-b056-29b12a877ab0'::uuid, '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid, 'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f9c815f7-6ebb-5cbc-9d12-936e141038f8'::uuid, '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid, 'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1b64fd7d-1870-5823-9109-e3511385749e'::uuid,
  'f9c815f7-6ebb-5cbc-9d12-936e141038f8'::uuid,
  'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid,
  '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '724c91a5-39c8-57ec-adb1-80b450f57488'::uuid,
  'f9c815f7-6ebb-5cbc-9d12-936e141038f8'::uuid,
  '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid,
  'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e7253222-96e0-5ab1-a4a7-28225de91efd'::uuid, '24579fee-fc8d-5280-812e-2f0052792b46'::uuid, '31a92ffb-1141-5a66-8e06-de366d600dd7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e6f7e558-3321-5f23-acb7-3aed7027b709'::uuid, '31a92ffb-1141-5a66-8e06-de366d600dd7'::uuid, '24579fee-fc8d-5280-812e-2f0052792b46'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('be9e9dd5-b796-57e4-88fa-13d2e01df4ec'::uuid, '24579fee-fc8d-5280-812e-2f0052792b46'::uuid, '31a92ffb-1141-5a66-8e06-de366d600dd7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7fe0390d-af30-5def-acd1-bf13fa8f47db'::uuid, 'da7ea795-6302-569b-a337-84672894f4df'::uuid, 'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('02a19906-1317-5b3e-aa5d-a48c9adae09a'::uuid, 'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid, 'da7ea795-6302-569b-a337-84672894f4df'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a80a3f4f-da47-5c1f-9ec3-679124f25f05'::uuid, 'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid, 'da7ea795-6302-569b-a337-84672894f4df'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '300b2082-4cc4-5e24-bec7-1a94c42d348d'::uuid,
  'a80a3f4f-da47-5c1f-9ec3-679124f25f05'::uuid,
  'da7ea795-6302-569b-a337-84672894f4df'::uuid,
  'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd155c44a-cb0e-5a5f-a730-b42012f8aade'::uuid,
  'a80a3f4f-da47-5c1f-9ec3-679124f25f05'::uuid,
  'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid,
  'da7ea795-6302-569b-a337-84672894f4df'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('273373cc-e494-50eb-a6b1-0bcade6e333c'::uuid, 'fa80e08b-c8b0-5154-aed5-9cae634d5c58'::uuid, '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ba71fa7a-1e94-5309-87bb-d0ac705d1314'::uuid, '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid, 'fa80e08b-c8b0-5154-aed5-9cae634d5c58'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e27e207d-3b7a-5405-9c53-fb479fb40d90'::uuid, '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid, 'fa80e08b-c8b0-5154-aed5-9cae634d5c58'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bbd769ea-2a86-5176-9c3a-feb7e365ad25'::uuid, 'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid, '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1e3896da-703c-5f7a-aee1-633def51216b'::uuid, '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid, 'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c07f5052-b69e-59f8-b420-26a6faec867e'::uuid, '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid, 'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd45df447-92a5-560a-84f2-fb1cd7b8e0ae'::uuid,
  'c07f5052-b69e-59f8-b420-26a6faec867e'::uuid,
  'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid,
  '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '99a38e09-9ca4-5ebf-b1ef-b2a5486bfda3'::uuid,
  'c07f5052-b69e-59f8-b420-26a6faec867e'::uuid,
  '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid,
  'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b6e5c9aa-d424-53e3-b911-fa48b6ec7e5e'::uuid, 'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b5650039-12b7-5c9e-a822-917766391675'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, 'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('df7e66fe-93c5-5ad1-9663-79ce74eeddbd'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, 'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f8e6c88b-4ea0-5ed8-ad3a-2a5b0e576e79'::uuid, '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid, '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('983c6bff-4612-5035-b5f1-621b73246a0f'::uuid, '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid, '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e349d63f-b89b-5633-b6ee-3a231d59c209'::uuid, '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid, '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2269b151-9565-5794-a3ae-1837787a69de'::uuid,
  'e349d63f-b89b-5633-b6ee-3a231d59c209'::uuid,
  '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid,
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bbf6cbaf-9416-5000-a177-4c2cbde06311'::uuid,
  'e349d63f-b89b-5633-b6ee-3a231d59c209'::uuid,
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
  '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3d6235bd-7e12-50cb-8a63-5fd54ce64531'::uuid, '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid, '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4c271fa6-87b8-56da-9de9-8244c88479b6'::uuid, '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid, '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0bfb477d-2b12-54b0-af54-506c5b794945'::uuid, '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid, '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('87a2dcf6-bffe-50b2-ab25-2e5ecd876317'::uuid, '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid, '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3c634442-f9a6-54ad-9860-938d30b361c2'::uuid, '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid, '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8d41f2f7-7535-5fb3-818c-467398324c63'::uuid, '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid, '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fb5dfe7e-032b-572d-82af-45c0cd372e46'::uuid,
  '8d41f2f7-7535-5fb3-818c-467398324c63'::uuid,
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2dc7a017-8373-5495-8aab-f988a53d6678'::uuid,
  '8d41f2f7-7535-5fb3-818c-467398324c63'::uuid,
  '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid,
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f57fcc04-b087-5f94-a84c-718f5de4d5e6'::uuid, 'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('97100a68-2b16-5d45-b97e-4f1599386e15'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('260d678d-ea75-5f17-87e5-e6b860450af2'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ab15ae5b-0e6e-52a5-b3a1-d2bd2c0f6dcf'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ca239bbb-cc27-5736-9f7e-e05c8e0f2ce6'::uuid, '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c1980dac-2abd-530b-a55d-5ff0ca2e5d98'::uuid, '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9efd43c6-ccdc-5d23-8500-d127799b8386'::uuid,
  'c1980dac-2abd-530b-a55d-5ff0ca2e5d98'::uuid,
  'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid,
  '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8e79327d-68bc-53a2-bd72-23fd10a2b1af'::uuid,
  'c1980dac-2abd-530b-a55d-5ff0ca2e5d98'::uuid,
  '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid,
  'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('81174b9b-2623-5fa5-acc7-0e0dc2cb40e2'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dad59a05-23a4-5b56-9b60-2ddfe16508a4'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ffd5007d-f77b-5b5b-802c-c177d29deb30'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('85cb32d1-0e6a-5472-8494-ea59ff5e1bd2'::uuid, '3d45d675-a875-5470-942c-38b3923c1d12'::uuid, 'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4e3428d7-d549-5de3-9eab-58e3c6b7da72'::uuid, 'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid, '3d45d675-a875-5470-942c-38b3923c1d12'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0dc9b1a8-1f01-5722-a495-7d66f9ee0993'::uuid, '3d45d675-a875-5470-942c-38b3923c1d12'::uuid, 'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9abe8ce5-6cda-54ff-8250-56488cefd790'::uuid,
  '0dc9b1a8-1f01-5722-a495-7d66f9ee0993'::uuid,
  '3d45d675-a875-5470-942c-38b3923c1d12'::uuid,
  'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '512cee15-c9aa-5c9a-b090-7e99c43f62e5'::uuid,
  '0dc9b1a8-1f01-5722-a495-7d66f9ee0993'::uuid,
  'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid,
  '3d45d675-a875-5470-942c-38b3923c1d12'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a71680be-401d-5244-98e6-b87769188a93'::uuid, '8446497b-9183-5777-853d-340063eca952'::uuid, 'fade7767-529a-55b3-b6ca-4e25b88b90fb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('653f7eb8-5f8d-5fe0-b136-1e2a4e7a7089'::uuid, 'fade7767-529a-55b3-b6ca-4e25b88b90fb'::uuid, '8446497b-9183-5777-853d-340063eca952'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9a56da8e-700a-5e62-b055-aec6dbe73f78'::uuid, '8446497b-9183-5777-853d-340063eca952'::uuid, 'fade7767-529a-55b3-b6ca-4e25b88b90fb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fec274e8-e48b-52a3-925e-88d5e093ee0e'::uuid, '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('90d25a19-f8bd-5b56-a297-6bbfa81e0436'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2a6f3213-176a-5ded-b785-fb419a5f2c8b'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b21d3fa7-1893-5441-a856-f52870da60d3'::uuid,
  '2a6f3213-176a-5ded-b785-fb419a5f2c8b'::uuid,
  '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid,
  '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8ed4f8a6-0d60-578d-8ba1-587daee6e474'::uuid,
  '2a6f3213-176a-5ded-b785-fb419a5f2c8b'::uuid,
  '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid,
  '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('99e025a6-e7e8-596e-af21-31c2f292ea6f'::uuid, 'b9db1144-db8a-57a8-8052-2191f1cc14b1'::uuid, 'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('970141ee-b127-5c2b-b6e1-77a44e002cb3'::uuid, 'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid, 'b9db1144-db8a-57a8-8052-2191f1cc14b1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f6c9953d-7368-5185-8bc3-17d723d2caa2'::uuid, 'b9db1144-db8a-57a8-8052-2191f1cc14b1'::uuid, 'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3cdb7e5d-d0dc-5e01-b539-8ffd1832f497'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, 'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0a01c00f-3248-5b48-a1b3-b48c20fb867e'::uuid, 'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('774d2d62-9ad4-5667-8e37-fc8c318239bf'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, 'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '04ac394a-ed70-5de1-9478-1b1ab44e9a3d'::uuid,
  '774d2d62-9ad4-5667-8e37-fc8c318239bf'::uuid,
  'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid,
  'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cdfe64e4-5d93-5579-bc52-0cc0958bb54a'::uuid,
  '774d2d62-9ad4-5667-8e37-fc8c318239bf'::uuid,
  'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid,
  'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa501d24-454d-5cc0-a27d-f5db5806587f'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8b706521-54f7-5cfd-ac2e-4a550a8152c5'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8fddaed1-b26f-5092-a88e-49c9309e27b8'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a3e2f8ab-e021-52b5-b4fe-34661bf3ec80'::uuid, '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid, '843f469a-8134-5966-bfe0-48584f3270fc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e7c3ab91-48ac-56f0-a6bf-d37040a13b90'::uuid, '843f469a-8134-5966-bfe0-48584f3270fc'::uuid, '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9e07f163-10d7-5ac3-a315-bd94e98366ca'::uuid, '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid, '843f469a-8134-5966-bfe0-48584f3270fc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fb763c94-4ace-50b2-9d4e-d087cb9b72ba'::uuid,
  '9e07f163-10d7-5ac3-a315-bd94e98366ca'::uuid,
  '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid,
  '843f469a-8134-5966-bfe0-48584f3270fc'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '72df971c-0ee8-5b0a-950b-9553ffc1c75d'::uuid,
  '9e07f163-10d7-5ac3-a315-bd94e98366ca'::uuid,
  '843f469a-8134-5966-bfe0-48584f3270fc'::uuid,
  '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b10a5e86-6992-5f4d-9c66-a663f78f6158'::uuid, '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid, 'ff2a77b6-4d2a-51ff-954c-11a84543e245'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c20df8c1-3053-5e4a-94f1-fc4d08dd327b'::uuid, 'ff2a77b6-4d2a-51ff-954c-11a84543e245'::uuid, '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d11791b8-9d5f-59ba-b736-99e595d699c5'::uuid, '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid, 'ff2a77b6-4d2a-51ff-954c-11a84543e245'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5ecd8bc0-d3d0-5b3b-b29e-fb5aa1a30ce3'::uuid, '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid, '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58b5b7e6-0d44-52fe-b2e2-57dcf898923d'::uuid, '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid, '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bcb246fc-14fe-5082-9610-abc349fd4c4a'::uuid, '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid, '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f3f57590-f0a1-5aa5-8638-e5f1f9216384'::uuid,
  'bcb246fc-14fe-5082-9610-abc349fd4c4a'::uuid,
  '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid,
  '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f61e7a43-97df-5259-9485-faf351277083'::uuid,
  'bcb246fc-14fe-5082-9610-abc349fd4c4a'::uuid,
  '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid,
  '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9bf135e3-09dd-5ac7-90b4-4d6a7bec23d2'::uuid, '93dc5596-9d0e-58a4-b02f-69457ebd4204'::uuid, '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e63d33de-da06-54d5-9a2f-66033fbb753a'::uuid, '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid, '93dc5596-9d0e-58a4-b02f-69457ebd4204'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('78f189a8-2d18-5058-b6fb-fb2f96cdee69'::uuid, '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid, '93dc5596-9d0e-58a4-b02f-69457ebd4204'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b1a012d3-2e9a-53b5-bfc9-91bafa091bf9'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, 'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e79ca052-d190-5e3e-93f7-84403cb9a2aa'::uuid, 'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a0f837c0-4c6a-5eb5-928d-3aca4ac85f9a'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, 'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '95405287-6b6c-5136-8b29-226a7f68d67a'::uuid,
  'a0f837c0-4c6a-5eb5-928d-3aca4ac85f9a'::uuid,
  'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid,
  'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f4d67133-d39e-51b0-a815-334608c999cf'::uuid,
  'a0f837c0-4c6a-5eb5-928d-3aca4ac85f9a'::uuid,
  'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid,
  'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5e7cae94-205b-5b6e-a3fd-082f6384ec96'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eff4bde8-9a33-538d-8ec3-7b5f103edec9'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ab81f35d-38c4-5551-b040-740df2bcd917'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('220cc299-743d-5347-b873-192c3dce9641'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, 'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9d4f6382-f0e8-5006-a7fb-74a13d37c9c7'::uuid, 'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('273c608d-ac1f-5f5b-99a1-d0013c4a46f1'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, 'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c874ce35-8884-5a53-a454-d3387d3046c8'::uuid,
  '273c608d-ac1f-5f5b-99a1-d0013c4a46f1'::uuid,
  'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid,
  'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '93ff7f2e-d9b1-5f62-b22a-08354954d945'::uuid,
  '273c608d-ac1f-5f5b-99a1-d0013c4a46f1'::uuid,
  'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid,
  'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0411966d-8d17-58bd-af08-466f1daef614'::uuid, '585cd420-b530-5bba-8219-1713b623a65f'::uuid, '7eebc6fb-2d56-59bb-8d03-96c3482f42bc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('08d9a02d-631b-54c7-ac73-fc0bf8d3079f'::uuid, '7eebc6fb-2d56-59bb-8d03-96c3482f42bc'::uuid, '585cd420-b530-5bba-8219-1713b623a65f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5ca2b982-e676-5be5-9c7a-bce06fd05098'::uuid, '585cd420-b530-5bba-8219-1713b623a65f'::uuid, '7eebc6fb-2d56-59bb-8d03-96c3482f42bc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9d7d6039-6660-5e05-b813-2c49229721d8'::uuid, '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid, '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('275a5e39-1b83-5361-9ee8-a9f6503f1c30'::uuid, '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid, '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6cf0d84f-3c0c-5b0f-97e4-f7b0008373e3'::uuid, '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid, '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0c2e59e0-1753-5733-b8f5-ae1a6d39b1fa'::uuid,
  '6cf0d84f-3c0c-5b0f-97e4-f7b0008373e3'::uuid,
  '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid,
  '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '03c99833-f98e-5dcd-bbc4-79f2b8d72b1f'::uuid,
  '6cf0d84f-3c0c-5b0f-97e4-f7b0008373e3'::uuid,
  '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid,
  '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fb488414-643d-5e89-9788-9aba023aee11'::uuid, 'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid, '27bed1a2-fc35-5a0d-bf20-bf3ac8f905ef'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('23cc14b0-ab43-540a-b5a5-f79dd5f6d22f'::uuid, '27bed1a2-fc35-5a0d-bf20-bf3ac8f905ef'::uuid, 'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7dbe6a3e-3a89-5f43-b0bf-d7d09ab9c24e'::uuid, '27bed1a2-fc35-5a0d-bf20-bf3ac8f905ef'::uuid, 'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('75782472-8ff0-5167-a1bd-5cc41241c05a'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, 'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b5894881-2d69-5ab7-a33b-34f4e88259fd'::uuid, 'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('546b0470-567a-54d5-b177-654f822e0c5f'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, 'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a979c7f7-e5b9-56cb-903b-384e54cf268e'::uuid,
  '546b0470-567a-54d5-b177-654f822e0c5f'::uuid,
  '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid,
  'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd609aaf3-fc82-5531-922f-18daa85ff8af'::uuid,
  '546b0470-567a-54d5-b177-654f822e0c5f'::uuid,
  'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid,
  '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('19e28ae7-8d32-5920-89a6-d669189155c5'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('48e45e11-1235-56a4-808b-f26a02564109'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('52a3d180-dba9-5f61-bc04-382f8662b7f1'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e8b40d5d-16e7-5635-a8ad-f6e74660f22f'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, 'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e18ab8a7-4be5-5073-8e67-8b298dc6b0c8'::uuid, 'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d347c47e-c0a2-54ec-8869-5fa6e7a2ed34'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, 'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e98316d5-30fb-587b-b07f-bbb9cb28bff0'::uuid,
  'd347c47e-c0a2-54ec-8869-5fa6e7a2ed34'::uuid,
  'a901d64a-c165-5007-b311-05725dddb634'::uuid,
  'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd42f7b45-b376-53a4-8edf-3ddc2647ca18'::uuid,
  'd347c47e-c0a2-54ec-8869-5fa6e7a2ed34'::uuid,
  'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid,
  'a901d64a-c165-5007-b311-05725dddb634'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9067e29c-019c-506f-8f28-00d3ed4bdbc3'::uuid, '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid, '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4cd3685d-e021-58ce-8e3c-9b78c44fb2b0'::uuid, '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid, '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d5a9df16-1615-5b2e-9ac8-bf0e0e4806a0'::uuid, '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid, '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('22ab9985-8ca5-5549-a6df-66b69c236275'::uuid, '8aca80a1-1bf4-595b-a19b-2a176926b1d1'::uuid, '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('16b415cb-dbd6-527e-a432-b3424d39a9cf'::uuid, '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid, '8aca80a1-1bf4-595b-a19b-2a176926b1d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('27e63939-1330-597d-9747-295bd9a3e488'::uuid, '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid, '8aca80a1-1bf4-595b-a19b-2a176926b1d1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b934f4e3-ab12-5e1e-9b25-8f7d9d77d143'::uuid,
  '27e63939-1330-597d-9747-295bd9a3e488'::uuid,
  '8aca80a1-1bf4-595b-a19b-2a176926b1d1'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8a4b85a0-7b48-59e3-b0f9-2c7e01a027ed'::uuid,
  '27e63939-1330-597d-9747-295bd9a3e488'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  '8aca80a1-1bf4-595b-a19b-2a176926b1d1'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d1118cb1-e28d-5bb1-ad34-15bcd8652fc5'::uuid, '9dd1dae8-3c5f-5d9b-b989-60af32b5e396'::uuid, '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('23ddb1f6-f51a-59b0-beff-c79b0b5ffbb9'::uuid, '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid, '9dd1dae8-3c5f-5d9b-b989-60af32b5e396'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0d53cd3f-e186-5e81-a68d-1404ebf2fd15'::uuid, '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid, '9dd1dae8-3c5f-5d9b-b989-60af32b5e396'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('64f1886e-5a3b-5ad9-8caf-61d10a1542ee'::uuid, 'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid, '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a32f1651-4a97-5c4c-90b9-c0f34ed1fb7c'::uuid, '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid, 'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cd1ec6f1-9eda-5f0e-94a4-379eca57895a'::uuid, '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid, 'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3762a48e-fd0b-5cf7-a5f1-d63457adee8a'::uuid,
  'cd1ec6f1-9eda-5f0e-94a4-379eca57895a'::uuid,
  'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid,
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1c89cf29-725c-5426-beb8-20a8c0928bb0'::uuid,
  'cd1ec6f1-9eda-5f0e-94a4-379eca57895a'::uuid,
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4aec4c3a-0b20-5382-8b06-7d56ac39b6ba'::uuid, 'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('efc25e58-bd4d-5182-9664-5dec6486c169'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('979248ee-a3c4-51f3-be62-d659cd31abee'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('03a5840e-e657-5ab4-8b05-b0125a916ab3'::uuid, '42100420-3e43-57ff-96c6-5945409a49d1'::uuid, '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1197282c-21da-5ea4-be5a-27b42a645dff'::uuid, '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid, '42100420-3e43-57ff-96c6-5945409a49d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('336b311e-0ec6-534c-a7eb-b0e696b2689a'::uuid, '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid, '42100420-3e43-57ff-96c6-5945409a49d1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '95ab19ec-fdd9-5e48-85b3-3b01e2497ed9'::uuid,
  '336b311e-0ec6-534c-a7eb-b0e696b2689a'::uuid,
  '42100420-3e43-57ff-96c6-5945409a49d1'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c9d23004-7072-5f04-9427-332f6a1869ab'::uuid,
  '336b311e-0ec6-534c-a7eb-b0e696b2689a'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  '42100420-3e43-57ff-96c6-5945409a49d1'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6970b61d-2031-523b-917b-00d550ac0890'::uuid, '70fec3e3-decf-5444-a02f-93cd3a780b6a'::uuid, '38027771-452e-56a6-93ee-0327efca8125'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4620908c-f65a-57bc-abeb-45370f5aed0f'::uuid, '38027771-452e-56a6-93ee-0327efca8125'::uuid, '70fec3e3-decf-5444-a02f-93cd3a780b6a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('054cbd0f-af42-5066-9cef-3843cd7b9269'::uuid, '38027771-452e-56a6-93ee-0327efca8125'::uuid, '70fec3e3-decf-5444-a02f-93cd3a780b6a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('76f34e29-7355-5e9e-b837-bf9dbbf41fdd'::uuid, 'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid, 'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1ea1735e-b68b-54dd-b1f1-e4e8bc46d9f3'::uuid, 'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid, 'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3c2b7265-d5b1-5b32-8feb-94454d4dfe94'::uuid, 'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid, 'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '21b4b314-5d19-50ea-b624-354edc2bc7a2'::uuid,
  '3c2b7265-d5b1-5b32-8feb-94454d4dfe94'::uuid,
  'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4c2cee8b-d830-5f5a-8aac-e901b258dca1'::uuid,
  '3c2b7265-d5b1-5b32-8feb-94454d4dfe94'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ca895d38-000c-5650-a75b-bc10178f4e00'::uuid, 'c46e7cda-0508-5698-96a2-a7236d3d50ed'::uuid, 'a26aee00-05f2-505c-a479-ae1852915911'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58c4a07b-d96c-52bb-88ba-650a31aca090'::uuid, 'a26aee00-05f2-505c-a479-ae1852915911'::uuid, 'c46e7cda-0508-5698-96a2-a7236d3d50ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a6eaafb4-46d1-5999-a069-41f9a03f4824'::uuid, 'a26aee00-05f2-505c-a479-ae1852915911'::uuid, 'c46e7cda-0508-5698-96a2-a7236d3d50ed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('af811057-4435-57ec-90fd-4d2eddfdbc65'::uuid, 'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid, '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c3fa79a5-1ebb-5fd5-99df-9e710123a7d7'::uuid, '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid, 'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a893d2a4-05da-5700-975f-079bcc579b6d'::uuid, '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid, 'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '734f60dc-9e59-5c69-819c-37a014089936'::uuid,
  'a893d2a4-05da-5700-975f-079bcc579b6d'::uuid,
  'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3d0b9d0f-73e4-58ed-8b31-a479a14de514'::uuid,
  'a893d2a4-05da-5700-975f-079bcc579b6d'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3f6e2af-b974-5ace-af89-96ce2db9e1fa'::uuid, 'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('77b9b3c3-7de5-5619-8015-f73b465b4fd4'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('294ecbbc-b423-5e8d-8906-d0e754954d46'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30ec80af-5764-5049-9f55-82e2234c11f3'::uuid, 'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid, '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6243239e-d26a-54ca-9ebb-769aa7ba4c71'::uuid, '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid, 'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('86571ba5-4ceb-5d5f-9090-c8f56ac097bc'::uuid, '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid, 'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '381f93d9-ba83-5e78-bf5b-44852d21cac9'::uuid,
  '86571ba5-4ceb-5d5f-9090-c8f56ac097bc'::uuid,
  'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5128dd32-2249-513a-b6a8-9b78f8d90239'::uuid,
  '86571ba5-4ceb-5d5f-9090-c8f56ac097bc'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5f3afd01-5629-5d6d-93a9-788515e5b10b'::uuid, 'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid, '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ead31dcf-310d-5c0d-abe0-2fb622c97d43'::uuid, '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid, 'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('95f45cbd-1577-5e90-a1e7-1f14268d01af'::uuid, '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid, 'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9da35940-bbd4-599c-95d9-88dbabbd05d7'::uuid, '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0758d219-f2a6-5ecf-a5d2-36cb9c6dee2e'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0c696f9c-4395-5d61-9c93-11cbe775eebd'::uuid, '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6fc8d7c3-2059-5720-84e8-2c0012fe544a'::uuid,
  '0c696f9c-4395-5d61-9c93-11cbe775eebd'::uuid,
  '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '082ada63-b104-5dfe-aeb5-09395fdadd8f'::uuid,
  '0c696f9c-4395-5d61-9c93-11cbe775eebd'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d2d4bb62-2f5e-5295-990d-ca32a1ab18b3'::uuid, '31a92ffb-1141-5a66-8e06-de366d600dd7'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6fcf91cb-cfa3-5bdb-be05-bb9d68ecf1e4'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, '31a92ffb-1141-5a66-8e06-de366d600dd7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('88175fec-c1d1-5acf-ae55-c8866320010f'::uuid, '31a92ffb-1141-5a66-8e06-de366d600dd7'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e4dcd88c-75e0-55eb-b9ab-4777eb8d6623'::uuid, 'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid, 'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa1347db-4dbb-53ce-9294-366bd6aaf252'::uuid, 'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid, 'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b8acd67f-299a-5d93-b1ce-1f45088b13a6'::uuid, 'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid, 'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '57abbdd1-4f15-580d-aa1c-1ad17d4b5725'::uuid,
  'b8acd67f-299a-5d93-b1ce-1f45088b13a6'::uuid,
  'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c171f096-7e9d-50f7-9fb2-9c3aff67c4c7'::uuid,
  'b8acd67f-299a-5d93-b1ce-1f45088b13a6'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('172d6a88-c372-5a9f-85a4-e6fe65a7973f'::uuid, 'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cd914aa7-67e9-5a9e-8e13-fde151adaf33'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, 'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('eb6c9ca9-0589-5f3a-a70d-3bc73dd28970'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, 'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8301ae90-423c-587a-a3a5-7f19fd2bf858'::uuid, '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid, 'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('682ec584-08c6-503f-a2f0-bd2f154b2c28'::uuid, 'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid, '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c601a1f4-f6b0-573b-a816-aa00e459fb70'::uuid, '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid, 'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '17d9085c-4e7a-5045-88b6-afc751727868'::uuid,
  'c601a1f4-f6b0-573b-a816-aa00e459fb70'::uuid,
  '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b82cff3b-e874-528c-9ea4-58787e386b1f'::uuid,
  'c601a1f4-f6b0-573b-a816-aa00e459fb70'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ea9a0c1-7b23-54d8-9cfd-cefe4e391464'::uuid, '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid, '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('81412ed9-6a26-5bb7-aa30-3e73caf0197c'::uuid, '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid, '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f0040b27-d259-5510-b8fa-b0e94088ef81'::uuid, '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid, '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d90d7e45-ce77-58cd-a234-4ce7e7a4c9a0'::uuid, '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('53498a73-32ba-57d8-89db-92c4ca284a65'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c2ec8765-c4f6-5df0-b32e-42df33fdc792'::uuid, '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '77f17161-b812-5a52-b67b-6a190778d901'::uuid,
  'c2ec8765-c4f6-5df0-b32e-42df33fdc792'::uuid,
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e67cbb60-8c0a-527d-b842-ae58a6bfdeff'::uuid,
  'c2ec8765-c4f6-5df0-b32e-42df33fdc792'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('063c8621-414b-5edc-af37-3d8f8e4fb8f0'::uuid, '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89278e92-807d-54c6-afd4-f7aa2370c984'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0919896f-c66a-5cad-9c4f-618bce48f244'::uuid, '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('35113854-e938-59a3-a15e-2c68ffd21c35'::uuid, '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid, 'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9a141b5a-d83a-502d-855c-8c368cc09e59'::uuid, 'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid, '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4d2ad637-d2ab-5dcb-b2fc-9cc742e06769'::uuid, '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid, 'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ffa92a65-1fc1-5e53-a521-d547e89cf0f6'::uuid,
  '4d2ad637-d2ab-5dcb-b2fc-9cc742e06769'::uuid,
  '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5a9dd84a-5362-5e3f-b11e-62f760a2bf79'::uuid,
  '4d2ad637-d2ab-5dcb-b2fc-9cc742e06769'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('18c85ab9-945e-527f-880b-263b61361d9d'::uuid, '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('46cbc8ff-6be2-5a40-a2ba-96aad566111d'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6a1d54c4-4be7-5e7b-b9d3-dfb921845881'::uuid, '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('52a90106-7632-5d18-a961-35cf4df2de1c'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4c97639f-80f5-5b14-9385-9f4bef3b5811'::uuid, 'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8a25d6d1-1369-5526-ac28-dd58e2d33593'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1a8e5fa5-637b-5558-8d0a-a52552bfb37f'::uuid,
  '8a25d6d1-1369-5526-ac28-dd58e2d33593'::uuid,
  '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0cd6298b-334f-56cf-951a-41bbd2c505fd'::uuid,
  '8a25d6d1-1369-5526-ac28-dd58e2d33593'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e0d66708-05cb-50e3-b8a6-0177090b706a'::uuid, '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid, 'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('322ac631-8e57-5439-bf4f-64f1f154f047'::uuid, 'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid, '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9b43f874-587a-5641-a483-fdc7075c6d40'::uuid, '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid, 'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c02d43eb-57b3-50b5-938b-abf37278d60b'::uuid, 'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e1bae175-3272-51d5-9500-c0f220c2ea94'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0119a522-71d9-5ad2-8559-6a4473af04cc'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '559b7a10-6cba-5e6a-ae92-e614e6636b2b'::uuid,
  '0119a522-71d9-5ad2-8559-6a4473af04cc'::uuid,
  'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '40ed5827-a222-54e1-af09-d220a6c12e4a'::uuid,
  '0119a522-71d9-5ad2-8559-6a4473af04cc'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5462db52-3433-5b59-bf50-e54e527db458'::uuid, 'fade7767-529a-55b3-b6ca-4e25b88b90fb'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8a33b735-d3e1-5619-8888-c0f7a1b8ea1e'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'fade7767-529a-55b3-b6ca-4e25b88b90fb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('149bc454-cdfc-5e56-ab13-70e649d5d1c2'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'fade7767-529a-55b3-b6ca-4e25b88b90fb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cb1ea357-60ca-589c-bba2-6706d51fce62'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, 'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('53230aa3-887f-55e0-b3df-97fb11187ca4'::uuid, 'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('67908430-fb79-54f4-9263-eca2d7d31bc8'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, 'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd32dbb9d-95da-51d2-bb28-defd071106ef'::uuid,
  '67908430-fb79-54f4-9263-eca2d7d31bc8'::uuid,
  '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c9a613c1-b72f-5000-8cf8-ac113ceaef5b'::uuid,
  '67908430-fb79-54f4-9263-eca2d7d31bc8'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('17026a8e-8f65-5e3f-b97b-de4176ff5bb7'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8a3b735-1683-55cc-8538-f08a525073a2'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;
