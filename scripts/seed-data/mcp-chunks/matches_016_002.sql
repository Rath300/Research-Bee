INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3867c861-4268-5d20-900e-a6e9c46100c8'::uuid,
  '9093d58d-8905-5eda-b136-0016b76f1d8c'::uuid,
  '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid,
  '62d73a72-61fa-5bba-b89f-1aab728b4b14'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '557d7500-045e-5388-9f7f-5003e601f7c0'::uuid,
  '9093d58d-8905-5eda-b136-0016b76f1d8c'::uuid,
  '62d73a72-61fa-5bba-b89f-1aab728b4b14'::uuid,
  '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5f2b421b-7dda-55e8-ab92-d15fb56e5c49'::uuid, '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('04b4848a-7fc6-5600-af83-f8c1314228a9'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cc258da7-b5d9-550a-84d9-f379bd8bc9fb'::uuid, '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4cf14849-2fca-523f-852b-47db109f9619'::uuid, '8c8802de-eb32-550b-88b8-412797aef970'::uuid, '89156783-853d-5a14-aea6-b545cfc146a5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d1b2cfd1-e810-5ac5-940e-cfad993ffdf1'::uuid, '89156783-853d-5a14-aea6-b545cfc146a5'::uuid, '8c8802de-eb32-550b-88b8-412797aef970'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b78a193b-3851-5159-b651-64f40d708ceb'::uuid, '89156783-853d-5a14-aea6-b545cfc146a5'::uuid, '8c8802de-eb32-550b-88b8-412797aef970'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '53c646de-f667-5591-97a0-3cf6dd5ffb04'::uuid,
  'b78a193b-3851-5159-b651-64f40d708ceb'::uuid,
  '8c8802de-eb32-550b-88b8-412797aef970'::uuid,
  '89156783-853d-5a14-aea6-b545cfc146a5'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd9ec07cb-0a52-58dc-ae9b-281153eb8fd3'::uuid,
  'b78a193b-3851-5159-b651-64f40d708ceb'::uuid,
  '89156783-853d-5a14-aea6-b545cfc146a5'::uuid,
  '8c8802de-eb32-550b-88b8-412797aef970'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8fdad634-e2bc-5d18-b309-400b0eb5bae4'::uuid, 'd0ad7377-23be-599e-a7a4-536cf065e51d'::uuid, '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ce3b63d0-dcb8-5a75-a9e7-60b67e9d2cf7'::uuid, '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid, 'd0ad7377-23be-599e-a7a4-536cf065e51d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e9905a32-26c0-56ad-9a6e-958a106313a3'::uuid, '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid, 'd0ad7377-23be-599e-a7a4-536cf065e51d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('047d085f-ecc5-5a44-900c-b391ee88cee8'::uuid, '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid, 'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8009fa18-a24c-59ef-a2c9-55257b7f27b9'::uuid, 'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid, '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('839cba4b-dd70-5735-8e66-8d9adc0b8b82'::uuid, '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid, 'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '32de7e30-53ba-5fbf-8a52-50afd2f7ec09'::uuid,
  '839cba4b-dd70-5735-8e66-8d9adc0b8b82'::uuid,
  '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid,
  'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c64162ef-cad7-5ced-acd6-d0ba2da9a188'::uuid,
  '839cba4b-dd70-5735-8e66-8d9adc0b8b82'::uuid,
  'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid,
  '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30cf1ff2-9703-5dd0-96d3-313552a452b2'::uuid, 'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid, '71ce71e0-3ea8-5d45-b77b-d5851945f3af'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('641bb0ab-bcee-5511-a18c-2ececbe278c3'::uuid, '71ce71e0-3ea8-5d45-b77b-d5851945f3af'::uuid, 'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('98dd69e3-6069-593d-a406-935a43a55ee2'::uuid, '71ce71e0-3ea8-5d45-b77b-d5851945f3af'::uuid, 'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bdd1545c-dfb8-5c3c-97d3-ec43c65642bb'::uuid, 'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid, '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('484e7f01-6afa-52f8-ad21-74497098e3bb'::uuid, '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid, 'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('97b870c0-d3a9-52da-a286-52c90552154b'::uuid, '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid, 'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5839dbeb-8893-57da-9b62-651117280075'::uuid,
  '97b870c0-d3a9-52da-a286-52c90552154b'::uuid,
  'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid,
  '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3b00e424-5c20-542c-833f-d9d0685faeaf'::uuid,
  '97b870c0-d3a9-52da-a286-52c90552154b'::uuid,
  '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid,
  'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('74dac54f-9f83-5c78-b00e-477ade8dcae4'::uuid, 'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9d144386-ebdd-5633-a3fb-9829a1eacc90'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, 'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c6eed5f6-0c6d-5dcd-aabe-0439a34d4761'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, 'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2faa5500-ef94-5121-a455-f464da99e014'::uuid, 'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid, 'a0be9746-2732-59d8-9d1c-52829b061343'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ffeb3ea8-16ce-59e1-9c88-44bd7d78949a'::uuid, 'a0be9746-2732-59d8-9d1c-52829b061343'::uuid, 'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a123f33d-9732-59f8-80b8-56f1227133dc'::uuid, 'a0be9746-2732-59d8-9d1c-52829b061343'::uuid, 'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '56451993-4b93-535b-8a1e-7250ada73681'::uuid,
  'a123f33d-9732-59f8-80b8-56f1227133dc'::uuid,
  'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid,
  'a0be9746-2732-59d8-9d1c-52829b061343'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '54893d9b-ef19-5629-8f1a-519122b3e78a'::uuid,
  'a123f33d-9732-59f8-80b8-56f1227133dc'::uuid,
  'a0be9746-2732-59d8-9d1c-52829b061343'::uuid,
  'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9eb30d81-078e-5bc1-a620-52f45528e245'::uuid, '0b206d9d-85dd-5e6b-b77d-5850790c8b18'::uuid, 'a2a0a60f-90e7-5a6d-bd00-9b45cdf0e153'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('83272a32-7ee0-5edc-a723-0551a999abc2'::uuid, 'a2a0a60f-90e7-5a6d-bd00-9b45cdf0e153'::uuid, '0b206d9d-85dd-5e6b-b77d-5850790c8b18'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1952cfa2-16d9-5bec-8d69-2d0769e983bc'::uuid, '0b206d9d-85dd-5e6b-b77d-5850790c8b18'::uuid, 'a2a0a60f-90e7-5a6d-bd00-9b45cdf0e153'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a0ef7c5d-a6ff-5029-87c0-3028e6517140'::uuid, 'cc1db32d-aecf-5367-82a6-742e79691a64'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b3396ba8-d1b3-515e-9263-3857f70e173f'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'cc1db32d-aecf-5367-82a6-742e79691a64'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('00e72279-faf9-5454-8b40-9e103ecfcaed'::uuid, 'cc1db32d-aecf-5367-82a6-742e79691a64'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;