INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f38074b9-7db1-5b25-a82d-387105c062a5'::uuid, '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid, 'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('16051e48-6c67-59e2-9c78-7bdbe75da7f8'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, 'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('73dc3ade-8a47-57ab-8bfd-1f8b800a69f3'::uuid, 'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1bab87da-3ae0-55f4-80da-631b66331173'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, 'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b0fd1664-8945-5c6f-b719-2b8f10272ca7'::uuid,
  '1bab87da-3ae0-55f4-80da-631b66331173'::uuid,
  'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid,
  'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd4200219-a1c4-5e2c-b677-62efbb64df85'::uuid,
  '1bab87da-3ae0-55f4-80da-631b66331173'::uuid,
  'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid,
  'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('21585faa-bb4f-5682-a3f2-1070efb7b308'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ad60f59e-9081-5149-b7c2-3f86ad40995d'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fd1330e2-ef4a-5141-a44b-b73e39293df7'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('07659d01-3544-5701-9ce2-19f9e488dc43'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9000bf8a-18d3-5337-9525-847560f7df88'::uuid, '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('05d11951-3f6c-5c80-a1ff-e225a6afa717'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '592b2f18-59b1-596f-baa1-33010d9d7d22'::uuid,
  '05d11951-3f6c-5c80-a1ff-e225a6afa717'::uuid,
  '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid,
  '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '35497425-8a18-59e9-9ebe-c877ee37c599'::uuid,
  '05d11951-3f6c-5c80-a1ff-e225a6afa717'::uuid,
  '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid,
  '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ca151e41-799f-5e8d-b7c6-55bfa439cae3'::uuid, 'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid, '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c8cc2514-0981-50e0-8e35-7680746db052'::uuid, '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid, 'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4a217675-48ba-58cf-a1e9-892059884ecb'::uuid, '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid, 'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('078fe5bb-a8b2-5a65-8e2e-37acc9c7a991'::uuid, '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid, '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b015d431-1e85-5e80-bd95-943faf89cf58'::uuid, '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid, '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e0a71de5-864b-5168-a890-a259224a3253'::uuid, '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid, '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8181dad6-2664-5f5d-b30b-2f15865b8ccc'::uuid,
  'e0a71de5-864b-5168-a890-a259224a3253'::uuid,
  '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid,
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '80c93064-ad18-5c84-95d4-69f55bbfbe19'::uuid,
  'e0a71de5-864b-5168-a890-a259224a3253'::uuid,
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38e6a909-3116-55e4-aa72-1d5e805ca0e2'::uuid, '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid, '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a005ebda-c779-5ffa-92cd-f2dca7e8b1e1'::uuid, '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid, '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8e940dd3-c451-5faf-8984-c089c0002872'::uuid, '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid, '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ccb7d3f3-0e98-56b9-af6d-8a5335e1b780'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, 'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ccbecb13-586d-547f-97e6-1c0670f8f105'::uuid, 'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2a60b090-3ce5-5098-a917-464c07b19507'::uuid, 'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd65d571b-1311-566c-abdd-47108b71beb0'::uuid,
  '2a60b090-3ce5-5098-a917-464c07b19507'::uuid,
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '45eb7a2a-522d-53b9-90fe-06b23b017e8c'::uuid,
  '2a60b090-3ce5-5098-a917-464c07b19507'::uuid,
  'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid,
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dc16dfd4-a96f-5a64-8717-008577af1f47'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c4272c8-de62-54ff-8f1f-b77a5caa9734'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a618bf10-b826-5110-8fcf-4468ff8523b8'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('03f46ef8-c1ca-54e2-809e-d6aea3f83755'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, 'b2898457-57d2-5375-845d-3da865e52c68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8a3212ae-3822-5d6d-b25d-7c27b654a5a2'::uuid, 'b2898457-57d2-5375-845d-3da865e52c68'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('26887b84-8b7f-5e52-937b-8ade7f030deb'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, 'b2898457-57d2-5375-845d-3da865e52c68'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '303e7bb5-004d-5dd5-843b-8094876c1441'::uuid,
  '26887b84-8b7f-5e52-937b-8ade7f030deb'::uuid,
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  'b2898457-57d2-5375-845d-3da865e52c68'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cdf5f430-ca43-51c2-ad76-4441b6f32fbb'::uuid,
  '26887b84-8b7f-5e52-937b-8ade7f030deb'::uuid,
  'b2898457-57d2-5375-845d-3da865e52c68'::uuid,
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c6bdc5cd-b30d-5a9e-a7b9-779f96531130'::uuid, '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid, '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('958598e1-30aa-5e7f-8692-017bfde55fa4'::uuid, '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid, '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;