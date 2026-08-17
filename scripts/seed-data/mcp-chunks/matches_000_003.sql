INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e4a0de32-4205-5210-9a7a-29e2bc829bdd'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38b0bbc8-14d9-5305-b9b0-c197e838c1bf'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('25bdbe83-fedc-574f-b10a-94a74f660e36'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5ef71211-7e57-5f5e-8686-8709a1d0b5bf'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dc6a13a2-cde7-578d-89ab-a6259a02acf0'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('453268ca-da44-59e3-9104-4fd4d3e10992'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('33de0d70-4adc-5d2c-85fa-35934d850131'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'eb50daad-5401-5637-99a6-72caf27a0548'::uuid,
  '33de0d70-4adc-5d2c-85fa-35934d850131'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd7402f24-e58e-58ee-ab92-cad956936ebc'::uuid,
  '33de0d70-4adc-5d2c-85fa-35934d850131'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('79f72555-d9c3-538e-828a-c9309603c2df'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4ec35ddd-3bb8-5131-a8bd-bfe7f2820e7c'::uuid, 'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1cfbdc48-5846-55cf-8131-1fbb070f63f2'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bf8fb968-d0d1-5f17-92ad-db3d139571a9'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('64924544-db02-5a9e-8db9-9f7ef693838a'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3c86094e-c182-5045-a966-3910e5b54c02'::uuid, '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eb1c4dba-91c4-5bb4-ae50-4a5f2b95e5d6'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5ea8af93-0eff-55e0-a058-e8b176388653'::uuid, '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '830f784a-665a-54f0-8814-b99b2119d7fb'::uuid,
  '5ea8af93-0eff-55e0-a058-e8b176388653'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1a3484b8-d996-50a1-8264-0bb15f4f53ad'::uuid,
  '5ea8af93-0eff-55e0-a058-e8b176388653'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a606526e-f5af-5546-b9c7-da274c86821a'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('086f26fd-9696-59dd-84db-8ee8e52a282d'::uuid, '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c8ace48e-241b-57d8-a24d-43d9ea193229'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('efec37ed-c2ca-5da1-a894-f4622cc9861a'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('794c950a-1ecf-5537-8b31-ea8205aafba3'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f438e667-7aba-5167-a4b2-83183ea3154c'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00982c53-6c26-543a-b702-bc96fe1e9f2b'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4cc39f6f-4181-5462-9ca7-29b54ce1fb30'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0969decf-eb81-5358-8593-d1a196006c5f'::uuid,
  '4cc39f6f-4181-5462-9ca7-29b54ce1fb30'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4606033a-0e04-5f9b-a43f-ecf3c194cd36'::uuid,
  '4cc39f6f-4181-5462-9ca7-29b54ce1fb30'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e3270bd9-6e15-59f3-ac8e-914ae02146f0'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dad1a9a0-b2d5-588b-a9f9-5d0970cbc9a5'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6b305e8e-f72d-5af4-b92d-e266b0468fb4'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7f1c1956-83de-518b-8e82-554ed4ffb233'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cc6b6e44-b1ea-5744-a053-585119c67e78'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cb55027e-f9ce-5069-ae98-471e5d407f50'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('77c4ad54-63f3-53d3-9949-71c8896eabec'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6ba9b639-5193-5bd9-b9a2-9e4e7ae0c263'::uuid,
  '77c4ad54-63f3-53d3-9949-71c8896eabec'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '159f7bdb-805c-5083-a70e-05aca8883f36'::uuid,
  '77c4ad54-63f3-53d3-9949-71c8896eabec'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('71d45fcc-331b-5dd9-9206-51bab4bfd8b2'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('56afea8d-4841-59ec-8164-f427942dd624'::uuid, '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;