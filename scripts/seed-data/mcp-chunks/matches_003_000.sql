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