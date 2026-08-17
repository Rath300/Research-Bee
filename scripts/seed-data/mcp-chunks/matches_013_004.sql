INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e8ee2df3-fc15-51e1-aad2-5cddc7c6f3a9'::uuid, '2d6a40b8-dfab-5368-9f36-49bd06c4e841'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('aa1e8f41-19fb-5739-865c-653d1150c2b8'::uuid, '2d6a40b8-dfab-5368-9f36-49bd06c4e841'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '87e39c2a-f131-59d4-92f0-e439a3c26826'::uuid,
  'aa1e8f41-19fb-5739-865c-653d1150c2b8'::uuid,
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  '2d6a40b8-dfab-5368-9f36-49bd06c4e841'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7a6cc597-f421-57af-bc74-c94e18dd8f28'::uuid,
  'aa1e8f41-19fb-5739-865c-653d1150c2b8'::uuid,
  '2d6a40b8-dfab-5368-9f36-49bd06c4e841'::uuid,
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('32842d7c-a597-53bd-bfad-f0ecb2c095c0'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, 'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('736acfc0-4d0d-5376-9d09-6748ca704110'::uuid, 'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f8969183-9127-5044-97f9-32abb8bf7008'::uuid, 'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('99cd2929-3dcc-591b-af61-07ce17ec7c03'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, 'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a151b485-2830-551b-94fb-c7f9dfcbf3ed'::uuid, 'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a19adabc-567f-5dc0-8491-538b8c1214c7'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, 'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f58df428-78dc-5554-b8c6-0beb684fd0b3'::uuid,
  'a19adabc-567f-5dc0-8491-538b8c1214c7'::uuid,
  '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid,
  'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e36d0497-4102-5f6b-bc1c-85bd913d0a4c'::uuid,
  'a19adabc-567f-5dc0-8491-538b8c1214c7'::uuid,
  'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid,
  '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('976dfefc-9050-55fd-890d-d8938485cf8a'::uuid, '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid, 'd5b0211b-c5f4-597f-acb9-7622a4effdc1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8931d4d3-57f7-5d5d-8b01-8f9280511e86'::uuid, 'd5b0211b-c5f4-597f-acb9-7622a4effdc1'::uuid, '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0394aed5-8344-507d-b4a3-cccb1e1503d5'::uuid, '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid, 'd5b0211b-c5f4-597f-acb9-7622a4effdc1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('78d886f7-283b-51b7-a2d9-9e96d3bb3583'::uuid, '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fb57ff77-213e-58b5-8637-1ef50f0f5032'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b77763db-52a9-5f98-8892-4b0e1d6da1d3'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b9816c10-f45a-554b-997e-8118f71503cb'::uuid,
  'b77763db-52a9-5f98-8892-4b0e1d6da1d3'::uuid,
  '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid,
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd8f14b36-cd21-5295-a561-69e4c447bf35'::uuid,
  'b77763db-52a9-5f98-8892-4b0e1d6da1d3'::uuid,
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('90c21d57-b1cd-5dcb-b5bd-a3a6d17b2c15'::uuid, '82910639-3add-56af-a2cb-692bff954f43'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('06c39376-db17-548c-98a0-1c807b4e5844'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, '82910639-3add-56af-a2cb-692bff954f43'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('01cfef38-1dba-51fb-9171-21f4c417eaad'::uuid, '82910639-3add-56af-a2cb-692bff954f43'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('60e7384d-6c32-519a-9872-65d54302f645'::uuid, '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid, '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f7da4243-48bc-5d7a-98b7-16f8e79fc654'::uuid, '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid, '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fff27e7b-2373-5d18-8b02-e7ff19d69e94'::uuid, '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid, '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '55c21a4a-ac34-56dd-a6fe-c24c89f945f7'::uuid,
  'fff27e7b-2373-5d18-8b02-e7ff19d69e94'::uuid,
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
  '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '25b29a62-4f76-5287-ab23-d2e4d95b94af'::uuid,
  'fff27e7b-2373-5d18-8b02-e7ff19d69e94'::uuid,
  '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid,
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f5c8eae6-d421-5b89-b426-f916883add1e'::uuid, '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('752ca428-f662-5c64-8288-76945bffb696'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0b47105f-053b-5f34-a1df-5115d5a3b0a1'::uuid, '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1ad9a0b3-46b8-5a13-8637-a53400e12fa9'::uuid, '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid, 'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e5078d4a-2a8a-5745-b2e6-140b8f815143'::uuid, 'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid, '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5e21a16d-f67a-5fbd-bc42-ce3445f08e97'::uuid, '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid, 'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c22e8d04-bc74-5200-8544-a02badc3cdbc'::uuid,
  '5e21a16d-f67a-5fbd-bc42-ce3445f08e97'::uuid,
  '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid,
  'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '25ea4b4b-8588-504e-bfa0-3bfc8fd1a146'::uuid,
  '5e21a16d-f67a-5fbd-bc42-ce3445f08e97'::uuid,
  'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid,
  '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b8a971d2-63b5-5319-a92e-2ad397805b7c'::uuid, 'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid, 'f326a54c-18ae-557e-8143-fda4415ba59b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('99995de1-7ceb-5c11-af4b-3b0dc25f1e18'::uuid, 'f326a54c-18ae-557e-8143-fda4415ba59b'::uuid, 'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('804ac3de-b716-5ed5-aff2-657e9e850369'::uuid, 'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid, 'f326a54c-18ae-557e-8143-fda4415ba59b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('27ec16c2-4c77-54f8-bab3-ef531259ee7b'::uuid, 'a9c2ac75-ccc9-57df-8596-ce89dc703b66'::uuid, 'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;