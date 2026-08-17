INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('67c4958e-7008-5628-b761-26be3be35ec6'::uuid, '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d189b660-8d35-5364-9bae-590d759974fc'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '343dbf3e-300d-5c9c-a09b-8194b3798ef0'::uuid,
  'd189b660-8d35-5364-9bae-590d759974fc'::uuid,
  '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid,
  '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cb55060b-f4f0-58d6-88a6-34e972ac27a4'::uuid,
  'd189b660-8d35-5364-9bae-590d759974fc'::uuid,
  '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid,
  '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae3df02f-8433-56b5-9bb6-7297240e3614'::uuid, '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid, '8dcc64e5-1781-5d54-acde-4fe2a4718700'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ea55e45c-9c4a-55ce-bd87-a34af3c0f822'::uuid, '8dcc64e5-1781-5d54-acde-4fe2a4718700'::uuid, '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a423becb-21f1-57d8-a4a2-00e00871600e'::uuid, '8dcc64e5-1781-5d54-acde-4fe2a4718700'::uuid, '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58b213c2-7b13-59ce-a130-710276c46bfd'::uuid, '94792f80-7643-5ea5-8a93-3248a225121b'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('685d9edc-416e-5f66-aec0-f02687a56d8e'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, '94792f80-7643-5ea5-8a93-3248a225121b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a2b8194c-211f-510d-96cc-f36ae66d9c8f'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, '94792f80-7643-5ea5-8a93-3248a225121b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ffb915ea-47b7-587a-9fce-8f387832ffcc'::uuid,
  'a2b8194c-211f-510d-96cc-f36ae66d9c8f'::uuid,
  '94792f80-7643-5ea5-8a93-3248a225121b'::uuid,
  '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c25ee166-df70-5c3f-8662-619993a8c066'::uuid,
  'a2b8194c-211f-510d-96cc-f36ae66d9c8f'::uuid,
  '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid,
  '94792f80-7643-5ea5-8a93-3248a225121b'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e7dd5260-53d8-552e-acad-1bcfbee4cdf1'::uuid, '800de340-7fca-5636-aa2d-5bc6b317e3c1'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0326dcae-91bd-5423-9027-6a7e6ca8d234'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, '800de340-7fca-5636-aa2d-5bc6b317e3c1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('67fa95bb-da63-5ec2-9e16-79e6f23a2c54'::uuid, '800de340-7fca-5636-aa2d-5bc6b317e3c1'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('09aa6290-1aab-5180-bdbd-95afa60bfb99'::uuid, '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid, 'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d94b003c-9131-5c5e-8e9a-e8f228322c40'::uuid, 'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid, '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d55dfea9-8b1d-5c8f-8518-a48577297a6d'::uuid, '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid, 'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2a4a1dee-c5df-5937-bf43-331bee023a24'::uuid,
  'd55dfea9-8b1d-5c8f-8518-a48577297a6d'::uuid,
  '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid,
  'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cd8754a4-8f9a-53f3-92df-21847500301b'::uuid,
  'd55dfea9-8b1d-5c8f-8518-a48577297a6d'::uuid,
  'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid,
  '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aaa33b32-241c-5e82-88b4-562ba2e85dbc'::uuid, '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae15f1a7-6a95-5b4e-8573-5d4fa2018ecc'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fa1a95e4-b628-5b90-bdac-c7dcd6e6ebe1'::uuid, '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c3458e06-a407-51ba-bfd3-fba9ca876673'::uuid, 'da781818-221e-5433-8ed5-0d93efc9d299'::uuid, 'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8f18746-c3ba-5b57-9837-8d3abaebd3e8'::uuid, 'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid, 'da781818-221e-5433-8ed5-0d93efc9d299'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cc6e3231-b570-5f08-8135-a2ebfcf81ca4'::uuid, 'da781818-221e-5433-8ed5-0d93efc9d299'::uuid, 'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a3a66e9d-1feb-5d59-a696-3a96a8be7c41'::uuid,
  'cc6e3231-b570-5f08-8135-a2ebfcf81ca4'::uuid,
  'da781818-221e-5433-8ed5-0d93efc9d299'::uuid,
  'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '41fb633f-7ecf-5db5-8e87-130f0058caa3'::uuid,
  'cc6e3231-b570-5f08-8135-a2ebfcf81ca4'::uuid,
  'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid,
  'da781818-221e-5433-8ed5-0d93efc9d299'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5469485e-ed1d-562d-a248-7c8d59f7fa8b'::uuid, '5579e1e1-b542-5c1e-9e40-a1159ce70a2f'::uuid, '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72da104d-80c6-5555-b6c6-d7e7f692c473'::uuid, '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid, '5579e1e1-b542-5c1e-9e40-a1159ce70a2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ac0c5d0f-d487-5c7d-be49-054109469809'::uuid, '5579e1e1-b542-5c1e-9e40-a1159ce70a2f'::uuid, '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ecc0a8a0-bfb2-5f24-98f0-55f269a4e5e5'::uuid, '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dc974e76-00cd-5d7a-b8d5-b8359fb2e276'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1ec577c8-1e23-5537-ba71-5085a19b5e5d'::uuid, '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e05c6587-3319-5434-a15e-2c6c9bc6acfa'::uuid,
  '1ec577c8-1e23-5537-ba71-5085a19b5e5d'::uuid,
  '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid,
  '781e7da5-24de-584d-b14b-8380dabd974e'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '45c81bc3-a7bb-570f-ad4f-74a31a031705'::uuid,
  '1ec577c8-1e23-5537-ba71-5085a19b5e5d'::uuid,
  '781e7da5-24de-584d-b14b-8380dabd974e'::uuid,
  '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e71d346-9e87-53fc-88a4-29f34e690d6a'::uuid, '726d6063-9596-56fb-ad88-e5a3ee2d8c3a'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dfb4d61d-fa48-5ecf-b36f-262938cfe3d4'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, '726d6063-9596-56fb-ad88-e5a3ee2d8c3a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e4ce59ac-2bb5-520a-9069-bb44d21185da'::uuid, '726d6063-9596-56fb-ad88-e5a3ee2d8c3a'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ccda5fb9-a416-5577-83d8-d578659ff265'::uuid, 'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid, 'c36122a7-4e23-5387-9c04-70087a1dee13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;