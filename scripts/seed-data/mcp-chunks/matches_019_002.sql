INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '72df971c-0ee8-5b0a-950b-9553ffc1c75d'::uuid,
  '9e07f163-10d7-5ac3-a315-bd94e98366ca'::uuid,
  '843f469a-8134-5966-bfe0-48584f3270fc'::uuid,
  '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b10a5e86-6992-5f4d-9c66-a663f78f6158'::uuid, '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid, 'ff2a77b6-4d2a-51ff-954c-11a84543e245'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c20df8c1-3053-5e4a-94f1-fc4d08dd327b'::uuid, 'ff2a77b6-4d2a-51ff-954c-11a84543e245'::uuid, '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d11791b8-9d5f-59ba-b736-99e595d699c5'::uuid, '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid, 'ff2a77b6-4d2a-51ff-954c-11a84543e245'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5ecd8bc0-d3d0-5b3b-b29e-fb5aa1a30ce3'::uuid, '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid, '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58b5b7e6-0d44-52fe-b2e2-57dcf898923d'::uuid, '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid, '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bcb246fc-14fe-5082-9610-abc349fd4c4a'::uuid, '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid, '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f3f57590-f0a1-5aa5-8638-e5f1f9216384'::uuid,
  'bcb246fc-14fe-5082-9610-abc349fd4c4a'::uuid,
  '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid,
  '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f61e7a43-97df-5259-9485-faf351277083'::uuid,
  'bcb246fc-14fe-5082-9610-abc349fd4c4a'::uuid,
  '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid,
  '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9bf135e3-09dd-5ac7-90b4-4d6a7bec23d2'::uuid, '93dc5596-9d0e-58a4-b02f-69457ebd4204'::uuid, '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e63d33de-da06-54d5-9a2f-66033fbb753a'::uuid, '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid, '93dc5596-9d0e-58a4-b02f-69457ebd4204'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('78f189a8-2d18-5058-b6fb-fb2f96cdee69'::uuid, '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid, '93dc5596-9d0e-58a4-b02f-69457ebd4204'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b1a012d3-2e9a-53b5-bfc9-91bafa091bf9'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, 'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e79ca052-d190-5e3e-93f7-84403cb9a2aa'::uuid, 'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a0f837c0-4c6a-5eb5-928d-3aca4ac85f9a'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, 'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '95405287-6b6c-5136-8b29-226a7f68d67a'::uuid,
  'a0f837c0-4c6a-5eb5-928d-3aca4ac85f9a'::uuid,
  'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid,
  'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f4d67133-d39e-51b0-a815-334608c999cf'::uuid,
  'a0f837c0-4c6a-5eb5-928d-3aca4ac85f9a'::uuid,
  'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid,
  'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5e7cae94-205b-5b6e-a3fd-082f6384ec96'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eff4bde8-9a33-538d-8ec3-7b5f103edec9'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ab81f35d-38c4-5551-b040-740df2bcd917'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('220cc299-743d-5347-b873-192c3dce9641'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, 'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9d4f6382-f0e8-5006-a7fb-74a13d37c9c7'::uuid, 'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('273c608d-ac1f-5f5b-99a1-d0013c4a46f1'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, 'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c874ce35-8884-5a53-a454-d3387d3046c8'::uuid,
  '273c608d-ac1f-5f5b-99a1-d0013c4a46f1'::uuid,
  'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid,
  'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '93ff7f2e-d9b1-5f62-b22a-08354954d945'::uuid,
  '273c608d-ac1f-5f5b-99a1-d0013c4a46f1'::uuid,
  'bf4ec522-51ea-522c-98e7-6def51b5db1b'::uuid,
  'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0411966d-8d17-58bd-af08-466f1daef614'::uuid, '585cd420-b530-5bba-8219-1713b623a65f'::uuid, '7eebc6fb-2d56-59bb-8d03-96c3482f42bc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('08d9a02d-631b-54c7-ac73-fc0bf8d3079f'::uuid, '7eebc6fb-2d56-59bb-8d03-96c3482f42bc'::uuid, '585cd420-b530-5bba-8219-1713b623a65f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5ca2b982-e676-5be5-9c7a-bce06fd05098'::uuid, '585cd420-b530-5bba-8219-1713b623a65f'::uuid, '7eebc6fb-2d56-59bb-8d03-96c3482f42bc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9d7d6039-6660-5e05-b813-2c49229721d8'::uuid, '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid, '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('275a5e39-1b83-5361-9ee8-a9f6503f1c30'::uuid, '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid, '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6cf0d84f-3c0c-5b0f-97e4-f7b0008373e3'::uuid, '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid, '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0c2e59e0-1753-5733-b8f5-ae1a6d39b1fa'::uuid,
  '6cf0d84f-3c0c-5b0f-97e4-f7b0008373e3'::uuid,
  '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid,
  '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '03c99833-f98e-5dcd-bbc4-79f2b8d72b1f'::uuid,
  '6cf0d84f-3c0c-5b0f-97e4-f7b0008373e3'::uuid,
  '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid,
  '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fb488414-643d-5e89-9788-9aba023aee11'::uuid, 'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid, '27bed1a2-fc35-5a0d-bf20-bf3ac8f905ef'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('23cc14b0-ab43-540a-b5a5-f79dd5f6d22f'::uuid, '27bed1a2-fc35-5a0d-bf20-bf3ac8f905ef'::uuid, 'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7dbe6a3e-3a89-5f43-b0bf-d7d09ab9c24e'::uuid, '27bed1a2-fc35-5a0d-bf20-bf3ac8f905ef'::uuid, 'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('75782472-8ff0-5167-a1bd-5cc41241c05a'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, 'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b5894881-2d69-5ab7-a33b-34f4e88259fd'::uuid, 'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('546b0470-567a-54d5-b177-654f822e0c5f'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, 'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a979c7f7-e5b9-56cb-903b-384e54cf268e'::uuid,
  '546b0470-567a-54d5-b177-654f822e0c5f'::uuid,
  '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid,
  'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;