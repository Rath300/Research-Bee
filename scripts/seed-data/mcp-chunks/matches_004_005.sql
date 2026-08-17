INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a71ff410-65f3-56f0-86c7-6f8d3250891a'::uuid,
  '05da5ef0-8ad9-5d44-93fd-d080d7e57a30'::uuid,
  '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid,
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d12bfbb7-e39c-5ba7-ae14-1fb552bfc2d0'::uuid, '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid, 'a1026c86-856a-5225-b193-c935211475da'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a12025b1-fa20-5a17-9145-db7af0847a9c'::uuid, 'a1026c86-856a-5225-b193-c935211475da'::uuid, '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2804cec2-99bb-5be1-922d-8b2b949354e5'::uuid, '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid, 'a1026c86-856a-5225-b193-c935211475da'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f1f03eeb-1363-50d5-94b0-f5fdfe449c78'::uuid, '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid, 'adab7a98-c1d6-591f-8b46-750925810a73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e7824288-3506-57bb-9f2e-5d0a0692810f'::uuid, 'adab7a98-c1d6-591f-8b46-750925810a73'::uuid, '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0a19cb9a-5482-59fd-ab1d-c2b831fe8502'::uuid, '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid, 'adab7a98-c1d6-591f-8b46-750925810a73'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '739f184c-fa79-573d-91ed-3a92840696d4'::uuid,
  '0a19cb9a-5482-59fd-ab1d-c2b831fe8502'::uuid,
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  'adab7a98-c1d6-591f-8b46-750925810a73'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ef2244b0-0dcb-56e3-bd69-3202307eb437'::uuid,
  '0a19cb9a-5482-59fd-ab1d-c2b831fe8502'::uuid,
  'adab7a98-c1d6-591f-8b46-750925810a73'::uuid,
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('359eab6c-71d4-575a-b28b-4a1ea3a46593'::uuid, '76542368-5e9c-52ba-bde0-7bedd7200b02'::uuid, '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1f481265-ceae-5d1c-b56c-df97e1ff42d7'::uuid, '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid, '76542368-5e9c-52ba-bde0-7bedd7200b02'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f4427939-9a3b-5d03-8ef7-fd031bf2ff4c'::uuid, '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid, '76542368-5e9c-52ba-bde0-7bedd7200b02'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72d7a8d2-7c16-51c7-b5f4-e7392881b6ba'::uuid, '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid, '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('53c7ee1a-41d9-59c4-b36a-b61615086216'::uuid, '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid, '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e6e8ac92-89b4-5a09-9218-5e83179d05ca'::uuid, '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid, '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '31941044-71bf-51fa-832a-d422a53019a9'::uuid,
  'e6e8ac92-89b4-5a09-9218-5e83179d05ca'::uuid,
  '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid,
  '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b20dc718-b340-5737-b83b-5dfb63d9d413'::uuid,
  'e6e8ac92-89b4-5a09-9218-5e83179d05ca'::uuid,
  '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid,
  '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ad09ce6e-4753-54b8-8abe-0e0e7b0905a1'::uuid, '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid, '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6243079b-9516-5029-9f1b-7933378692d8'::uuid, '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid, '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('07f1059d-dfe7-5603-97c4-295e7f22a386'::uuid, '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid, '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('62158021-ed43-50b1-9a0b-a3182b93286c'::uuid, '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid, 'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c1603f48-7627-5b1b-90b0-820dca736280'::uuid, 'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid, '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('87064a39-6d68-58bd-b3fc-5fa2c5e4d864'::uuid, '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid, 'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5dced981-1731-54a1-8eb8-c69cb63ace9a'::uuid,
  '87064a39-6d68-58bd-b3fc-5fa2c5e4d864'::uuid,
  '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid,
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '50e227a5-87a3-5052-80b2-9a7df94be4ac'::uuid,
  '87064a39-6d68-58bd-b3fc-5fa2c5e4d864'::uuid,
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9965284e-29cc-5c9f-b1ac-abdc42255308'::uuid, '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid, 'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b3ba62d7-3ef6-506e-bde0-0795b535da6c'::uuid, 'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid, '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bea00298-41ab-52dd-a1e7-ea2b58474f58'::uuid, '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid, 'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ea960fc1-fb20-5fa6-93a2-648eb7fd46e3'::uuid, 'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('694bd834-72e2-590b-bb9a-dbd377ce574d'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f589992d-4eaf-559e-a59e-05629e9580e8'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0201107a-ee8a-5d76-8130-c80604d9d8d0'::uuid,
  'f589992d-4eaf-559e-a59e-05629e9580e8'::uuid,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9bf62bc0-e0c5-5684-b9f1-92e4e62c0bd4'::uuid,
  'f589992d-4eaf-559e-a59e-05629e9580e8'::uuid,
  '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eea1000f-418d-5abe-a4a2-c9f7ae2a9314'::uuid, 'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('23f8a261-e449-50da-b136-d38dc6b8488a'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, 'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('40d98785-a9ac-5172-a6a2-38c445f48938'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, 'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8f400d42-804c-57e5-ae6f-045d77e8994d'::uuid, 'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid, '59fc5e89-4210-5535-9f42-ed5204636320'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0437caaf-219f-5edf-862a-c2d9a7403bb8'::uuid, '59fc5e89-4210-5535-9f42-ed5204636320'::uuid, 'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2efcee88-74e8-5d93-8f3d-e8ddeb641605'::uuid, '59fc5e89-4210-5535-9f42-ed5204636320'::uuid, 'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3704e1b8-0db0-50b9-8812-9b0aee02cdeb'::uuid,
  '2efcee88-74e8-5d93-8f3d-e8ddeb641605'::uuid,
  'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid,
  '59fc5e89-4210-5535-9f42-ed5204636320'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;