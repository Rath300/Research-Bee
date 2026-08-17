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