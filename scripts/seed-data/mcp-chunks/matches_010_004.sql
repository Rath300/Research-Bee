INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e1c7ab18-f96a-576b-af87-fe5d9397f001'::uuid, '0d1d60a3-6461-5d9d-97bf-d3d4eaa8d252'::uuid, '12fb840a-85f9-51d1-a098-9f48ae2a57b8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c1d4fb9f-d1e0-596f-9f9c-772158523be6'::uuid, '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b74c6685-bed5-508a-9893-c1622640dcfb'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4b555b2c-cb63-5d47-becf-3e3f99a05253'::uuid, '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1f18360a-786e-51b3-8ec7-cee56f657c96'::uuid,
  '4b555b2c-cb63-5d47-becf-3e3f99a05253'::uuid,
  '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid,
  '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ddc9cf09-ac79-5606-9f4f-8a01f098117b'::uuid,
  '4b555b2c-cb63-5d47-becf-3e3f99a05253'::uuid,
  '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid,
  '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b7253764-9250-5f77-95d7-b01497596a1c'::uuid, 'ab207c01-931d-503e-a7bc-828029810b26'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58e61b21-743e-5a59-ab76-87c0d7a410d4'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, 'ab207c01-931d-503e-a7bc-828029810b26'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7e3a28d8-4a15-5eb2-a7aa-292ce297650e'::uuid, 'ab207c01-931d-503e-a7bc-828029810b26'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8c8b7cd8-3dd4-5f4e-972e-aaf0db23121c'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, 'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cb38a881-ee9e-50f0-aec3-be90ff4d9447'::uuid, 'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a2760389-3c95-523c-a003-6cc0b30e7ae9'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, 'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a0154fa9-eac4-5a68-a7e0-f625001fb40a'::uuid,
  'a2760389-3c95-523c-a003-6cc0b30e7ae9'::uuid,
  'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid,
  'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '308a4600-bdca-5645-ba97-b85f3004622c'::uuid,
  'a2760389-3c95-523c-a003-6cc0b30e7ae9'::uuid,
  'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid,
  'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e7fed883-973c-5ee1-9da9-3d4e4678c690'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7a1e99e3-408f-5e93-8951-13ff8693ac40'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c637a078-d951-5780-a1ee-7f122109eca7'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('515fc730-b5fd-55d9-b092-3d3b9bb7a251'::uuid, '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid, 'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('03bb4542-3bd6-5eba-a290-e7d249ef6dda'::uuid, 'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid, '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5375c325-fda8-50a1-ba4a-d341d8353cfb'::uuid, '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid, 'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f86f0f32-eac6-5cda-8f16-d380a2cff8c8'::uuid,
  '5375c325-fda8-50a1-ba4a-d341d8353cfb'::uuid,
  '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid,
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '69b2c2a2-cbd2-5bb2-86fc-ad96962a3adc'::uuid,
  '5375c325-fda8-50a1-ba4a-d341d8353cfb'::uuid,
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2e9a6f78-6e0e-5b2f-86a8-0cff66a76205'::uuid, '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid, '717e2f46-9620-5600-b8e0-5187f52e05ee'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('34504853-68a0-5e93-83ce-8df695a77581'::uuid, '717e2f46-9620-5600-b8e0-5187f52e05ee'::uuid, '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e28133cb-0579-51cf-abe9-02799ed99cc1'::uuid, '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid, '717e2f46-9620-5600-b8e0-5187f52e05ee'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('af30b48a-96fd-589b-a466-c0c7fe436e36'::uuid, '3d805200-315a-549f-9527-ae5519886cbb'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('79893df1-cf0e-5494-9587-4f628af2626d'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, '3d805200-315a-549f-9527-ae5519886cbb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5389059d-8fdf-5348-9a81-6254584631c4'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, '3d805200-315a-549f-9527-ae5519886cbb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0e1925f5-3ece-54e9-852c-b930481e6d1e'::uuid,
  '5389059d-8fdf-5348-9a81-6254584631c4'::uuid,
  '3d805200-315a-549f-9527-ae5519886cbb'::uuid,
  '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8717f37f-4210-5a51-97b3-ad7e68334e61'::uuid,
  '5389059d-8fdf-5348-9a81-6254584631c4'::uuid,
  '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid,
  '3d805200-315a-549f-9527-ae5519886cbb'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e926b3eb-d66e-5646-8781-0302ef646225'::uuid, 'd19a231a-9bc3-5d9a-9f36-ba4d2131cb10'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aa88ec59-3a72-5b70-809f-51dca564cd15'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, 'd19a231a-9bc3-5d9a-9f36-ba4d2131cb10'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1dc83546-e54b-5b0b-a4a9-fe4235608e9b'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, 'd19a231a-9bc3-5d9a-9f36-ba4d2131cb10'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f437ee6e-d02b-5950-bcb3-6f2e99bb4afc'::uuid, 'f271c942-fc21-56d3-93cb-8635126191a1'::uuid, 'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('35754ca0-2312-55cf-9199-1c7c0ceb6948'::uuid, 'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid, 'f271c942-fc21-56d3-93cb-8635126191a1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bb4befec-d1ac-50e0-8a54-1bba3e4f1247'::uuid, 'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid, 'f271c942-fc21-56d3-93cb-8635126191a1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'de116abc-5bc6-59dc-92e1-f001d98a8a8e'::uuid,
  'bb4befec-d1ac-50e0-8a54-1bba3e4f1247'::uuid,
  'f271c942-fc21-56d3-93cb-8635126191a1'::uuid,
  'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '33e41ff1-58ed-5281-a822-1c92beeb2b37'::uuid,
  'bb4befec-d1ac-50e0-8a54-1bba3e4f1247'::uuid,
  'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid,
  'f271c942-fc21-56d3-93cb-8635126191a1'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('435c2bcc-a33e-5211-bfce-349794b3beb0'::uuid, 'f271c942-fc21-56d3-93cb-8635126191a1'::uuid, '9368db5e-e423-510b-abf1-bd3510893600'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bc582de0-9cf4-5980-b2e4-9bed593d2e32'::uuid, '9368db5e-e423-510b-abf1-bd3510893600'::uuid, 'f271c942-fc21-56d3-93cb-8635126191a1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;