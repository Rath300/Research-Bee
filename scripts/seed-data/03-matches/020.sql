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

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('192fa009-9e39-5ee8-afe7-b589192a87c4'::uuid, '7eebc6fb-2d56-59bb-8d03-96c3482f42bc'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('de97fc98-91b1-555a-8427-f15f08ac17ac'::uuid, '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid, 'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4dfc728e-3a60-5c1d-a583-653a66c3ff57'::uuid, 'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid, '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('47312764-0547-5d56-a3e5-01a41ab077d2'::uuid, '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid, 'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '206f6ce9-5ab9-55bc-800a-dcb9402795aa'::uuid,
  '47312764-0547-5d56-a3e5-01a41ab077d2'::uuid,
  '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '92af9fa2-4ce8-5020-b211-009ad94019e3'::uuid,
  '47312764-0547-5d56-a3e5-01a41ab077d2'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ad5eb2e5-eb73-5635-9fe1-fc1a4e2f0989'::uuid, '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2a5ebd94-a57d-5ccd-8d29-d65317adeef7'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('413f8ccf-e283-58c4-ad90-3d3b8eba5218'::uuid, '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2230e37c-cc9e-565e-9344-08f250c221aa'::uuid, '27bed1a2-fc35-5a0d-bf20-bf3ac8f905ef'::uuid, '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('421cefae-14bc-5a52-8a3a-78a69482b1aa'::uuid, '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid, '27bed1a2-fc35-5a0d-bf20-bf3ac8f905ef'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('60762113-cd8b-5345-9795-bf8512b7cb01'::uuid, '27bed1a2-fc35-5a0d-bf20-bf3ac8f905ef'::uuid, '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5029921c-2e40-5db9-a566-566d1d4397f0'::uuid,
  '60762113-cd8b-5345-9795-bf8512b7cb01'::uuid,
  '27bed1a2-fc35-5a0d-bf20-bf3ac8f905ef'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '46156063-d72b-5d19-ae0e-62a2af46be28'::uuid,
  '60762113-cd8b-5345-9795-bf8512b7cb01'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  '27bed1a2-fc35-5a0d-bf20-bf3ac8f905ef'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('93e8911b-3960-5f74-b971-9f4435abb8bc'::uuid, 'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid, 'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('668d1c7c-82ac-5583-a262-9b3bd04a5035'::uuid, 'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid, 'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2f00b511-f117-5fe6-a861-afa7b2cfd573'::uuid, 'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid, 'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e95f579-497d-5f75-b245-4b6766c4c935'::uuid, 'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f1f41c42-3bfb-5240-9e5c-55056aa02ad8'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('881bb2f4-ad53-5a60-b5ac-dd04e4b4bcee'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '25ccf6ce-650b-54a2-b1bc-0b7868690a4d'::uuid,
  '881bb2f4-ad53-5a60-b5ac-dd04e4b4bcee'::uuid,
  'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c26587a7-304e-50ef-8678-ebd03471f675'::uuid,
  '881bb2f4-ad53-5a60-b5ac-dd04e4b4bcee'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4258fac8-92fa-5270-8b0f-589022b2061a'::uuid, '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6852b47f-b488-564b-99fa-5973d2ca49f4'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('10264c58-19dd-5d22-9751-e5d9d60acf4b'::uuid, '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;
