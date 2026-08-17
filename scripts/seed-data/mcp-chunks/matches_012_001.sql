INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a250b56e-dd6d-5347-945d-7dcdabfa083a'::uuid, 'b3f204c0-b5ce-55c6-be97-067e8c0334b6'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4e74aa42-4aca-55a3-87a3-75b8e829a2eb'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'b3f204c0-b5ce-55c6-be97-067e8c0334b6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d98a581e-47f4-590a-8638-e9f5b9218b6a'::uuid, 'b3f204c0-b5ce-55c6-be97-067e8c0334b6'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('05fe3f5e-8140-54f0-b615-fe44ecf97ebf'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, 'f324de5b-f927-5f4b-92bf-a2695829f8d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2643dfb9-c3c8-5871-811b-d0abc5be475e'::uuid, 'f324de5b-f927-5f4b-92bf-a2695829f8d2'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b2dece19-53a1-5d05-8cb5-840ea866a0d7'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, 'f324de5b-f927-5f4b-92bf-a2695829f8d2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9d2afce1-1e2a-5414-84bf-5f4779b2778b'::uuid,
  'b2dece19-53a1-5d05-8cb5-840ea866a0d7'::uuid,
  '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid,
  'f324de5b-f927-5f4b-92bf-a2695829f8d2'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e046e9d6-f6e8-5d8a-a6d9-0e3795d826c6'::uuid,
  'b2dece19-53a1-5d05-8cb5-840ea866a0d7'::uuid,
  'f324de5b-f927-5f4b-92bf-a2695829f8d2'::uuid,
  '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('320748b3-29a4-58d7-ad2f-305d36995735'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d9c2c654-e936-5fbb-b150-7b4ce3658e36'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('98be45db-3d8b-5959-849e-dab920d972f5'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('60d5c82c-9ef6-56a6-9db2-9012effb0fd2'::uuid, '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid, '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('142471a0-dc78-55c1-af31-f3391fa722b7'::uuid, '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid, '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d738f4fb-35a0-5e1f-95d5-27b2c9ff61ad'::uuid, '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid, '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f5cf5bbf-5367-54c5-9d7e-f4cb5a609963'::uuid,
  'd738f4fb-35a0-5e1f-95d5-27b2c9ff61ad'::uuid,
  '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid,
  '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9d4c9ed9-19cd-5925-9cd4-c11afefefc74'::uuid,
  'd738f4fb-35a0-5e1f-95d5-27b2c9ff61ad'::uuid,
  '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid,
  '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a6b6eac1-9e42-524a-8485-183f308ff8f9'::uuid, 'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid, 'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ed7e50a5-2636-5a1c-9d86-8883ffa0e65a'::uuid, 'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid, 'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4fe7d57c-32cb-56ab-94e3-6478e4a0f961'::uuid, 'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid, 'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6fc81330-2628-5a1a-b7dc-5fe69c044b1b'::uuid, '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2461d65a-4557-58d5-824e-424287de87f4'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6608e369-2589-5cba-9443-f183560afe90'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ba712f75-c1c6-59bc-8e6a-cab8749d9542'::uuid,
  '6608e369-2589-5cba-9443-f183560afe90'::uuid,
  '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a59a1904-d679-5071-904c-f6e101d84f1c'::uuid,
  '6608e369-2589-5cba-9443-f183560afe90'::uuid,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b70df647-04f9-5662-ac20-9a9d89bdaea5'::uuid, '4c0b16d5-ad7b-5990-b2bd-acbaf07eb752'::uuid, '9368db5e-e423-510b-abf1-bd3510893600'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89022f69-5e79-599e-a2e9-bfefb63d97b9'::uuid, '9368db5e-e423-510b-abf1-bd3510893600'::uuid, '4c0b16d5-ad7b-5990-b2bd-acbaf07eb752'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc65ecc7-ecf7-5132-861e-8ffbc1a74943'::uuid, '4c0b16d5-ad7b-5990-b2bd-acbaf07eb752'::uuid, '9368db5e-e423-510b-abf1-bd3510893600'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d4fb6063-d386-5022-b7d3-985e43835828'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, '3c61d365-5745-5cca-b16b-98e085138757'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ea90505f-e9f2-5b79-8b94-0531489011fc'::uuid, '3c61d365-5745-5cca-b16b-98e085138757'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4dcdd589-a0ff-510a-b2ba-4bb60a8d7d9c'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, '3c61d365-5745-5cca-b16b-98e085138757'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cf62c6fd-2e1e-577b-979b-d953060bf1f3'::uuid,
  '4dcdd589-a0ff-510a-b2ba-4bb60a8d7d9c'::uuid,
  '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid,
  '3c61d365-5745-5cca-b16b-98e085138757'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bf99c462-ced5-5cf1-9902-5376a5e8560f'::uuid,
  '4dcdd589-a0ff-510a-b2ba-4bb60a8d7d9c'::uuid,
  '3c61d365-5745-5cca-b16b-98e085138757'::uuid,
  '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('222fe924-9048-5070-9c7c-d8e18fc3d924'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f38253d6-6a70-53a4-9f29-b485d6c004b1'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4cf412bb-faf6-55c9-b08b-90c2f4920b5b'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6b97ec0a-1e31-55d4-9432-f94a696e5e7c'::uuid, 'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid, '9b892976-4532-57a5-9100-2063a3f4046f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('868c4eff-142c-5fd9-a0a6-c9d8fdcf1fdf'::uuid, '9b892976-4532-57a5-9100-2063a3f4046f'::uuid, 'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('21d720b6-ee39-50e7-b99c-4a5c60d2a1a9'::uuid, '9b892976-4532-57a5-9100-2063a3f4046f'::uuid, 'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0e128de3-2cf5-5f04-9ffe-c56dbf009ee7'::uuid,
  '21d720b6-ee39-50e7-b99c-4a5c60d2a1a9'::uuid,
  'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid,
  '9b892976-4532-57a5-9100-2063a3f4046f'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'df3e4e2c-e1a0-5421-bda9-4a7e52f43576'::uuid,
  '21d720b6-ee39-50e7-b99c-4a5c60d2a1a9'::uuid,
  '9b892976-4532-57a5-9100-2063a3f4046f'::uuid,
  'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;