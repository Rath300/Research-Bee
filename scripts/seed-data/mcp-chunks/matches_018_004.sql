INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('91ce32df-21d2-5bd4-9c59-b13f649c2141'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('421e6039-a332-5069-a03f-8e803a6d85b5'::uuid, '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3ad42ff2-a94b-5a4f-9bcc-908c08632a4a'::uuid,
  '421e6039-a332-5069-a03f-8e803a6d85b5'::uuid,
  '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid,
  'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0d3c1ed2-4169-5037-aa45-7abd1e4a8f4d'::uuid,
  '421e6039-a332-5069-a03f-8e803a6d85b5'::uuid,
  'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid,
  '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3f4e66b1-0a12-5b25-8425-c2480c0dc6c2'::uuid, '15eaa3ae-24eb-57ee-bc4c-1401230faa23'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('29636403-2954-5706-9a29-7db838818ac0'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, '15eaa3ae-24eb-57ee-bc4c-1401230faa23'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f28d744d-0574-57af-9e33-585f316ef80e'::uuid, '15eaa3ae-24eb-57ee-bc4c-1401230faa23'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2b1e3808-6c97-5321-a78b-6826bfffd67b'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, '585cd420-b530-5bba-8219-1713b623a65f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('448136c4-c2dd-58ae-9056-f589b984e937'::uuid, '585cd420-b530-5bba-8219-1713b623a65f'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2384c9cd-8dd1-5425-b630-c15b023aff46'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, '585cd420-b530-5bba-8219-1713b623a65f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9dfb5365-7f70-5a1f-88f7-07d592610421'::uuid,
  '2384c9cd-8dd1-5425-b630-c15b023aff46'::uuid,
  '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid,
  '585cd420-b530-5bba-8219-1713b623a65f'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '050ac6f3-d28e-5052-8ffa-13bd3c0385fa'::uuid,
  '2384c9cd-8dd1-5425-b630-c15b023aff46'::uuid,
  '585cd420-b530-5bba-8219-1713b623a65f'::uuid,
  '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c79d2f12-dfce-59c1-abdf-dcea4795a71c'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('944238d2-4f70-5812-8ead-87c12cd351dc'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f41c5bf8-ccca-5a59-aea3-9ec52643fa87'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5ccb1c44-fc51-5e3b-8282-e22ccc9075dd'::uuid, '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid, '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5a596279-16ee-53d0-ac49-eb171b7a7bc9'::uuid, '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid, '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7c872d02-5086-5dd3-ade4-1ccfd7f075b5'::uuid, '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid, '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '24637805-7fd0-5ad4-be74-27cc4a878643'::uuid,
  '7c872d02-5086-5dd3-ade4-1ccfd7f075b5'::uuid,
  '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid,
  '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6f0fbe0f-717e-5b1d-8e2e-1f4c4a875ee0'::uuid,
  '7c872d02-5086-5dd3-ade4-1ccfd7f075b5'::uuid,
  '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid,
  '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ddeb6db8-f728-5407-8769-65ad9c79cbaf'::uuid, 'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid, 'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7b0eeb9-2bc7-54cb-978c-7339a7379320'::uuid, 'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid, 'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ea26081a-ffc1-5af5-8051-822e9a43d2f9'::uuid, 'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid, 'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00d90528-9562-5891-b671-895509aed2b0'::uuid, '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b693dc0a-7d00-553f-9533-3ccb595c3917'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ec09c1e5-8101-525e-a1e8-6496b6679180'::uuid, '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '308fab4f-29e8-5dbf-aa5e-0804ef09fa4f'::uuid,
  'ec09c1e5-8101-525e-a1e8-6496b6679180'::uuid,
  '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid,
  '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f38fb5a0-0852-5c05-84a0-d50fabbe0675'::uuid,
  'ec09c1e5-8101-525e-a1e8-6496b6679180'::uuid,
  '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid,
  '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e738a2d2-57e9-5eea-baa7-d219e699e335'::uuid, '20d3a7aa-cc87-54a7-afae-68bf76bf1481'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8a183057-c223-503d-b0c0-0df32b70dd09'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, '20d3a7aa-cc87-54a7-afae-68bf76bf1481'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f5cee623-629f-540c-8cf8-3288b2754ee0'::uuid, '20d3a7aa-cc87-54a7-afae-68bf76bf1481'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('21625f2c-3d8d-595a-bb8d-b6f8beedb199'::uuid, '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid, '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8dec72c-b32e-5bcf-ae58-1466ed92eb51'::uuid, '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid, '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ebddd7a6-396f-5da6-b0bc-ca278edbcbaf'::uuid, '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid, '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '406e0c96-2b40-5365-8875-9778a71e0eab'::uuid,
  'ebddd7a6-396f-5da6-b0bc-ca278edbcbaf'::uuid,
  '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid,
  '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f300fdee-f393-56d9-8c1e-8110ab3d89bf'::uuid,
  'ebddd7a6-396f-5da6-b0bc-ca278edbcbaf'::uuid,
  '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid,
  '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7613681-c856-5942-98c2-38ce491aff2d'::uuid, '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('79c74916-ec88-580b-ab42-5b21da7cbc8c'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4fc94abf-f46c-5031-aad6-90ab81219933'::uuid, '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0752da8d-e27b-535c-ae92-d8af69275cd3'::uuid, '728e8630-512a-51eb-9316-3e71371d2478'::uuid, '8aca80a1-1bf4-595b-a19b-2a176926b1d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;