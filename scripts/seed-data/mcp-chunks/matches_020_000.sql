INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9941fc4b-5e33-5b6a-a7ca-1f5eb910e131'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('930658e8-6e05-5f38-96c5-6c15edb6c6c0'::uuid, 'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid, '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('41f4ae86-8681-5cad-9347-91b0af2dbbe3'::uuid, '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid, 'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8f0dcacd-53c3-5e58-a572-129299968746'::uuid, '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid, 'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fd86116d-a642-5311-882d-81adf712b5ea'::uuid,
  '8f0dcacd-53c3-5e58-a572-129299968746'::uuid,
  'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '835ebcaf-84d8-5f42-8e67-dc59b489d4d8'::uuid,
  '8f0dcacd-53c3-5e58-a572-129299968746'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5d69ae39-18f6-5966-a470-ef818b5f8d38'::uuid, 'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid, '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1e2762f9-a874-5fab-8f09-ca0355beb339'::uuid, '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid, 'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ee824beb-b892-53d0-bd60-5ce99a9fc4e6'::uuid, '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid, 'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8880a1d8-b84d-586d-9463-4f96fd21e80b'::uuid, '843f469a-8134-5966-bfe0-48584f3270fc'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1adb656f-3e33-50f2-8298-8b5b60cc61e1'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, '843f469a-8134-5966-bfe0-48584f3270fc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6cb9c6eb-2e19-5bde-8935-ab6ed36ba422'::uuid, '843f469a-8134-5966-bfe0-48584f3270fc'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0d94e4ab-1d8e-5864-965b-10d8a42dd8aa'::uuid,
  '6cb9c6eb-2e19-5bde-8935-ab6ed36ba422'::uuid,
  '843f469a-8134-5966-bfe0-48584f3270fc'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '43e7da46-9f85-5fb8-845a-ab8119426d88'::uuid,
  '6cb9c6eb-2e19-5bde-8935-ab6ed36ba422'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  '843f469a-8134-5966-bfe0-48584f3270fc'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('368b581c-5c9e-597b-b9e7-9ab040bb4327'::uuid, 'ff2a77b6-4d2a-51ff-954c-11a84543e245'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('76b61ff4-b5a3-5c0b-83fc-7c353d8881b5'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, 'ff2a77b6-4d2a-51ff-954c-11a84543e245'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1e938190-db97-5953-a6ae-4b67911d7cd8'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, 'ff2a77b6-4d2a-51ff-954c-11a84543e245'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4f37e1aa-03c6-50d5-aab4-545144add834'::uuid, '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid, '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38222d37-8329-5c0d-a7d1-68442850ab7d'::uuid, '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid, '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4f54beb8-194e-55ef-a4c9-441083e7be5f'::uuid, '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid, '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c8ae3cfe-b635-5499-8b5e-259ca54b2e66'::uuid,
  '4f54beb8-194e-55ef-a4c9-441083e7be5f'::uuid,
  '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6f2c262f-9522-5829-b030-0850f8871677'::uuid,
  '4f54beb8-194e-55ef-a4c9-441083e7be5f'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('441b3f68-5cc4-5c56-a667-4e546ecc70b7'::uuid, '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('92c14f6f-aeb8-50a8-bf67-abb31ddd2067'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9c7359ec-2008-5573-88ba-57043a338a2e'::uuid, '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('13948268-0f3b-5bff-83bc-ca1a57502fe1'::uuid, '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid, '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('04874346-ead6-51ce-b737-37bca0ca0ac2'::uuid, '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid, '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1ca87734-ff8d-53e3-892b-4417eaafe5a9'::uuid, '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid, '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5a41791b-2922-5210-8765-1f192f766feb'::uuid,
  '1ca87734-ff8d-53e3-892b-4417eaafe5a9'::uuid,
  '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2846fe84-bd25-564d-8d25-c9ebdcba4bc7'::uuid,
  '1ca87734-ff8d-53e3-892b-4417eaafe5a9'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('95d33486-9ba5-5d24-a017-dfc855a87884'::uuid, 'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid, 'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2838abbd-fb2d-5afd-9e08-98f613083155'::uuid, 'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid, 'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2bacc119-f17e-53a1-9b18-add06b5222ef'::uuid, 'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid, 'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8132151c-0470-5d3d-b61f-3198a0b4a5fe'::uuid, 'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a645fbc1-4f3d-5ce5-9e78-217c2a195453'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1d417325-e6ad-5348-ae39-3ded7cb4c1a9'::uuid, 'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b2a07689-6b49-504d-bd87-c4c81bd517cc'::uuid,
  '1d417325-e6ad-5348-ae39-3ded7cb4c1a9'::uuid,
  'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'aab20a94-155a-5e7f-80d6-ed513f5a2f30'::uuid,
  '1d417325-e6ad-5348-ae39-3ded7cb4c1a9'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fe326704-9e6c-54d0-bef8-04703838d2b2'::uuid, '7eebc6fb-2d56-59bb-8d03-96c3482f42bc'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('85cb8290-dc0c-5c61-accb-b7e62075a4da'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, '7eebc6fb-2d56-59bb-8d03-96c3482f42bc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;