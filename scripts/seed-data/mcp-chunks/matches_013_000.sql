INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b983ff1f-eaca-5d4b-8fd8-168994efd3fc'::uuid, '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid, '9368db5e-e423-510b-abf1-bd3510893600'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9ea6173f-5c91-5416-be33-4896570885bf'::uuid, '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid, '9368db5e-e423-510b-abf1-bd3510893600'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '44851a4a-ed94-590d-a621-f6eb730db87d'::uuid,
  '9ea6173f-5c91-5416-be33-4896570885bf'::uuid,
  '9368db5e-e423-510b-abf1-bd3510893600'::uuid,
  '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4936468b-b954-58ca-9aac-1a8f0766c6a1'::uuid,
  '9ea6173f-5c91-5416-be33-4896570885bf'::uuid,
  '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid,
  '9368db5e-e423-510b-abf1-bd3510893600'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('df8a72df-fff4-5375-a1f4-57312162df16'::uuid, '3c61d365-5745-5cca-b16b-98e085138757'::uuid, '82910639-3add-56af-a2cb-692bff954f43'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('824523be-3253-59d8-8c14-14aa7b907eb0'::uuid, '82910639-3add-56af-a2cb-692bff954f43'::uuid, '3c61d365-5745-5cca-b16b-98e085138757'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fc25c5db-7ab3-5ffb-ba80-f4ec6767db7a'::uuid, '3c61d365-5745-5cca-b16b-98e085138757'::uuid, '82910639-3add-56af-a2cb-692bff954f43'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('40e34d54-00d6-5441-8d56-bc2c384edaa7'::uuid, '9b892976-4532-57a5-9100-2063a3f4046f'::uuid, '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3612399c-ee0c-536a-9019-dc30ed346a14'::uuid, '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid, '9b892976-4532-57a5-9100-2063a3f4046f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3099e023-11c3-57e0-b2a6-00d7bdb6c069'::uuid, '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid, '9b892976-4532-57a5-9100-2063a3f4046f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '59d720a6-f817-5d81-b9ad-99a5ad8309a3'::uuid,
  '3099e023-11c3-57e0-b2a6-00d7bdb6c069'::uuid,
  '9b892976-4532-57a5-9100-2063a3f4046f'::uuid,
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8e79cbb6-50be-5a17-aa29-73360b3512c2'::uuid,
  '3099e023-11c3-57e0-b2a6-00d7bdb6c069'::uuid,
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
  '9b892976-4532-57a5-9100-2063a3f4046f'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e3b28aae-76b4-5e2b-8995-e9b76e690348'::uuid, '4ae3110b-2758-5a34-9e95-e052815cda96'::uuid, '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1f0bd231-948d-5aad-8dad-199aa43c1ac0'::uuid, '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid, '4ae3110b-2758-5a34-9e95-e052815cda96'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8575041c-9c18-5de1-9694-43538c101d28'::uuid, '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid, '4ae3110b-2758-5a34-9e95-e052815cda96'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a93927e6-6f50-5fab-b324-05c54afad63a'::uuid, '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid, 'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f383b58a-bba0-58a7-a7ce-6e9b70398c03'::uuid, 'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid, '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c97ffccf-1499-5e98-adda-ffca71fb817d'::uuid, '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid, 'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ded4c1aa-4ee2-5ece-93a5-fdf2db384a84'::uuid,
  'c97ffccf-1499-5e98-adda-ffca71fb817d'::uuid,
  '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid,
  'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a7aaf855-d62b-5110-bdae-d34814eb89ea'::uuid,
  'c97ffccf-1499-5e98-adda-ffca71fb817d'::uuid,
  'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid,
  '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3a9f051c-b43c-5ed7-87df-eafc0d4958c1'::uuid, '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid, '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('36a35d0e-0df9-512c-9e59-924f843db0ff'::uuid, '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid, '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3d831f04-c332-5de1-943f-04dea8fd33a8'::uuid, '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid, '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('342ea7c2-d580-5d80-a32f-58f84ef85d1e'::uuid, '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid, 'a9c2ac75-ccc9-57df-8596-ce89dc703b66'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d20afdae-a3b5-5b94-895b-e540cf7b388c'::uuid, 'a9c2ac75-ccc9-57df-8596-ce89dc703b66'::uuid, '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4b73efad-3b7c-5bc7-9ec1-b8000ab84f77'::uuid, '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid, 'a9c2ac75-ccc9-57df-8596-ce89dc703b66'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '30ca0c36-6b3b-5506-9458-8788aeb56c35'::uuid,
  '4b73efad-3b7c-5bc7-9ec1-b8000ab84f77'::uuid,
  '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid,
  'a9c2ac75-ccc9-57df-8596-ce89dc703b66'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b651917b-8bd6-5887-bdfd-0d7711468962'::uuid,
  '4b73efad-3b7c-5bc7-9ec1-b8000ab84f77'::uuid,
  'a9c2ac75-ccc9-57df-8596-ce89dc703b66'::uuid,
  '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d1602915-3535-5053-974b-0166afc4f457'::uuid, '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid, 'dcbc3732-b957-594c-aa65-a88d71f238c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('918c4246-f78e-5158-bc55-747ea8d4e3dd'::uuid, 'dcbc3732-b957-594c-aa65-a88d71f238c4'::uuid, '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('282a1239-59b6-5728-a616-7c817ba6aef6'::uuid, '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid, 'dcbc3732-b957-594c-aa65-a88d71f238c4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c367264b-10af-5510-9c5e-98121d7b5b6d'::uuid, 'c18237ec-ff4a-5cc3-a383-cb6f58e13ea2'::uuid, '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cf645981-c027-55b1-ba36-74edd19e1965'::uuid, '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid, 'c18237ec-ff4a-5cc3-a383-cb6f58e13ea2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('624c0e7e-cc72-5c0d-82a9-e47554d1fa9b'::uuid, '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid, 'c18237ec-ff4a-5cc3-a383-cb6f58e13ea2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2b927f5f-30c6-5d15-88a5-7bd80727fdd9'::uuid,
  '624c0e7e-cc72-5c0d-82a9-e47554d1fa9b'::uuid,
  'c18237ec-ff4a-5cc3-a383-cb6f58e13ea2'::uuid,
  '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '29c5b99e-956f-5cd3-9695-47b9cf2ba615'::uuid,
  '624c0e7e-cc72-5c0d-82a9-e47554d1fa9b'::uuid,
  '43c64c8b-24ad-54a6-8b17-817e794d7c4f'::uuid,
  'c18237ec-ff4a-5cc3-a383-cb6f58e13ea2'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6b40a297-dfee-522f-a75b-6f34dee14cec'::uuid, '617208a8-08ea-5f2c-b293-4093cd3d2775'::uuid, '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e6d9aa9-56aa-52fe-ba62-9601ba40bcd9'::uuid, '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid, '617208a8-08ea-5f2c-b293-4093cd3d2775'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a87f6136-fd28-52bc-93e0-a106998415cc'::uuid, '617208a8-08ea-5f2c-b293-4093cd3d2775'::uuid, '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('96bf8b5c-402d-5914-ab70-0c5d30e642c3'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;