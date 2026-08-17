INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ee04c4af-b17b-5f32-ac81-e3d30c2c608b'::uuid,
  'fb9b85f2-ca9d-579e-86a3-81ff053d93e3'::uuid,
  '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid,
  'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('31c34d59-7d2b-5dd2-bab1-ab626783461e'::uuid, '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid, '1225191a-019f-56d5-8355-03d7ea853341'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cca7c673-f4cd-5faf-9c85-898236302af3'::uuid, '1225191a-019f-56d5-8355-03d7ea853341'::uuid, '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('686ad558-c79e-5c96-afde-a1caa7f9bc33'::uuid, '1225191a-019f-56d5-8355-03d7ea853341'::uuid, '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a5a3bdd8-0fec-5a2b-af44-acba0914b412'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, '6fca6e88-1c4f-5c43-922a-3f20d6ddc049'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e57e707c-87ce-5c94-aa1d-5d81264c6184'::uuid, '6fca6e88-1c4f-5c43-922a-3f20d6ddc049'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('233ca1c3-a393-57e5-8672-36e749e9ea2e'::uuid, '6fca6e88-1c4f-5c43-922a-3f20d6ddc049'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dc74ebe9-c3d0-50b7-98c4-5ca384cd117e'::uuid,
  '233ca1c3-a393-57e5-8672-36e749e9ea2e'::uuid,
  '781e7da5-24de-584d-b14b-8380dabd974e'::uuid,
  '6fca6e88-1c4f-5c43-922a-3f20d6ddc049'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c1c793a4-a1f2-5b38-9ca6-43a080a97f5f'::uuid,
  '233ca1c3-a393-57e5-8672-36e749e9ea2e'::uuid,
  '6fca6e88-1c4f-5c43-922a-3f20d6ddc049'::uuid,
  '781e7da5-24de-584d-b14b-8380dabd974e'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9737868-6d5c-5e33-bafa-7387f3483cf1'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b0fb97c-67ea-5d72-b11e-c2f186bcd2a3'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('58675ce8-15e7-5557-ba44-bf4fff6fd07f'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8013a10f-6e2c-5d36-aac8-4647219bc472'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2ccb023d-56fc-5bf8-b962-fcca3c632c56'::uuid, '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c7045113-079f-5030-9fa6-7ed8862e5cf2'::uuid, '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'db4ee18d-4414-55f8-925a-6bbb685ff128'::uuid,
  'c7045113-079f-5030-9fa6-7ed8862e5cf2'::uuid,
  'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid,
  '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '465bd012-35a9-5663-bbdd-2d773e117cec'::uuid,
  'c7045113-079f-5030-9fa6-7ed8862e5cf2'::uuid,
  '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid,
  'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a4efeed3-f617-5b74-bf47-62ea68dbe2e5'::uuid, 'c36122a7-4e23-5387-9c04-70087a1dee13'::uuid, 'a47f9557-3126-5157-8316-17a32c536be0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0b03a30e-8ad5-5eec-bd3f-74fdd8ed884c'::uuid, 'a47f9557-3126-5157-8316-17a32c536be0'::uuid, 'c36122a7-4e23-5387-9c04-70087a1dee13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f58264e2-a53d-578e-ab1a-efa7e224fb11'::uuid, 'a47f9557-3126-5157-8316-17a32c536be0'::uuid, 'c36122a7-4e23-5387-9c04-70087a1dee13'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('748885fc-4b36-5d4f-be0f-d09ccbebcbd0'::uuid, 'babd2038-73bf-59da-ae80-09745173f792'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8a1e011-6c13-5781-ae94-ee50276b716b'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, 'babd2038-73bf-59da-ae80-09745173f792'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a12c7541-1309-57af-819e-31cca7955baa'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, 'babd2038-73bf-59da-ae80-09745173f792'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '880df381-da99-50ee-991e-bc572c405bb5'::uuid,
  'a12c7541-1309-57af-819e-31cca7955baa'::uuid,
  'babd2038-73bf-59da-ae80-09745173f792'::uuid,
  'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '262fcfc0-6de4-5d80-b994-b5a8bfb7b0e5'::uuid,
  'a12c7541-1309-57af-819e-31cca7955baa'::uuid,
  'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid,
  'babd2038-73bf-59da-ae80-09745173f792'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7381759a-5a6e-54e5-a622-abd5bb7584b2'::uuid, 'ac5f51b9-619a-5ecc-8be0-95f17fbf70fb'::uuid, 'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('580ad032-4309-5c83-8993-37378baccc7f'::uuid, 'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid, 'ac5f51b9-619a-5ecc-8be0-95f17fbf70fb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e7777b9d-b570-52a0-867f-08bcb4ffb190'::uuid, 'ac5f51b9-619a-5ecc-8be0-95f17fbf70fb'::uuid, 'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('161af220-bd68-57d7-a851-6ff60dcab3cd'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bd2a876c-b7a7-5397-a97d-7b823556c693'::uuid, '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dd35dfa8-28a5-56ee-8152-8ba6d19b8273'::uuid, '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1518f0c3-820b-5e72-a329-a8b4477300cb'::uuid,
  'dd35dfa8-28a5-56ee-8152-8ba6d19b8273'::uuid,
  'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid,
  '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f4334c5b-6186-53a7-9111-d3cc1a7939c6'::uuid,
  'dd35dfa8-28a5-56ee-8152-8ba6d19b8273'::uuid,
  '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid,
  'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7ab501a2-c4fe-5744-8be0-0ad95339e12f'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('77a60428-9a01-5d16-888e-0971ad6803dd'::uuid, '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('98cac5ce-a7a5-5a24-a92b-f5cfe7b3a25e'::uuid, '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3039e49a-1e1b-5088-a615-751b2cd464c5'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, '5356c221-d65a-5f9c-921b-112439242ea1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('26ffb169-37ca-521f-8a58-40f601c9fe11'::uuid, '5356c221-d65a-5f9c-921b-112439242ea1'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5c14ad0e-2c72-594a-b2d4-cb58345f2b24'::uuid, '5356c221-d65a-5f9c-921b-112439242ea1'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ef6ef014-2908-58dc-8bf9-9848e850560a'::uuid,
  '5c14ad0e-2c72-594a-b2d4-cb58345f2b24'::uuid,
  '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid,
  '5356c221-d65a-5f9c-921b-112439242ea1'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;