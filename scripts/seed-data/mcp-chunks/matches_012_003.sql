INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c6b47096-ee0f-5fb5-bdf5-ef9f8d60bd6e'::uuid, '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid, 'db69352b-36e0-5136-a601-8cd783f826e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e868865c-de02-5fb4-a99a-d74b03e1819d'::uuid, 'db69352b-36e0-5136-a601-8cd783f826e7'::uuid, '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('60285cb7-0bcd-57d3-8137-e61983ed779f'::uuid, '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid, 'db69352b-36e0-5136-a601-8cd783f826e7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5a42ad46-b032-5fbc-8217-3a43cea554b0'::uuid, '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid, '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('def2fbcb-95f4-5e97-a79d-7f43181afe19'::uuid, '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid, '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1dbf6a2f-59a0-5e9e-9d34-4bf468a90064'::uuid, '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid, '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c9317cbe-98a4-5e26-aa1a-270af8a875d6'::uuid,
  '1dbf6a2f-59a0-5e9e-9d34-4bf468a90064'::uuid,
  '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid,
  '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '91744f45-dc4c-5d6f-a5ef-b615a9dd36d2'::uuid,
  '1dbf6a2f-59a0-5e9e-9d34-4bf468a90064'::uuid,
  '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid,
  '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5ee569de-afbe-591f-90bc-9fd42b3b6b4f'::uuid, 'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid, 'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e79e1ce5-c372-5f46-8fcb-3ca150a87e92'::uuid, 'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid, 'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a984a5b9-79dc-5d26-9152-4c0cccc70c91'::uuid, 'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid, 'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('adb8e951-9b3a-5c67-a81d-61dce6437e24'::uuid, 'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid, '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a53a1bb4-afd0-5624-bfd5-487697312650'::uuid, '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid, 'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d58056d2-273c-57f8-a65b-ea470b6d7ae1'::uuid, '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid, 'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'aeda8c21-446e-52f6-9e09-ea72cc1cca10'::uuid,
  'd58056d2-273c-57f8-a65b-ea470b6d7ae1'::uuid,
  'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid,
  '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b92da763-d57d-52a2-9395-663c922c2981'::uuid,
  'd58056d2-273c-57f8-a65b-ea470b6d7ae1'::uuid,
  '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid,
  'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('757e4680-0df4-556b-9830-197d62b284ab'::uuid, '49fbee97-9df9-5705-9855-5aac175ded93'::uuid, '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1ef65d6f-ad49-5eec-be7c-c8bfd17b8902'::uuid, '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid, '49fbee97-9df9-5705-9855-5aac175ded93'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('19b3f078-18df-56a1-9d1b-db3aa7000b1f'::uuid, '49fbee97-9df9-5705-9855-5aac175ded93'::uuid, '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e2c8ac6a-11de-58c0-9e5f-ddc3bc29063d'::uuid, 'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid, 'df78a96e-8530-5ff4-8128-44dbbeab3548'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6acaf74a-7457-5bdc-9c4e-5354d56a63aa'::uuid, 'df78a96e-8530-5ff4-8128-44dbbeab3548'::uuid, 'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('23ca0ac3-43d9-5a18-b5a0-331c9e9012ef'::uuid, 'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid, 'df78a96e-8530-5ff4-8128-44dbbeab3548'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '164a3faf-2437-5ea7-957b-9ef277d2190e'::uuid,
  '23ca0ac3-43d9-5a18-b5a0-331c9e9012ef'::uuid,
  'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid,
  'df78a96e-8530-5ff4-8128-44dbbeab3548'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'aad0821c-43dd-5625-af5b-5e20b51a9354'::uuid,
  '23ca0ac3-43d9-5a18-b5a0-331c9e9012ef'::uuid,
  'df78a96e-8530-5ff4-8128-44dbbeab3548'::uuid,
  'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5228c04f-8fe3-5bd6-9e96-dfc448f33f2a'::uuid, 'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid, 'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('021537a4-b6cb-5b22-8dfc-13ca8defe08a'::uuid, 'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid, 'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0312a151-398e-5e69-8869-7ec038148fab'::uuid, 'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid, 'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5848c68a-c049-5caf-aaf6-89b9a4fa21eb'::uuid, '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid, '27c33522-5956-5737-a7aa-a471b0013983'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9c74dda4-eeb1-5a31-96c2-97726d66efdd'::uuid, '27c33522-5956-5737-a7aa-a471b0013983'::uuid, '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('328ea357-cfda-5c49-bbdb-a7a307730849'::uuid, '27c33522-5956-5737-a7aa-a471b0013983'::uuid, '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '63c8bf1b-0ff9-5ec1-9076-cb11191d8d24'::uuid,
  '328ea357-cfda-5c49-bbdb-a7a307730849'::uuid,
  '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid,
  '27c33522-5956-5737-a7aa-a471b0013983'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '67d5686f-29f2-5e01-b95c-00c949d15901'::uuid,
  '328ea357-cfda-5c49-bbdb-a7a307730849'::uuid,
  '27c33522-5956-5737-a7aa-a471b0013983'::uuid,
  '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2645440f-5fb5-537d-a3cb-5cbf7c1812a5'::uuid, 'd08b51e2-35ee-57f1-b9fe-38c281fde355'::uuid, 'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('96223887-bdff-5fdf-8ad4-9bc0ff5cd254'::uuid, 'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid, 'd08b51e2-35ee-57f1-b9fe-38c281fde355'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ae337135-a2d4-52e0-a17b-e7df71c8e445'::uuid, 'd08b51e2-35ee-57f1-b9fe-38c281fde355'::uuid, 'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7d91db62-bcf3-5ea0-98d7-68912c24c3f1'::uuid, 'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid, 'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c75522e1-df80-52d8-a595-5f964f6e54c5'::uuid, 'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid, 'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('63ff4399-f817-50b9-bda0-a90a630fe59c'::uuid, 'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid, 'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a9af2efe-a9a8-5070-9188-ee816aa6e898'::uuid,
  '63ff4399-f817-50b9-bda0-a90a630fe59c'::uuid,
  'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid,
  'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '02d0b3f6-8168-5ba7-b13f-71b54ba72323'::uuid,
  '63ff4399-f817-50b9-bda0-a90a630fe59c'::uuid,
  'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid,
  'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;