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

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b04e6e65-341d-5da2-8468-c70b58a90411'::uuid, '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9ab049ac-1660-529e-a762-53948cad80bb'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'af43ac59-e469-59b6-aaee-50bd638cadeb'::uuid,
  '9ab049ac-1660-529e-a762-53948cad80bb'::uuid,
  '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid,
  '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8d95c7af-35c9-5e27-9f13-83ad7f584908'::uuid,
  '9ab049ac-1660-529e-a762-53948cad80bb'::uuid,
  '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid,
  '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eac32ecc-54d2-5f0d-83aa-d12e0e1654ef'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a0214963-4a42-5f7e-b396-9770bbb32ce5'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f2ab8210-343b-5609-85c3-6707ced811ec'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e92c5434-38e3-5148-89ef-0ef0e92cea59'::uuid, 'a169404e-faf7-5071-b788-07d72b750c2c'::uuid, 'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('334cb4b8-2945-56c3-99bc-f34ed0b8a2f8'::uuid, 'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid, 'a169404e-faf7-5071-b788-07d72b750c2c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cf595371-623c-587c-96f4-e7ea1dcf6831'::uuid, 'a169404e-faf7-5071-b788-07d72b750c2c'::uuid, 'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f401aac3-7314-5715-a5ed-835da98536db'::uuid,
  'cf595371-623c-587c-96f4-e7ea1dcf6831'::uuid,
  'a169404e-faf7-5071-b788-07d72b750c2c'::uuid,
  'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '98dd9659-c9ea-51a8-910a-c86d332be4f6'::uuid,
  'cf595371-623c-587c-96f4-e7ea1dcf6831'::uuid,
  'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid,
  'a169404e-faf7-5071-b788-07d72b750c2c'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6cf10bb1-50dd-525e-bdf9-af28825b02e4'::uuid, '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid, 'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7d54ddb-663f-52e7-b799-cdcce36d164b'::uuid, 'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid, '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f1298df3-9f4e-5639-89cc-9801dbed596c'::uuid, '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid, 'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c73f4574-a098-5b3d-bfce-d6702b1eecf9'::uuid, '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid, 'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4d4a0433-f3b5-5db8-9016-083d310d3295'::uuid, 'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid, '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5f6eb3cb-8346-5e40-b836-0cb1b6cce363'::uuid, '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid, 'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '875acde3-3381-5d5e-92fb-aedc0eae3a85'::uuid,
  '5f6eb3cb-8346-5e40-b836-0cb1b6cce363'::uuid,
  '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid,
  'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ac13fc7a-8f9e-5d07-a7dd-97949698004a'::uuid,
  '5f6eb3cb-8346-5e40-b836-0cb1b6cce363'::uuid,
  'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid,
  '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6dcd87bf-9298-5da6-ae7e-5a56b5aabce4'::uuid, 'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('441b7fb1-2d06-5161-a7c6-dd10c38b66d5'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, 'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e340ed48-9fa3-5604-856f-749423252ef8'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, 'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('70f76ed0-0c45-545b-8ac0-c1fbb38bac38'::uuid, '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid, 'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5e9713ee-f332-5acc-962e-981979d295d7'::uuid, 'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid, '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('45667c9b-e982-5951-a23f-567c3d12129d'::uuid, '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid, 'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0ff8ae4f-8700-59a7-a051-e4a8e7aeca80'::uuid,
  '45667c9b-e982-5951-a23f-567c3d12129d'::uuid,
  '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid,
  'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd365a2db-155b-5348-9556-cf98556a6a39'::uuid,
  '45667c9b-e982-5951-a23f-567c3d12129d'::uuid,
  'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid,
  '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('81470c85-4abd-5e38-803e-bee2db985b78'::uuid, '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1bf98a20-832f-535c-9bd0-01f87562947e'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ff904f0c-5adc-576e-9ced-9905b04b2b09'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e03af8c8-4176-5dc2-a75a-74af07016fe1'::uuid, '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid, 'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('08285da1-87f4-5bbb-8cf8-ebb095046090'::uuid, 'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid, '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f94f6265-daf9-58ee-8f52-76bf06c6bbcb'::uuid, '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid, 'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1af4705a-d58e-580b-9941-d2a153766945'::uuid,
  'f94f6265-daf9-58ee-8f52-76bf06c6bbcb'::uuid,
  '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid,
  'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f7f1ae9a-f0cd-5436-b1bd-aaf824edd634'::uuid,
  'f94f6265-daf9-58ee-8f52-76bf06c6bbcb'::uuid,
  'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid,
  '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('240fb422-9993-5bd0-938d-aecad764c757'::uuid, 'df78a96e-8530-5ff4-8128-44dbbeab3548'::uuid, '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d5918e40-19be-5480-833a-3c2eccc6a357'::uuid, '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid, 'df78a96e-8530-5ff4-8128-44dbbeab3548'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('401612e6-c424-57a1-ae7d-3ace8cae92b6'::uuid, '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid, 'df78a96e-8530-5ff4-8128-44dbbeab3548'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f5c37f11-3a53-5c31-9c70-c4c564cebd35'::uuid, '27c33522-5956-5737-a7aa-a471b0013983'::uuid, 'eceba982-2394-5904-b315-9a2f77d07474'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('276d7162-7ce4-5c55-938b-1b6ce5b3d0c2'::uuid, 'eceba982-2394-5904-b315-9a2f77d07474'::uuid, '27c33522-5956-5737-a7aa-a471b0013983'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8468f4cd-7c08-50e7-bbf7-242deb487aaf'::uuid, '27c33522-5956-5737-a7aa-a471b0013983'::uuid, 'eceba982-2394-5904-b315-9a2f77d07474'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd0ef914a-6c84-5c8e-8470-0f6038c239cf'::uuid,
  '8468f4cd-7c08-50e7-bbf7-242deb487aaf'::uuid,
  '27c33522-5956-5737-a7aa-a471b0013983'::uuid,
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a8805c92-cbf3-5db3-b95d-4dcddc4191bf'::uuid,
  '8468f4cd-7c08-50e7-bbf7-242deb487aaf'::uuid,
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  '27c33522-5956-5737-a7aa-a471b0013983'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a00a8646-736d-5a3e-bc07-5c16cad273d1'::uuid, 'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid, '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6cb660bc-3ea2-578a-ae6c-3e127365a786'::uuid, '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid, 'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bb885c28-7afe-5cf8-a84c-c937fc9e4f35'::uuid, '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid, 'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e9260f2d-bd19-5d1e-9761-16f89437af5b'::uuid, 'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid, '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d9b447e7-1346-523a-b342-47e9d1ff70f4'::uuid, '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid, 'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2edac96f-b204-5949-88c8-e2e6d6112854'::uuid, '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid, 'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '67135c86-d12b-5582-b19a-576970e3e14b'::uuid,
  '2edac96f-b204-5949-88c8-e2e6d6112854'::uuid,
  'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid,
  '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '64a48e49-7c6b-5c62-aafa-94950a11c12c'::uuid,
  '2edac96f-b204-5949-88c8-e2e6d6112854'::uuid,
  '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid,
  'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('db61282a-299d-50ee-9c49-ac0da5f6e558'::uuid, 'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid, 'a6390256-0979-5984-bd9a-7a836b35c744'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fd6d92c3-8718-5449-8ff3-44125132973b'::uuid, 'a6390256-0979-5984-bd9a-7a836b35c744'::uuid, 'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2f802494-01ab-52b4-a3cd-64ee0fc438bf'::uuid, 'a6390256-0979-5984-bd9a-7a836b35c744'::uuid, 'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('53edb955-ce6a-5107-b539-eefe39d7c55e'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, 'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9b13f7a7-a114-59db-b901-77270be1cb5d'::uuid, 'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6bf3d02a-638e-59b5-9112-114a0822d0fe'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, 'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '59eaad6b-f845-5668-b685-5c6fcc571a24'::uuid,
  '6bf3d02a-638e-59b5-9112-114a0822d0fe'::uuid,
  '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid,
  'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '64608120-b4db-5bd9-a3f7-6ffa0560b46f'::uuid,
  '6bf3d02a-638e-59b5-9112-114a0822d0fe'::uuid,
  'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid,
  '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0c12ad8e-d758-5f67-9dde-27c12e0a5ff2'::uuid, 'f1af066e-3f30-5479-830e-3162690b429d'::uuid, 'd147a55f-f99d-5889-ae38-f27a9b6b3e63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('489c6961-a238-5e10-bb24-d98074c19ebe'::uuid, 'd147a55f-f99d-5889-ae38-f27a9b6b3e63'::uuid, 'f1af066e-3f30-5479-830e-3162690b429d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9eebfafa-fc15-56e5-a3a9-ade2f6c9be5d'::uuid, 'd147a55f-f99d-5889-ae38-f27a9b6b3e63'::uuid, 'f1af066e-3f30-5479-830e-3162690b429d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0ef8182b-4ee5-5901-9ac4-f1f8487e5c8b'::uuid, '94620992-b146-536c-a930-0efce8d2c959'::uuid, '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1a7df930-396f-50d2-a89f-4827d5a3e69b'::uuid, '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid, '94620992-b146-536c-a930-0efce8d2c959'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7876dff9-3e49-5784-8ec2-d9909575a2ef'::uuid, '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid, '94620992-b146-536c-a930-0efce8d2c959'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '636a3c71-9a25-5cc8-8af4-6d54de51dc59'::uuid,
  '7876dff9-3e49-5784-8ec2-d9909575a2ef'::uuid,
  '94620992-b146-536c-a930-0efce8d2c959'::uuid,
  '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '778ed472-7f72-58dd-b7cb-5bbcff982e4d'::uuid,
  '7876dff9-3e49-5784-8ec2-d9909575a2ef'::uuid,
  '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid,
  '94620992-b146-536c-a930-0efce8d2c959'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d606f0a3-9182-5cab-923c-2f2c6b880fca'::uuid, 'a446d3e3-844d-589c-9f96-50f5f4eaee5b'::uuid, 'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e2c20690-bc3f-5b37-bb49-0ab619e3eef4'::uuid, 'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid, 'a446d3e3-844d-589c-9f96-50f5f4eaee5b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0c5038a6-43bf-573d-9a0b-5400d7afb9bb'::uuid, 'a446d3e3-844d-589c-9f96-50f5f4eaee5b'::uuid, 'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('afc409ce-0719-5165-8614-6ccb781a2eaa'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, '73d21f69-f082-53ec-a793-9805a6962209'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a92e2d74-9a58-5f21-bd1c-868774ec12b6'::uuid, '73d21f69-f082-53ec-a793-9805a6962209'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('91924bb1-bf85-5ed7-a5e8-58b7504641c1'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, '73d21f69-f082-53ec-a793-9805a6962209'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0223b58a-557f-5a18-b963-7d2ec3556bcf'::uuid,
  '91924bb1-bf85-5ed7-a5e8-58b7504641c1'::uuid,
  '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid,
  '73d21f69-f082-53ec-a793-9805a6962209'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c5ea1c26-efcf-5615-a304-548578846333'::uuid,
  '91924bb1-bf85-5ed7-a5e8-58b7504641c1'::uuid,
  '73d21f69-f082-53ec-a793-9805a6962209'::uuid,
  '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6fe33868-18ec-52b0-99fd-7328d6f136a8'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, 'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('91f18aac-36f1-5ffd-80a5-c2fca2eb4fe8'::uuid, 'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3054c7a7-5608-5210-b2d9-262f43f272fc'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, 'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dec2ea18-80ac-5f80-b332-c3c8d29b7261'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, 'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('92216544-7f14-52af-8d79-0e42da457f9a'::uuid, 'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e9732a7b-2be3-5e81-9568-73828df88318'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, 'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '288913fb-4cc4-541e-957e-182834c1949e'::uuid,
  'e9732a7b-2be3-5e81-9568-73828df88318'::uuid,
  '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid,
  'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6ed60304-4146-52cc-a13d-cd5f103b46ab'::uuid,
  'e9732a7b-2be3-5e81-9568-73828df88318'::uuid,
  'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid,
  '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('93b326d7-be9a-53a0-ba19-02792f7e8f2f'::uuid, 'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid, 'bbd25235-3b2e-5db2-a0dd-8a7dddfac498'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('20124f89-153d-5070-aa9c-22e0a20527c3'::uuid, 'bbd25235-3b2e-5db2-a0dd-8a7dddfac498'::uuid, 'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('aa88bc33-bcdf-58e3-bb2a-00a9623dabbf'::uuid, 'bbd25235-3b2e-5db2-a0dd-8a7dddfac498'::uuid, 'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f36faf15-af42-59e5-98c9-e180082a3de8'::uuid, 'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9b08ba97-bb50-51dc-8bc3-95dfa1465b26'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, 'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3be4d910-cac2-56cb-ad79-b20ed33b214d'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, 'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2a8dcf86-feaa-50ea-b2ab-ed201d38ca06'::uuid,
  '3be4d910-cac2-56cb-ad79-b20ed33b214d'::uuid,
  'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid,
  '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '80a77f28-2f9f-53b4-8478-3aaaff346236'::uuid,
  '3be4d910-cac2-56cb-ad79-b20ed33b214d'::uuid,
  '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid,
  'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('62e526cf-4a6b-53a4-bbf4-b8dfdcf95ac9'::uuid, '7b5d6f8f-a9da-5c63-9788-0f8bd3e5ea66'::uuid, 'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('359969ef-8535-5298-829d-ee22b82938df'::uuid, 'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid, '7b5d6f8f-a9da-5c63-9788-0f8bd3e5ea66'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6ead394f-f383-58f3-ac24-e988680661c4'::uuid, '7b5d6f8f-a9da-5c63-9788-0f8bd3e5ea66'::uuid, 'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c9541f3b-9372-5143-a713-539de303d179'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6032cc26-ff06-5b46-a759-ec2f6376fdf6'::uuid, '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('94cdfa66-ce27-5a36-87ff-8c9981eb9555'::uuid, '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ee74fb0e-e055-5597-8908-0551dff8591a'::uuid,
  '94cdfa66-ce27-5a36-87ff-8c9981eb9555'::uuid,
  '489286d8-f958-5262-bb06-db46b21bf316'::uuid,
  '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4b2cfdd8-5d31-510d-b548-9e4ac873c58a'::uuid,
  '94cdfa66-ce27-5a36-87ff-8c9981eb9555'::uuid,
  '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid,
  '489286d8-f958-5262-bb06-db46b21bf316'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38ec1618-783c-54be-9663-83805c62c103'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, 'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b8605c29-eefe-5b19-8897-9dffcdae6387'::uuid, 'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e530dc90-9115-568d-84dc-a67f498b8b87'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, 'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bea6bb3b-4520-5c87-90a3-23a51b1ae212'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e5b36c30-e9b5-5849-864f-ed93b284b5d2'::uuid, '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b32ed8f9-19f9-5532-aba0-9ee209ab9227'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7a36f1b8-926f-5808-a26e-478ee0444a90'::uuid,
  'b32ed8f9-19f9-5532-aba0-9ee209ab9227'::uuid,
  '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid,
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '08af3556-1301-50e4-8287-503effbfca2a'::uuid,
  'b32ed8f9-19f9-5532-aba0-9ee209ab9227'::uuid,
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
  '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('adb672c4-3e0e-58c3-9e75-a8cfca6c8ff8'::uuid, '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid, 'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('13dfda0f-d08f-5888-8bbe-4307d657b3eb'::uuid, 'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid, '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0a7ca5d5-1a8a-5968-87c7-dcc521c0a51e'::uuid, '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid, 'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d00f30f7-d18d-5b1b-a915-ca0e4b5c1dde'::uuid, 'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e5d9a61e-17db-5a66-8868-5c2b2a128833'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, 'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('542fd4fa-c6e4-508c-a427-9149794a8adf'::uuid, 'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '79a9fb4b-917b-515b-a2fb-7a438bdb2d08'::uuid,
  '542fd4fa-c6e4-508c-a427-9149794a8adf'::uuid,
  'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid,
  'eebb922f-dd26-57ea-a213-9149abab4313'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c3c1d1e8-f465-5220-8705-16472855bd7d'::uuid,
  '542fd4fa-c6e4-508c-a427-9149794a8adf'::uuid,
  'eebb922f-dd26-57ea-a213-9149abab4313'::uuid,
  'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4a4890d9-1cca-56ba-b1cf-2eefc4054e9e'::uuid, '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bded8a36-81f0-5850-8048-9505005df77c'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8e4a515f-f080-5900-ba9d-cb68be7c04a9'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0bcab6f9-b5aa-5055-8c80-ef152fca39ee'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, '2d6a40b8-dfab-5368-9f36-49bd06c4e841'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e8ee2df3-fc15-51e1-aad2-5cddc7c6f3a9'::uuid, '2d6a40b8-dfab-5368-9f36-49bd06c4e841'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('aa1e8f41-19fb-5739-865c-653d1150c2b8'::uuid, '2d6a40b8-dfab-5368-9f36-49bd06c4e841'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '87e39c2a-f131-59d4-92f0-e439a3c26826'::uuid,
  'aa1e8f41-19fb-5739-865c-653d1150c2b8'::uuid,
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  '2d6a40b8-dfab-5368-9f36-49bd06c4e841'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7a6cc597-f421-57af-bc74-c94e18dd8f28'::uuid,
  'aa1e8f41-19fb-5739-865c-653d1150c2b8'::uuid,
  '2d6a40b8-dfab-5368-9f36-49bd06c4e841'::uuid,
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('32842d7c-a597-53bd-bfad-f0ecb2c095c0'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, 'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('736acfc0-4d0d-5376-9d09-6748ca704110'::uuid, 'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f8969183-9127-5044-97f9-32abb8bf7008'::uuid, 'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('99cd2929-3dcc-591b-af61-07ce17ec7c03'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, 'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a151b485-2830-551b-94fb-c7f9dfcbf3ed'::uuid, 'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a19adabc-567f-5dc0-8491-538b8c1214c7'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, 'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f58df428-78dc-5554-b8c6-0beb684fd0b3'::uuid,
  'a19adabc-567f-5dc0-8491-538b8c1214c7'::uuid,
  '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid,
  'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e36d0497-4102-5f6b-bc1c-85bd913d0a4c'::uuid,
  'a19adabc-567f-5dc0-8491-538b8c1214c7'::uuid,
  'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid,
  '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('976dfefc-9050-55fd-890d-d8938485cf8a'::uuid, '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid, 'd5b0211b-c5f4-597f-acb9-7622a4effdc1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8931d4d3-57f7-5d5d-8b01-8f9280511e86'::uuid, 'd5b0211b-c5f4-597f-acb9-7622a4effdc1'::uuid, '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0394aed5-8344-507d-b4a3-cccb1e1503d5'::uuid, '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid, 'd5b0211b-c5f4-597f-acb9-7622a4effdc1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('78d886f7-283b-51b7-a2d9-9e96d3bb3583'::uuid, '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fb57ff77-213e-58b5-8637-1ef50f0f5032'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b77763db-52a9-5f98-8892-4b0e1d6da1d3'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b9816c10-f45a-554b-997e-8118f71503cb'::uuid,
  'b77763db-52a9-5f98-8892-4b0e1d6da1d3'::uuid,
  '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid,
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd8f14b36-cd21-5295-a561-69e4c447bf35'::uuid,
  'b77763db-52a9-5f98-8892-4b0e1d6da1d3'::uuid,
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('90c21d57-b1cd-5dcb-b5bd-a3a6d17b2c15'::uuid, '82910639-3add-56af-a2cb-692bff954f43'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('06c39376-db17-548c-98a0-1c807b4e5844'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, '82910639-3add-56af-a2cb-692bff954f43'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('01cfef38-1dba-51fb-9171-21f4c417eaad'::uuid, '82910639-3add-56af-a2cb-692bff954f43'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('60e7384d-6c32-519a-9872-65d54302f645'::uuid, '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid, '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f7da4243-48bc-5d7a-98b7-16f8e79fc654'::uuid, '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid, '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fff27e7b-2373-5d18-8b02-e7ff19d69e94'::uuid, '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid, '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '55c21a4a-ac34-56dd-a6fe-c24c89f945f7'::uuid,
  'fff27e7b-2373-5d18-8b02-e7ff19d69e94'::uuid,
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
  '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '25b29a62-4f76-5287-ab23-d2e4d95b94af'::uuid,
  'fff27e7b-2373-5d18-8b02-e7ff19d69e94'::uuid,
  '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid,
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f5c8eae6-d421-5b89-b426-f916883add1e'::uuid, '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('752ca428-f662-5c64-8288-76945bffb696'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0b47105f-053b-5f34-a1df-5115d5a3b0a1'::uuid, '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1ad9a0b3-46b8-5a13-8637-a53400e12fa9'::uuid, '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid, 'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e5078d4a-2a8a-5745-b2e6-140b8f815143'::uuid, 'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid, '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5e21a16d-f67a-5fbd-bc42-ce3445f08e97'::uuid, '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid, 'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c22e8d04-bc74-5200-8544-a02badc3cdbc'::uuid,
  '5e21a16d-f67a-5fbd-bc42-ce3445f08e97'::uuid,
  '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid,
  'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '25ea4b4b-8588-504e-bfa0-3bfc8fd1a146'::uuid,
  '5e21a16d-f67a-5fbd-bc42-ce3445f08e97'::uuid,
  'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid,
  '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b8a971d2-63b5-5319-a92e-2ad397805b7c'::uuid, 'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid, 'f326a54c-18ae-557e-8143-fda4415ba59b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('99995de1-7ceb-5c11-af4b-3b0dc25f1e18'::uuid, 'f326a54c-18ae-557e-8143-fda4415ba59b'::uuid, 'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('804ac3de-b716-5ed5-aff2-657e9e850369'::uuid, 'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid, 'f326a54c-18ae-557e-8143-fda4415ba59b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('27ec16c2-4c77-54f8-bab3-ef531259ee7b'::uuid, 'a9c2ac75-ccc9-57df-8596-ce89dc703b66'::uuid, 'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

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

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38b4a158-ed3a-5bbb-b85f-232960d66c8b'::uuid, '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6b18e877-75b4-50d0-b303-07cf5d10508d'::uuid, '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '97430467-c82e-5f45-bcbf-1c81294b0ede'::uuid,
  '6b18e877-75b4-50d0-b303-07cf5d10508d'::uuid,
  '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid,
  '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;
