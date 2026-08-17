INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ec546b81-4a6f-5a10-a088-b758fedd7275'::uuid,
  'c45b2289-5d4f-5ead-874a-38617bf81345'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ebc57867-096f-51e4-be11-1b1a450ae265'::uuid, 'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid, 'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5e457a2b-c62b-5b4e-9ad5-f6142c4ad4c9'::uuid, 'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('399224cc-9140-501f-924f-5a94d2e1b204'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, 'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('eb648c45-7207-5017-9676-17beb86e5a3f'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, 'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae4e6d0b-f7eb-5350-9809-ac7a05967026'::uuid, '6510f451-b055-5a67-b046-c091af0bfceb'::uuid, 'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('06f4cca2-3d54-5d48-ad68-92cbc1ac47be'::uuid, '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid, 'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('40d1d926-ad17-55ad-bd23-97be13ec0744'::uuid, 'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid, '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b3485068-bbfa-54d3-9a58-bc3d32efdab9'::uuid, '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid, 'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4bbf74ed-7bdc-577a-9045-d9a5d9f29191'::uuid,
  'b3485068-bbfa-54d3-9a58-bc3d32efdab9'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1448052a-b7f8-501f-ae3c-7df738ed9930'::uuid,
  'b3485068-bbfa-54d3-9a58-bc3d32efdab9'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9b682cf2-f583-5b0a-8c70-851da82b4005'::uuid, '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid, '3f854435-9399-5c74-9096-979bd941e61d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fd10418c-9a9c-5f8c-9c71-a2e86f06321c'::uuid, '3f854435-9399-5c74-9096-979bd941e61d'::uuid, '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a7925712-c58b-52b4-82de-06df54804571'::uuid, '3f854435-9399-5c74-9096-979bd941e61d'::uuid, '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3f2c4303-4dfc-580d-9bc5-b10b906ae02a'::uuid, '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid, '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30bef297-bb48-5526-8b2c-9513cae4affa'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, 'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2acea194-633b-5d55-abf7-fd1034d07478'::uuid, 'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5f0488cb-837b-5631-82bc-2973f82ca95f'::uuid, 'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '25382929-6217-556b-b4c0-73fb80ac4837'::uuid,
  '5f0488cb-837b-5631-82bc-2973f82ca95f'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a9cf0748-ef33-5b15-b1b2-26f48d158263'::uuid,
  '5f0488cb-837b-5631-82bc-2973f82ca95f'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('db653237-c6aa-5782-b1d9-842fa837e138'::uuid, '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('70dd22b9-f79f-544e-895b-e18f88fe1bfe'::uuid, 'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid, 'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('23e3bddf-938b-57f4-ab11-7e17e2d4c984'::uuid, 'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid, 'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('160c2297-0543-5ae9-921d-b6bebf229f05'::uuid, 'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid, 'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f3ef8622-4a8a-542b-9259-c6bacc342faf'::uuid, 'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid, 'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9943ca3-485c-5836-8b6b-82c4e8b4d703'::uuid, '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid, '6510f451-b055-5a67-b046-c091af0bfceb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7ec23ce5-c44b-5db2-a7ca-198e88c8e384'::uuid, '6510f451-b055-5a67-b046-c091af0bfceb'::uuid, '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6323820b-c684-5d9f-9641-de7cde637124'::uuid, '6510f451-b055-5a67-b046-c091af0bfceb'::uuid, '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '567861b9-5ff5-5e54-a6cd-ae96169fcdd5'::uuid,
  '6323820b-c684-5d9f-9641-de7cde637124'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c097dc04-d893-5f45-91af-075baef69d36'::uuid,
  '6323820b-c684-5d9f-9641-de7cde637124'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fb248b1a-6c21-56aa-926f-9f2fc00beb1b'::uuid, '56f8439d-f665-534b-a3ed-49809023f629'::uuid, '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a43984e5-74b9-5236-9bc3-d2fd5b4a5560'::uuid, '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid, '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e56a5ec-7a5c-5bc8-b4dc-dabb2215e681'::uuid, '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid, '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f9c8f430-5b3c-53d6-801b-26d711723155'::uuid, '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid, '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b50d4141-19c6-5870-a34e-33390fa4dbfc'::uuid, 'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid, '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e2b13951-4da9-5107-9781-03c78bbd4caa'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e60ce6b1-d9ce-50c4-a891-083efd658b70'::uuid, '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('aaabaffe-c41a-582a-9329-55a368899097'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3c241c79-9735-53a8-834f-56dc364da00d'::uuid,
  'aaabaffe-c41a-582a-9329-55a368899097'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2ba2d71e-145a-506c-ab0d-c9165cd84e0c'::uuid,
  'aaabaffe-c41a-582a-9329-55a368899097'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('822dfd73-57bd-5cab-b10c-cf7c8b1e0848'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa7fee85-9051-5dae-94e0-a08bbf4c714a'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8dd0b831-0fef-5eb5-80bb-d5c566169eb1'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6f135068-8faa-54b4-a4e9-03465dec4200'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e110909-5eea-55d5-b7b3-395b664704d8'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7abfda4-507a-5915-8236-d391b90e0655'::uuid, 'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d3546735-edca-5228-a03c-33ac2129458d'::uuid, 'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '80acb97a-7b72-5378-973b-7859a420427b'::uuid,
  'd3546735-edca-5228-a03c-33ac2129458d'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5a267afa-30b9-5047-b5ad-2f359926bb5b'::uuid,
  'd3546735-edca-5228-a03c-33ac2129458d'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('533f7440-8025-5d54-954e-e25e7cd37c1f'::uuid, '709233fc-6dac-5a42-941b-d839482389b8'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3a096248-55c0-59e4-99c9-7900ee4fd4d9'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, '56f8439d-f665-534b-a3ed-49809023f629'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('54f2b6bd-50ad-5795-8c7d-98131ca0132d'::uuid, '56f8439d-f665-534b-a3ed-49809023f629'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3e20f8fe-1c97-5e28-85b4-f7c3a2c55030'::uuid, '56f8439d-f665-534b-a3ed-49809023f629'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6d3f666b-3541-5291-b014-00de02f17c1e'::uuid, '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('294e72b5-f28b-5887-897d-905ad187b6cd'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, 'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7d7eea62-4879-5be8-b8d0-fdc61592620e'::uuid, 'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e02b1cc2-c0a5-5348-8194-1ebb2a400f4c'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, 'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd9f0e204-a694-5ac6-8830-267c4407d186'::uuid,
  'e02b1cc2-c0a5-5348-8194-1ebb2a400f4c'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b47e42cb-f8d4-5931-875d-723dd4160c38'::uuid,
  'e02b1cc2-c0a5-5348-8194-1ebb2a400f4c'::uuid,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bab6e7d0-aabc-5dc2-9372-c858b2d12ed5'::uuid, '1ca806bf-7216-5681-8652-8db2434048ce'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('236b440a-be31-5e33-bd86-eecd1abe8aa3'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0c6297c5-02bd-5ad4-be20-1097661d87c6'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('10a98895-6449-5474-bd8c-5bf347add02b'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0a0c9f7a-82b9-53f8-983f-83e03acc46eb'::uuid, '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('881ea39e-fdab-58c8-ad16-b16540003c83'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, '709233fc-6dac-5a42-941b-d839482389b8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ca922987-864e-511d-82b9-5ad6ba7e1011'::uuid, '709233fc-6dac-5a42-941b-d839482389b8'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f93d9b3d-fccc-579b-a8b9-3069cb7a5e09'::uuid, '709233fc-6dac-5a42-941b-d839482389b8'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2b45a664-ee30-507f-96e7-f75512a2f43c'::uuid,
  'f93d9b3d-fccc-579b-a8b9-3069cb7a5e09'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  '709233fc-6dac-5a42-941b-d839482389b8'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6f8e6e5c-a78e-5742-b1ab-9aa35b194840'::uuid,
  'f93d9b3d-fccc-579b-a8b9-3069cb7a5e09'::uuid,
  '709233fc-6dac-5a42-941b-d839482389b8'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8637f251-6e4d-5201-bbcd-30b0aae6b9c9'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8ad758f7-ed3f-5b4a-8d08-7c43a599c2c6'::uuid, 'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('50a448f5-80cf-5101-b023-4b8d60905e18'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e69f5030-c60d-56ca-a0bf-7b6c1ca8a86e'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6d46a626-58be-5441-b650-e6215fbb9063'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('87aa5568-0852-50a6-9843-add74393aa0d'::uuid, '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c77c3401-fc24-5c2f-928d-bd902c95c32d'::uuid, '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '18381c4a-446e-51b9-982f-648e89899586'::uuid,
  'c77c3401-fc24-5c2f-928d-bd902c95c32d'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f6c570e6-43bb-5eae-bd6a-5d992dc64172'::uuid,
  'c77c3401-fc24-5c2f-928d-bd902c95c32d'::uuid,
  '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fde28ffe-ac6f-5a6c-b277-841589fcffe8'::uuid, '9583a091-71fc-59e2-a837-c827f33c072a'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('282e24f1-d64b-5012-9fc7-bc6ae0ef0e1d'::uuid, '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid, '1ca806bf-7216-5681-8652-8db2434048ce'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f7e6c991-d702-53e9-bf11-6a2ec6115e0c'::uuid, '1ca806bf-7216-5681-8652-8db2434048ce'::uuid, '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('54254878-69a8-5233-84f8-65e800d9aa9b'::uuid, '1ca806bf-7216-5681-8652-8db2434048ce'::uuid, '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('60fdb30b-c4f5-52dd-999d-5b3e06438278'::uuid, '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid, '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1535690d-9576-5148-bc90-3d11143f82b1'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('297a64ec-454e-5bcd-90bb-ea0bf8007c73'::uuid, '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('28724aff-199e-56e8-b683-cc17c410c23a'::uuid, '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '47094d5d-fb7f-530b-971a-df0bb9d7cddc'::uuid,
  '28724aff-199e-56e8-b683-cc17c410c23a'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ec2d4dd8-8218-5b9b-a0e6-10b18334d141'::uuid,
  '28724aff-199e-56e8-b683-cc17c410c23a'::uuid,
  '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0800d860-f100-557c-ba30-e603907fbbf0'::uuid, '8cbc51da-924c-5c60-b2ff-91e9b5bade3b'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('418edf9b-54ca-5c3a-a397-a8078727347d'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('29d813ab-d0f1-55e2-9752-4552461a79ee'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bd1dbc70-1795-5f9f-86e8-f7621d1c1ecc'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2644544f-bc10-5a7c-86ba-42b4df8e34c1'::uuid, '1c95027d-691e-5ca1-932e-2748aa925246'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('788a6342-8113-5dc2-b184-90c16111540c'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, '9583a091-71fc-59e2-a837-c827f33c072a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('48d3d584-2b90-5643-a965-226e92ad9016'::uuid, '9583a091-71fc-59e2-a837-c827f33c072a'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a36c34b6-79cb-5b74-8304-b1c55d422b58'::uuid, '9583a091-71fc-59e2-a837-c827f33c072a'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9213e15d-37f7-5ad9-9e47-701d10ee48f2'::uuid,
  'a36c34b6-79cb-5b74-8304-b1c55d422b58'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c713ad07-3ac5-5a07-88df-d6fafe611dc1'::uuid,
  'a36c34b6-79cb-5b74-8304-b1c55d422b58'::uuid,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('87ba1b77-25fe-523c-8c58-c78f35c11db5'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e643c6f-e089-5e93-989b-07c96bdbf57c'::uuid, '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7f17ac40-c935-5a97-9dab-fc336779015e'::uuid, '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ef36b011-9853-5eef-9784-caff785ebaf4'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a842c3ca-5777-51c6-bcb7-7a7e4f7dd579'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cb8aeed4-76e4-52c1-9f80-dda43eed1e09'::uuid, '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('998921f6-dc1a-55c4-968d-814c997ddb2a'::uuid, '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a282de38-5e78-5e89-bc9c-3c897948f8c5'::uuid,
  '998921f6-dc1a-55c4-968d-814c997ddb2a'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9cb2263a-0058-51df-8f56-cc0d41a9774a'::uuid,
  '998921f6-dc1a-55c4-968d-814c997ddb2a'::uuid,
  '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a0dbf254-5a8f-55e6-853f-dc4ad2aab0e6'::uuid, '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f4806727-b45c-502d-8c4a-bc1a5bf091b9'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, '8cbc51da-924c-5c60-b2ff-91e9b5bade3b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5c496399-e397-505d-8944-bd9da002b7ed'::uuid, '8cbc51da-924c-5c60-b2ff-91e9b5bade3b'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('117cd615-bd0d-5d91-b815-d9e6c7af4d39'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, '8cbc51da-924c-5c60-b2ff-91e9b5bade3b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e98f419-1208-505c-b3ee-fa7b2772cbf5'::uuid, '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c3ee7e91-b82a-52ae-890d-5b3543e33173'::uuid, '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid, '1c95027d-691e-5ca1-932e-2748aa925246'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5457fdbf-be02-5769-86cd-61827018ef7e'::uuid, '1c95027d-691e-5ca1-932e-2748aa925246'::uuid, '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e9d3491a-5293-510a-9940-207f4aa872da'::uuid, '1c95027d-691e-5ca1-932e-2748aa925246'::uuid, '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '323dc37b-8862-5d79-acbc-f5d8d9ca16a8'::uuid,
  'e9d3491a-5293-510a-9940-207f4aa872da'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  '1c95027d-691e-5ca1-932e-2748aa925246'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7f786b3d-1936-5191-b06d-0907e84086b8'::uuid,
  'e9d3491a-5293-510a-9940-207f4aa872da'::uuid,
  '1c95027d-691e-5ca1-932e-2748aa925246'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('24706433-c9c7-5e09-a544-b6c8c0621b05'::uuid, '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid, '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b4e5956f-900c-5a97-9165-311feb6f82e9'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9e7852c-a236-5210-b6bf-1421d09dd423'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3a3440b7-cb87-5636-bb47-a4956be969dd'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('65ea3aa3-7bc7-56dc-89bf-bb03ec2a7708'::uuid, 'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cb1b1647-8c6c-50d7-a094-ecb4b7a146cb'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('97e73942-d3af-5b7f-80c9-45854ca8ee93'::uuid, '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ce3d7e53-6435-555a-ab62-77a9e08b0818'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4e13693a-72b9-5870-a115-c8d944153317'::uuid,
  'ce3d7e53-6435-555a-ab62-77a9e08b0818'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f428f080-0742-5a7f-a0e8-8beed48ed9ec'::uuid,
  'ce3d7e53-6435-555a-ab62-77a9e08b0818'::uuid,
  '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('94cfdd73-39a0-54e5-a633-c9807e055c9b'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cbaf7219-4dfd-530c-9a33-887d99ebcc72'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3b31a201-7f23-52f3-9a29-ba5b409f8371'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f44ec74f-bcbb-54b1-8826-e89e2bcc396d'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1eceb757-3501-5177-9996-f6710fb56a63'::uuid, '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('51ae96c7-ad48-54ec-aa07-321da6a7b838'::uuid, '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '28a20383-72cb-52a0-8976-b4fd4c6879d0'::uuid,
  '51ae96c7-ad48-54ec-aa07-321da6a7b838'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8fce0b4e-9f65-5e41-a486-6d9c3a40d21a'::uuid,
  '51ae96c7-ad48-54ec-aa07-321da6a7b838'::uuid,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b25d7074-24dc-5f20-aad8-5c121b393730'::uuid, '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid, '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5684f78c-6e18-5678-a93f-8b7495451e23'::uuid, '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid, '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fe2f6716-c70c-56b3-9e72-c4e339c893e6'::uuid, '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid, '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('60a848c7-d0fc-516e-a887-85ea9e4efd4a'::uuid, '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid, 'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bed66eb9-d88e-569c-97fd-b76dda8c113e'::uuid, 'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid, '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8916f9c7-5e71-5cff-a424-23eff6a99938'::uuid, '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid, 'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3f64cbba-06e3-5655-b194-1320da139c1a'::uuid,
  '8916f9c7-5e71-5cff-a424-23eff6a99938'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7fd5aee3-cfd1-57f4-a841-fbf22ab79627'::uuid,
  '8916f9c7-5e71-5cff-a424-23eff6a99938'::uuid,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cead3928-82d9-5d65-9ad0-9ca78aa82706'::uuid, '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid, '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e21692c-f1d2-5cd5-9b5c-3475bc0cc68d'::uuid, '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid, '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('21cbb89b-5b61-51ff-9b43-7d19da1a8442'::uuid, '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid, '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a946a961-569d-5523-a818-221ad839e016'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1578f0d5-3641-5830-8937-b48abb69d2ed'::uuid, '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9804dd34-0a03-56e3-a65c-7bc305fb466f'::uuid, '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7c00c5d4-9256-5d4f-81e6-d4b2ad386cb6'::uuid,
  '9804dd34-0a03-56e3-a65c-7bc305fb466f'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bcd5c10b-ecdd-545b-ba90-8577cbccca38'::uuid,
  '9804dd34-0a03-56e3-a65c-7bc305fb466f'::uuid,
  '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae130a20-d8fc-5ffe-aff9-e765ebfa7c6f'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7cf776c3-d906-5727-a34c-11b26e0cd8ca'::uuid, '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0d5279f3-64ad-57ce-97df-7b457a5c890e'::uuid, '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e89db48b-6f94-5399-9cb8-c4973efac903'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('84715cc7-bef8-5e39-8ad5-f21f7faee09a'::uuid, '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2c03fea1-051e-579a-a05a-b061cadd03a9'::uuid, '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0be3b814-9f2a-5e6f-a74e-52b2858b0d90'::uuid,
  '2c03fea1-051e-579a-a05a-b061cadd03a9'::uuid,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cd5e9773-ec21-5473-9f94-89a56fe4852f'::uuid,
  '2c03fea1-051e-579a-a05a-b061cadd03a9'::uuid,
  '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1525015c-c6e6-5f96-a7f6-ec20314d94f8'::uuid, 'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid, 'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('80d5a2d5-e495-5f8d-98d3-a4162bc163d9'::uuid, 'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid, 'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c333d3e8-4e6a-543c-bd91-597fb773e712'::uuid, 'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid, 'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bbf0ef90-d306-532e-bd20-78eb7e7f7757'::uuid, 'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b4594beb-f7cf-55d0-8a2f-d4ca5df0584a'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, 'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e647c156-cc85-57fd-a48d-795ae8c04656'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, 'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4f167368-b045-5dc3-92bd-1543f912522c'::uuid,
  'e647c156-cc85-57fd-a48d-795ae8c04656'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dd6b07e9-f6ce-583b-ba24-f10781d9162e'::uuid,
  'e647c156-cc85-57fd-a48d-795ae8c04656'::uuid,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ccb1cd6c-057a-5dc1-ace3-dca61332cd9f'::uuid, 'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid, 'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38fe5023-069d-5a1c-8706-f10017f58cff'::uuid, 'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid, 'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ece55b7e-fbd4-5187-bfbc-5d426f532e44'::uuid, 'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid, 'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a4c1a079-c7dc-59d2-8560-5ae59cf4b553'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c1af085e-e24a-5e4b-aff7-6b1b59d223e2'::uuid, '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('235399b4-3b4d-5c5e-ab3d-ac70fb97e2be'::uuid, '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2c5dfee4-bc1b-566a-8e4c-4f5886bd2bae'::uuid,
  '235399b4-3b4d-5c5e-ab3d-ac70fb97e2be'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f830b04b-d2d5-5d46-a5c5-25aea337b812'::uuid,
  '235399b4-3b4d-5c5e-ab3d-ac70fb97e2be'::uuid,
  '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30e14941-b637-5703-afc9-84728774f812'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e2fa7260-98cc-56af-a214-114837f711d2'::uuid, '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4fe52b70-2075-59c3-ae3f-8713cc2741d6'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c102bca4-19be-5362-8830-f38a72e525fb'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a646eae8-c7ff-5c5b-bd5b-18d27087a5e5'::uuid, '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('04ee50ce-2008-502f-99be-9c2fb35280fd'::uuid, '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '109569b6-e9d5-523e-aade-35e59dc59694'::uuid,
  '04ee50ce-2008-502f-99be-9c2fb35280fd'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3ef9a05c-cf68-5220-b7b8-769cd42bfa76'::uuid,
  '04ee50ce-2008-502f-99be-9c2fb35280fd'::uuid,
  '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c425885c-8aea-5ba9-8531-91f4e01494a2'::uuid, '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid, '1ff5e22d-0848-5550-a8c3-4df9c4050afb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c94e9dc-27d1-5921-8184-39c706f1f5f6'::uuid, '1ff5e22d-0848-5550-a8c3-4df9c4050afb'::uuid, '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a41f956c-0690-5af7-a1a1-127e6f79f815'::uuid, '1ff5e22d-0848-5550-a8c3-4df9c4050afb'::uuid, '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f1548a22-4aa8-5993-ba72-48c3f442cc3a'::uuid, '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid, 'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('df83c4d6-f843-51bf-8059-72467e1c8e9b'::uuid, 'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid, '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c27df5a6-5cff-52e8-8881-aca3acf86863'::uuid, '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid, 'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f0ae88f8-231b-521f-99af-04eee30fc092'::uuid,
  'c27df5a6-5cff-52e8-8881-aca3acf86863'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '795d5dec-daca-5803-a2ab-0c41bf04e345'::uuid,
  'c27df5a6-5cff-52e8-8881-aca3acf86863'::uuid,
  'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b1bb5f59-b3f0-5305-9220-65119a5e1a62'::uuid, 'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid, 'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0ac97a42-90be-516b-82ea-6bb053a68cc8'::uuid, 'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid, 'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5326ac1c-c521-52c0-a293-0a2071d5edc6'::uuid, 'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid, 'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d97940d2-e16c-5653-bab4-b05ad655fe5e'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, 'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4293ea49-ce77-5b83-ada5-70837e7306a5'::uuid, 'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9fc198ad-fdd9-5804-9737-a49618a05c1c'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, 'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e8cd6d8a-3b53-57e4-b590-cc735ef53b76'::uuid,
  '9fc198ad-fdd9-5804-9737-a49618a05c1c'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6d8f4251-bb00-5a30-9951-0a1869b48ccf'::uuid,
  '9fc198ad-fdd9-5804-9737-a49618a05c1c'::uuid,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ed040033-e423-54df-9396-0cd69b5b01bc'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('88c8e96a-43bd-5e08-a5a0-99dbe0fbf388'::uuid, '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('37257138-a008-5c77-9f87-4abc170cadfe'::uuid, '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('65f5a3c6-23af-554e-b25a-dd0d035ac53c'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a6367394-11e7-52f7-ae6e-539b9a00f8ac'::uuid, '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6606aea3-cafc-5730-adb4-c170c596ac5d'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '20703bb4-58dd-5b7f-8fd6-208c35f7ce93'::uuid,
  '6606aea3-cafc-5730-adb4-c170c596ac5d'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5e1cf5d7-7dc5-5028-bc9e-3739bf103d9a'::uuid,
  '6606aea3-cafc-5730-adb4-c170c596ac5d'::uuid,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3f43d965-0196-5ac7-a747-76ecb40741f7'::uuid, 'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid, '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('91865f4f-de18-5c3f-965b-d43b486662a0'::uuid, '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid, 'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7c205097-49ef-54c1-b7d8-28d24b81571a'::uuid, '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid, 'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b9b49f74-a46d-5a42-8dc5-5db8b469ba76'::uuid, 'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid, '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ab67ec7b-3276-5b4a-98f4-9758e5ebf9a3'::uuid, '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid, 'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f3aee2d2-214a-5e62-9753-5e0a8d367de1'::uuid, '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid, 'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f556ae32-b5a4-5885-b9ef-62277b6d91a6'::uuid,
  'f3aee2d2-214a-5e62-9753-5e0a8d367de1'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f29588d8-a565-5a6e-8762-599d295cf875'::uuid,
  'f3aee2d2-214a-5e62-9753-5e0a8d367de1'::uuid,
  '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5b601139-38aa-54f2-95b2-4a4aa32e6e7f'::uuid, 'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid, '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('773fe1a4-9d3a-51cd-bf35-18a7bfc3ebeb'::uuid, '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid, 'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8375f747-0153-5941-99d0-21a3d94d654d'::uuid, '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid, 'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('62ce505e-5ed6-5990-b64e-b0da12be85fd'::uuid, '6510f451-b055-5a67-b046-c091af0bfceb'::uuid, 'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ef70b9f8-95e4-59dc-889b-3d66406d4f3d'::uuid, 'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid, '6510f451-b055-5a67-b046-c091af0bfceb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b4f2f9ed-164c-5fba-b49e-b7ac2939cc4d'::uuid, '6510f451-b055-5a67-b046-c091af0bfceb'::uuid, 'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '173c0d80-e2f9-52ee-b652-1bf5f0b7b7fa'::uuid,
  'b4f2f9ed-164c-5fba-b49e-b7ac2939cc4d'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '03f5a70f-3936-55f3-8833-573d50e76c8d'::uuid,
  'b4f2f9ed-164c-5fba-b49e-b7ac2939cc4d'::uuid,
  'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a58ed9de-c61c-58fb-a590-39cfc2f01c8d'::uuid, '6510f451-b055-5a67-b046-c091af0bfceb'::uuid, 'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8757e67-f7c0-5150-a8c7-898e47eaefd9'::uuid, 'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid, '6510f451-b055-5a67-b046-c091af0bfceb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('17c92896-c0ff-5944-b7d3-dda89a848fc7'::uuid, '6510f451-b055-5a67-b046-c091af0bfceb'::uuid, 'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('63b3980c-aab4-5221-8186-a49cddaf21d7'::uuid, '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid, '370327fd-3558-57cf-8945-bc80d916c857'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('22242a32-69e7-5d7e-8a76-5830d65b8762'::uuid, '370327fd-3558-57cf-8945-bc80d916c857'::uuid, '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('202c4594-97fb-5e00-80fa-53d7ba2fd4f4'::uuid, '370327fd-3558-57cf-8945-bc80d916c857'::uuid, '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4547183f-099a-594f-919e-b57defe34415'::uuid,
  '202c4594-97fb-5e00-80fa-53d7ba2fd4f4'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'eb093fe6-4a8e-57db-9b3a-73e8b2313619'::uuid,
  '202c4594-97fb-5e00-80fa-53d7ba2fd4f4'::uuid,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2b9b462b-290c-563e-bcfd-ef0b5b41412e'::uuid, '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid, 'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('78e4f2d6-8a3e-5607-9c3d-d505afa09955'::uuid, 'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid, '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6ae236cf-0d11-502f-9834-77c243bd648c'::uuid, '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid, 'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e4c683fc-62af-50ab-9206-8d499e363282'::uuid, 'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8be5553d-451a-51d7-a3db-a3bce804c1b1'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9fab9fe9-2ca4-56bf-8e09-14aeb361c180'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c76721dd-68c1-5ffb-bdf8-8e563ad71ff3'::uuid,
  '9fab9fe9-2ca4-56bf-8e09-14aeb361c180'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c9094bb6-d853-57c3-9843-6105e85a53fa'::uuid,
  '9fab9fe9-2ca4-56bf-8e09-14aeb361c180'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('02920525-44eb-57a3-bbfa-a4360f668f5a'::uuid, '56f8439d-f665-534b-a3ed-49809023f629'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7002a623-725e-532a-bbed-4d185c554cfd'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, '56f8439d-f665-534b-a3ed-49809023f629'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d04d4699-1753-5145-8adc-b4b8b33bfcd9'::uuid, '56f8439d-f665-534b-a3ed-49809023f629'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('22d34220-da03-5f22-99c0-d2c7a165fd4b'::uuid, 'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid, 'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e4297b1-458a-5b15-a105-e7fa3711164f'::uuid, 'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid, 'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5f23d755-aefa-5716-ab91-0b3531fd9ab6'::uuid, 'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid, 'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '85312fcd-d0f1-5e49-9c3e-e526cf193c03'::uuid,
  '5f23d755-aefa-5716-ab91-0b3531fd9ab6'::uuid,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;
