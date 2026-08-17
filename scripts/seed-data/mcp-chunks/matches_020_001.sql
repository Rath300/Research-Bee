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