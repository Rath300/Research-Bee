INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'adf74617-6fcb-55d5-b8ef-26a837403bce'::uuid,
  '5108c308-17e0-574a-a77c-307e7ba3601d'::uuid,
  '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid,
  'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6011abd1-5991-5c1d-88b4-cb8f017e421c'::uuid, 'e054a422-05f1-59ce-8a48-b1440c9b8b07'::uuid, '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cfbb3079-5062-5455-a108-4913b1c9b058'::uuid, '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid, 'e054a422-05f1-59ce-8a48-b1440c9b8b07'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7a046579-5bea-50c5-8085-93bd838686f1'::uuid, '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid, 'e054a422-05f1-59ce-8a48-b1440c9b8b07'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9b4605c7-57f3-5417-9ee8-cd3245513d00'::uuid, '74683992-9a31-552a-8e82-cd7205332508'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2a26d681-1e20-571b-856a-62f5104ad7bd'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, '74683992-9a31-552a-8e82-cd7205332508'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c06db72b-f22b-5d26-8b4a-1e7223caa4d0'::uuid, '74683992-9a31-552a-8e82-cd7205332508'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5421ffcb-561b-5a62-bb73-a99550f522ca'::uuid,
  'c06db72b-f22b-5d26-8b4a-1e7223caa4d0'::uuid,
  '74683992-9a31-552a-8e82-cd7205332508'::uuid,
  'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'eca37b31-5273-5329-a3c1-8d6cf90aee5c'::uuid,
  'c06db72b-f22b-5d26-8b4a-1e7223caa4d0'::uuid,
  'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid,
  '74683992-9a31-552a-8e82-cd7205332508'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0772b52e-bbf5-5f24-a2aa-998a10d545d0'::uuid, 'b822e46a-24e0-5c86-819e-929acfc5a4df'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c76d166d-cb5f-5433-8baf-433ce813473a'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, 'b822e46a-24e0-5c86-819e-929acfc5a4df'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a8a2a720-1655-5d86-ba17-51f48d049736'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, 'b822e46a-24e0-5c86-819e-929acfc5a4df'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9382c427-ebe6-5f3f-8319-6ebb11e15003'::uuid, 'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid, '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3c904c7-64c4-5cea-abb1-0a0490c1d739'::uuid, '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid, 'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f5f577b2-93ee-5bc6-b60e-d359fdb85370'::uuid, '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid, 'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '37abdf90-b1a1-5002-a01f-a5bc051553c1'::uuid,
  'f5f577b2-93ee-5bc6-b60e-d359fdb85370'::uuid,
  'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid,
  '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '045c112e-81b1-5400-8421-1c1238095aab'::uuid,
  'f5f577b2-93ee-5bc6-b60e-d359fdb85370'::uuid,
  '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid,
  'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ccd167b1-f635-5ca6-8571-1f10e778be31'::uuid, 'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1b82c5a0-b83c-5db7-9908-bf7868bccdb6'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, 'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('604e4718-a50c-5a77-8127-d38005a63d8c'::uuid, 'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('57ef69cd-ad59-560e-9bc5-d5a4ce654bed'::uuid, '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid, '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dfcd0114-4dc1-5c08-8405-b8aec51718df'::uuid, '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid, '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('da3656d0-d0f2-5cd6-b6c5-624cc835c13b'::uuid, '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid, '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0582b39f-0361-5b57-b2ee-f78f8a8c3b50'::uuid,
  'da3656d0-d0f2-5cd6-b6c5-624cc835c13b'::uuid,
  '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid,
  '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '569962d6-f1e5-5987-9724-ee7b283448fa'::uuid,
  'da3656d0-d0f2-5cd6-b6c5-624cc835c13b'::uuid,
  '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid,
  '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6959a5ed-1343-50c1-b4a4-c7547b4667c2'::uuid, '930dbf77-a75a-5e7d-9a6a-555d7e26ff51'::uuid, '02513dbb-0dc9-5a45-aaa5-3fd7c0d8c871'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f08fa563-6080-53f7-96fc-e67c24d49a8c'::uuid, '02513dbb-0dc9-5a45-aaa5-3fd7c0d8c871'::uuid, '930dbf77-a75a-5e7d-9a6a-555d7e26ff51'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('17ec7ed9-c170-5526-a938-471adba25787'::uuid, '02513dbb-0dc9-5a45-aaa5-3fd7c0d8c871'::uuid, '930dbf77-a75a-5e7d-9a6a-555d7e26ff51'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f41998d3-e7e9-52ff-b6eb-535ba565b238'::uuid, '4dd81124-bec2-5847-bd6a-cdaade4f77c2'::uuid, '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('08c0b071-7b25-532e-88af-02a45b1afd11'::uuid, '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid, '4dd81124-bec2-5847-bd6a-cdaade4f77c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('65de0ae7-d5dd-589c-83ef-5ac7d8bccdc2'::uuid, '4dd81124-bec2-5847-bd6a-cdaade4f77c2'::uuid, '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '879f81a6-39db-54ab-9de6-0df9fc69504b'::uuid,
  '65de0ae7-d5dd-589c-83ef-5ac7d8bccdc2'::uuid,
  '4dd81124-bec2-5847-bd6a-cdaade4f77c2'::uuid,
  '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '549b14f4-7821-557e-a6a3-2f72c1d0fb54'::uuid,
  '65de0ae7-d5dd-589c-83ef-5ac7d8bccdc2'::uuid,
  '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid,
  '4dd81124-bec2-5847-bd6a-cdaade4f77c2'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('98018e8d-567f-52f1-83b1-eab4868751bb'::uuid, '523b980a-c957-5e7a-8cd0-abb466412214'::uuid, 'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('60e7a368-a1ad-54fa-b8ae-4000f65576bf'::uuid, 'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid, '523b980a-c957-5e7a-8cd0-abb466412214'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('70f40539-c6a5-59dd-921b-59f732690501'::uuid, '523b980a-c957-5e7a-8cd0-abb466412214'::uuid, 'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c1633821-fecc-53f5-b37d-ddb121eef432'::uuid, 'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid, '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9bdf9cf2-019a-5151-9760-278b05003342'::uuid, '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid, 'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('04bc5984-68ee-5372-ab15-605303a8003a'::uuid, '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid, 'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c0ad0bbf-23b8-59f3-9d53-87580f40a9a7'::uuid,
  '04bc5984-68ee-5372-ab15-605303a8003a'::uuid,
  'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid,
  '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;