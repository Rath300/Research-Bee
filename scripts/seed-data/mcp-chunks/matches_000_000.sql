INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4ce6e0ab-d702-59e2-a6cf-a33b93032e28'::uuid, '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid, '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('03a80985-4319-5142-ae88-6ef3bf727e97'::uuid, '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid, '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6bae7d09-e86a-568e-aeff-a57313f72e5b'::uuid,
  '03a80985-4319-5142-ae88-6ef3bf727e97'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0426763a-d2a1-57b6-b9c4-6c159cdc6df6'::uuid,
  '03a80985-4319-5142-ae88-6ef3bf727e97'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c2a1dd4d-a1d8-5935-9636-1d98ac1ecf33'::uuid, '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c5180964-c924-5671-8a11-1ffa5fd2ae7b'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2ef20f40-41b4-5618-8c15-b4d4bbf7b127'::uuid, '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ac9554ca-a49a-5c61-b74c-96112c03aad2'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2a42639a-df78-5eef-b8dc-a464a3ec3347'::uuid, '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid, 'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2f758a06-8abc-549c-9062-b1fdf3d901e2'::uuid, 'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid, '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('abd5ef1e-5fda-5b8d-8827-62b95ad70449'::uuid, '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid, 'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4ee9e397-b25b-54af-99db-420545a0999f'::uuid,
  'abd5ef1e-5fda-5b8d-8827-62b95ad70449'::uuid,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e9c886b0-b56d-5f33-a762-a9f0be0fe891'::uuid,
  'abd5ef1e-5fda-5b8d-8827-62b95ad70449'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('12b8227f-ab9a-5836-81cd-f30236214e70'::uuid, 'e82aadde-599d-5823-9c92-7aa26f607621'::uuid, '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5d94465a-3a2d-5c5c-b9eb-ee11492fe215'::uuid, '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid, '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae8b1866-f10d-5103-92e2-42c8a81e5df4'::uuid, '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid, '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1bb01551-d5f2-526b-9537-26b517374fc3'::uuid, '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid, '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('074b330a-8523-55a5-bab6-204377313b94'::uuid, '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid, '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3b805dcf-19ee-5907-b1e1-5c54986adcfe'::uuid, '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('665448dd-9cf5-5c20-b9a5-7d0b7c951df1'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b67da2dd-4a60-51fc-abc7-1cbb592302cb'::uuid, '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6d8fc0bf-30b4-50a2-a8a7-f092c6ae9933'::uuid,
  'b67da2dd-4a60-51fc-abc7-1cbb592302cb'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fe60a1c9-724c-5b7e-a957-4920c6791a4a'::uuid,
  'b67da2dd-4a60-51fc-abc7-1cbb592302cb'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('79dcbc04-c4ab-50d3-9e9c-5cd61d3742c2'::uuid, 'cbc72d17-40df-503c-9380-64860d555aeb'::uuid, '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4942d41e-91c8-589e-9428-367ba153f88c'::uuid, '38027771-452e-56a6-93ee-0327efca8125'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ff2653bd-c8c6-575c-bd43-0c0a946c4b49'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, '38027771-452e-56a6-93ee-0327efca8125'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('33ea3e35-5455-563d-90e3-2d45d88743c5'::uuid, '38027771-452e-56a6-93ee-0327efca8125'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ecc4a9c-9a85-592a-a412-2d7c7c519cd8'::uuid, '89b2a66e-af73-5706-9535-645704dc5830'::uuid, '38027771-452e-56a6-93ee-0327efca8125'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('840a9a22-d82f-5ac0-9165-a54c23345ec0'::uuid, 'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid, 'e82aadde-599d-5823-9c92-7aa26f607621'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d85f7a99-d656-5361-af7e-d6c4bcb757f2'::uuid, 'e82aadde-599d-5823-9c92-7aa26f607621'::uuid, 'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4679c1a3-9853-52f3-9958-f189c021c82d'::uuid, 'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid, 'e82aadde-599d-5823-9c92-7aa26f607621'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7401efb9-1139-5850-a39b-67f07782ebbd'::uuid,
  '4679c1a3-9853-52f3-9958-f189c021c82d'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3ad7279f-d4fd-56b1-bc4a-b61e771c5e32'::uuid,
  '4679c1a3-9853-52f3-9958-f189c021c82d'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('27bdce3d-af67-57a5-bfa7-1db1dca94a6d'::uuid, 'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8e63566e-30ba-57f3-9399-a2f02807205d'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, 'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4f890520-ce8c-5e76-b988-dce5c822e5fd'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, 'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9bab8caf-e275-5c9f-8cbe-463162ce64e3'::uuid, 'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid, 'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a783dc16-9214-56e6-948c-b450c09207f1'::uuid, 'a26aee00-05f2-505c-a479-ae1852915911'::uuid, '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e27676fd-8475-5348-a9c4-c04cafa07417'::uuid, '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid, 'a26aee00-05f2-505c-a479-ae1852915911'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('236af147-d012-5ccf-b90a-88b6057de917'::uuid, '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid, 'a26aee00-05f2-505c-a479-ae1852915911'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;