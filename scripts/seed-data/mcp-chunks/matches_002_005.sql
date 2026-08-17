INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '31733800-0148-50c1-bb5d-03e78e39833b'::uuid,
  'd24e0f43-b0d3-566d-a27d-30ff0619f3fc'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '18009d75-82e9-5b9e-bc54-df07613bab69'::uuid,
  'd24e0f43-b0d3-566d-a27d-30ff0619f3fc'::uuid,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('18407b67-3e77-5779-ba10-dcc549c9672e'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, '15329dac-2653-5bf8-ab92-979bca93b089'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8cf5dbe6-cda4-57b4-a813-33420caa4d63'::uuid, '15329dac-2653-5bf8-ab92-979bca93b089'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ce3de9da-e4f5-5f9c-9a71-3fe9c64a854d'::uuid, '15329dac-2653-5bf8-ab92-979bca93b089'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('78902ba7-fdba-5587-98e7-364f97f902c1'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('92a5e2e3-ab79-51a8-a2d3-14123637b435'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cf790848-8b8a-54bd-b4d5-b9ca759bfb7a'::uuid, 'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('39669233-280e-5451-b302-9eb9ee112cb9'::uuid, 'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '33354a28-3676-5012-b887-87d0853c8178'::uuid,
  '39669233-280e-5451-b302-9eb9ee112cb9'::uuid,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '68cbb1e1-a126-5260-931c-78aa93e529eb'::uuid,
  '39669233-280e-5451-b302-9eb9ee112cb9'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2408473a-eb14-58e9-bcd6-2900d7ff85b4'::uuid, '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9f3606c5-a15f-5faf-b772-ce3570f2151f'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, 'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00b29b22-7f79-56ec-8549-637869ab02d2'::uuid, 'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('82dd9547-5ce5-5579-beda-67227ad8a235'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, 'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('542a5a2a-6f76-5ef1-8893-32733a8637c0'::uuid, '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0d88d37b-77eb-5acf-a478-963b7195d9d5'::uuid, 'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7974ada6-86f8-572e-97ba-28ab11a68c27'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, 'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4c44555a-fc34-56cc-b3f1-466d8b10704c'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, 'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7a03eabf-22d3-5cd0-9f02-821a4173c5fa'::uuid,
  '4c44555a-fc34-56cc-b3f1-466d8b10704c'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fc0aef5c-5921-5c9e-b2eb-1c15766ec73e'::uuid,
  '4c44555a-fc34-56cc-b3f1-466d8b10704c'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f10e62a5-8671-5bf2-95c8-bfff5984efcf'::uuid, 'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid, 'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ec715a02-bb93-57a5-827f-b4bdca564038'::uuid, '0c89279c-761b-5955-a37f-d11d903a5859'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eedb1afa-6ef2-52f7-8111-0a0dde588220'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, '0c89279c-761b-5955-a37f-d11d903a5859'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('673ac66a-315a-5ace-95c5-8fcc91db3b08'::uuid, '0c89279c-761b-5955-a37f-d11d903a5859'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3d7ed746-dfe8-5beb-9c83-f223756aa5f1'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, '0c89279c-761b-5955-a37f-d11d903a5859'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('683eadae-5f9a-51b0-9cb0-235b17f87175'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1b3d8bba-ecf6-5900-abb9-8aabe3d6c042'::uuid, '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9634b1ac-f3ef-5f32-ad31-a7a89198699a'::uuid, '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '68f6af59-c64a-547b-ba02-8b72caf9e4fc'::uuid,
  '9634b1ac-f3ef-5f32-ad31-a7a89198699a'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '21e8739c-ebbd-5bae-9e6d-ee4b96d05dc6'::uuid,
  '9634b1ac-f3ef-5f32-ad31-a7a89198699a'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('462882af-4b1c-5d85-85dd-d121ddf5cf11'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('113392c4-b08b-549e-a0af-aff8c59d655a'::uuid, '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cc9bd162-a5ee-529a-9550-963e1c5d46b4'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a5d36e4c-b731-5d3b-b2b9-5b40be8f75c9'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('57e0bfb6-44c7-50e7-bc7c-75b64c941fc7'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6b8ff924-114d-5ac7-97ab-80db74731cb6'::uuid, '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f97c4854-63b1-5445-a0c4-39074eb45522'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '04127ded-feb9-5d76-8ba2-6fe3cdd88606'::uuid,
  'f97c4854-63b1-5445-a0c4-39074eb45522'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0c59bc73-d549-55a5-ab78-a273bf0de024'::uuid,
  'f97c4854-63b1-5445-a0c4-39074eb45522'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;