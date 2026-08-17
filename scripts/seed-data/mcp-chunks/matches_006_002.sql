INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b22e120c-f82e-517e-8aab-60c17fc38b25'::uuid,
  '4ec6a0be-8573-518d-9e47-9c54c7f204ea'::uuid,
  '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid,
  '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c21601b2-744f-5efd-a5b4-a87f6191a7cc'::uuid,
  '4ec6a0be-8573-518d-9e47-9c54c7f204ea'::uuid,
  '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid,
  '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('938db596-a93f-5b02-b144-f1b747b63a29'::uuid, '8539a32a-815b-5a83-a51e-679ee612278d'::uuid, '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fea2a7a3-eb24-5ad4-9ecd-a42e9264c424'::uuid, '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid, '8539a32a-815b-5a83-a51e-679ee612278d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('526d5985-a0f9-5595-9283-1ddd187372f0'::uuid, '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid, '8539a32a-815b-5a83-a51e-679ee612278d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b38e7850-7040-5085-a67f-6c7e01dae59f'::uuid, '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid, '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('85324f0b-eaee-5f89-84ee-ce136db6590d'::uuid, '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid, '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3d45f045-a6f2-5827-a987-60c2a37fe2d6'::uuid, '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid, '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '219b4817-b51d-589b-9a00-f55214f2637a'::uuid,
  '3d45f045-a6f2-5827-a987-60c2a37fe2d6'::uuid,
  '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid,
  '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9cdef4e8-9169-5254-9a68-a80f8c2f7a4d'::uuid,
  '3d45f045-a6f2-5827-a987-60c2a37fe2d6'::uuid,
  '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid,
  '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2e1af7b1-d8be-5892-a4ee-0ec38b65c6ea'::uuid, '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid, 'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d1808cc6-b59e-5ea9-bbc9-ee4ee072ff9d'::uuid, 'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid, '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f7e1be15-faa6-5fcd-b3f0-ab8ecdfc78bf'::uuid, '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid, 'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('095833ae-e9eb-5d2f-a01e-b8813b8eb6ab'::uuid, '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid, '04149813-8770-5834-9525-c8ba8a4f02af'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b457a171-e6d9-5025-aa5e-9dd648c15553'::uuid, '04149813-8770-5834-9525-c8ba8a4f02af'::uuid, '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('942c576c-2daf-51b5-a3a1-4e1dd541fbd0'::uuid, '04149813-8770-5834-9525-c8ba8a4f02af'::uuid, '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b39e0801-6834-5d6f-8649-d208e05fdda7'::uuid,
  '942c576c-2daf-51b5-a3a1-4e1dd541fbd0'::uuid,
  '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid,
  '04149813-8770-5834-9525-c8ba8a4f02af'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '17ad2a56-a4aa-5134-9005-582579f5505e'::uuid,
  '942c576c-2daf-51b5-a3a1-4e1dd541fbd0'::uuid,
  '04149813-8770-5834-9525-c8ba8a4f02af'::uuid,
  '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ad7972ee-5d5d-5fbc-9377-918e53b9f028'::uuid, 'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid, 'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7aa682d0-8466-5612-b995-0ae54d1685f1'::uuid, 'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid, 'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5485bdc4-4dfd-58f0-b88f-d68f93ae74e3'::uuid, 'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid, 'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('529ed9dc-238f-52ad-982f-076996308768'::uuid, 'f324dc11-eb21-5df5-a147-1760b8514837'::uuid, 'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fac0ee16-91d3-5d71-a71f-f3a63107900c'::uuid, 'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid, 'f324dc11-eb21-5df5-a147-1760b8514837'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('84565a85-2353-5280-9fc5-a6398d758f66'::uuid, 'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid, 'f324dc11-eb21-5df5-a147-1760b8514837'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '88ca794b-6cf3-5b65-9c4d-08c6d10d51f2'::uuid,
  '84565a85-2353-5280-9fc5-a6398d758f66'::uuid,
  'f324dc11-eb21-5df5-a147-1760b8514837'::uuid,
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c127cd1c-32e4-5ddc-9954-603217443ab5'::uuid,
  '84565a85-2353-5280-9fc5-a6398d758f66'::uuid,
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  'f324dc11-eb21-5df5-a147-1760b8514837'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7624fdf6-f0dc-5289-98f7-9e58eaab858d'::uuid, '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0ec6dc91-ad92-5df8-9da8-e10e582368b0'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4dfb6304-e00f-55e6-a08e-328ddeb6cf30'::uuid, '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d027fd17-4522-5c73-85c1-79c932f941da'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7f6a9439-53a4-5b0c-b303-0e609c1e7096'::uuid, '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('644b6b09-b345-5866-a6a7-da7dbe159491'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '97277f59-f4c4-5744-b013-2011f86c491b'::uuid,
  '644b6b09-b345-5866-a6a7-da7dbe159491'::uuid,
  '09c666a4-3bb7-5163-8075-029e573c454d'::uuid,
  '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cd5fb2ce-1174-55af-b17b-74f061fd3337'::uuid,
  '644b6b09-b345-5866-a6a7-da7dbe159491'::uuid,
  '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid,
  '09c666a4-3bb7-5163-8075-029e573c454d'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e364d535-46ad-5a4c-9821-04c0619ec0f1'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('672411f4-e196-5fd7-8db4-eae6893918a1'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('20f64a5f-76e4-5211-9bde-a9bb8c7bac46'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e84fd78b-5060-58f6-bf6d-bef72284b9bb'::uuid, '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid, 'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('12295755-33be-55b5-a2a5-a8e7424407c9'::uuid, 'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid, '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8910fb25-174b-53a7-89a3-f8e1c0e1b39b'::uuid, '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid, 'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;