INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('11802e11-7b43-5134-ba58-0d4017bf98e3'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9a759fbc-f931-5f9b-afed-08db946f952c'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8636e981-c586-52f5-a1ea-78ca4486e1f0'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9260d516-b46b-5beb-92f9-9b341d6cd3e4'::uuid,
  '8636e981-c586-52f5-a1ea-78ca4486e1f0'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '69284458-4e8c-5c62-b40c-475f7776f87c'::uuid,
  '8636e981-c586-52f5-a1ea-78ca4486e1f0'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5023a1ac-50ae-5b38-a725-c6ad67a03f6b'::uuid, '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('395f7892-9153-59e3-9aba-e10df32a649b'::uuid, 'e82aadde-599d-5823-9c92-7aa26f607621'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b2c62255-1959-596b-88eb-ad152df874af'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, 'e82aadde-599d-5823-9c92-7aa26f607621'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('84d29062-5c0c-5ab8-80a9-9911dbb7afd8'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, 'e82aadde-599d-5823-9c92-7aa26f607621'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;