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

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cc196a0c-8038-52e2-9591-cd7946fb9845'::uuid,
  '236af147-d012-5ccf-b90a-88b6057de917'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '900a8df9-c7ae-5ce2-a620-8809d7b65327'::uuid,
  '236af147-d012-5ccf-b90a-88b6057de917'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('34b615dc-552d-5533-b649-91e9c200c944'::uuid, 'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid, 'a26aee00-05f2-505c-a479-ae1852915911'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2e9efde2-b96b-5f68-8a1b-16cc4d516cb3'::uuid, '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid, 'cbc72d17-40df-503c-9380-64860d555aeb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d0c8821d-3a7e-532f-b304-aa767524cbf4'::uuid, 'cbc72d17-40df-503c-9380-64860d555aeb'::uuid, '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a2b107ad-d56c-58d9-8a89-c5ef324202fd'::uuid, '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid, 'cbc72d17-40df-503c-9380-64860d555aeb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('77a6c0b0-1e5f-5842-bd5b-50e0f82e59ff'::uuid, 'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid, '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b699785f-549b-5e52-928c-4e6d438b556e'::uuid, '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid, '89b2a66e-af73-5706-9535-645704dc5830'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5350c403-3163-50e0-8fea-f76f025d73e8'::uuid, '89b2a66e-af73-5706-9535-645704dc5830'::uuid, '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d5d006e8-d5ab-532f-a072-785d188151d0'::uuid, '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid, '89b2a66e-af73-5706-9535-645704dc5830'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c04f0bf6-1fa7-595b-a2e9-56182a5e6aaa'::uuid,
  'd5d006e8-d5ab-532f-a072-785d188151d0'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e76ab9ce-05ff-5a66-aefa-a423c1d80fe1'::uuid,
  'd5d006e8-d5ab-532f-a072-785d188151d0'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('340a20ca-551c-5260-a631-ad339cdd2a4c'::uuid, '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid, '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('342711cf-628f-5be1-aa2b-793517cccaca'::uuid, '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid, 'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e3571543-faa8-5606-9c4b-f336544cc5f3'::uuid, 'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid, '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d222d267-903d-54ff-9698-a48021141c8e'::uuid, '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid, 'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72cef5a6-cd09-56a6-a7ae-39149bc41920'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f86092d6-dfe7-5daf-ba36-aea3b1767ecb'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dd313cac-b000-5ccf-bf47-24eaeb4e3261'::uuid, 'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8e741c5f-92f1-5e1c-b73c-3e990cf8411b'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6b62f88b-36b2-533d-bda1-c5dd5380e8cd'::uuid,
  '8e741c5f-92f1-5e1c-b73c-3e990cf8411b'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0d85a778-77f7-5bd8-ae7f-87691d80c713'::uuid,
  '8e741c5f-92f1-5e1c-b73c-3e990cf8411b'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('97158014-55fc-5606-861c-16d7bc4fcb58'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9bcc3a41-516f-5ff9-83c6-aa5cfd6d84ef'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ab73a3ce-52c4-5dcc-b073-2e6409562a34'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3d4aa61a-d170-5d9f-a2b6-19beeaf61b0c'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('637d1bed-448e-56c0-a25e-5403ec4833a8'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, 'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('863f6185-2f8a-5e37-b3ea-c6cf86191c14'::uuid, 'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5b32ad73-01e6-5af9-94d5-d95e3e24baa2'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, 'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3dc07086-24b0-5877-8b97-054e96bb4c3f'::uuid,
  '5b32ad73-01e6-5af9-94d5-d95e3e24baa2'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a951445c-4630-5f34-b99b-c689101a7173'::uuid,
  '5b32ad73-01e6-5af9-94d5-d95e3e24baa2'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('04068876-7e69-529a-b12d-92069a09091d'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1c8182cc-1b71-52da-9558-65bcaefe02ec'::uuid, 'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid, '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d28e630f-96e7-552b-8129-f027b4b04534'::uuid, '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid, 'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('df5a3f82-959c-563f-be4c-4a87adccef7c'::uuid, '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid, 'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a746eba7-7b27-535d-bb1e-fe3f17a18dc8'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, 'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('450ecb0e-30c4-5ee1-adf2-2d28534ce3dd'::uuid, 'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1da394f9-88a3-550f-8d9b-27ec252d1d0e'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6016b25d-81cd-5998-abd2-ce6c1e929e05'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7cacb5c9-ce91-5079-8c79-2640eae5937e'::uuid,
  '6016b25d-81cd-5998-abd2-ce6c1e929e05'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3007dae6-ce9c-5706-be10-d91a0252bfa3'::uuid,
  '6016b25d-81cd-5998-abd2-ce6c1e929e05'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('28779808-774e-5436-8405-1770dae26a60'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ee8afc7e-adf5-5390-b720-2db7fa9a1aa7'::uuid, '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('46d46170-618c-59d3-90c0-554bda3f0f22'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c39be88d-514c-5c3e-99b1-74ec6d2002e9'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('86897295-f607-5eef-a33a-cf9f19a78321'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7aabcaab-1beb-52c2-9dee-dc13eaf88be0'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('db15daf4-1588-5d63-ac0f-808687afd54c'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0b5ddc01-78f7-5f33-9e58-6cede63e521f'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f15e4ff0-0ea8-56ce-8cf9-7e10df9d720f'::uuid,
  '0b5ddc01-78f7-5f33-9e58-6cede63e521f'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd6b58b4d-4840-568e-aac6-a9e5350cf639'::uuid,
  '0b5ddc01-78f7-5f33-9e58-6cede63e521f'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('780c1182-8367-5721-a53d-846ebf60c8a0'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f698939b-e2b1-5ed7-bb67-1912cfcfd14b'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('faa76b90-62f9-5a11-ab08-176efa1b57c4'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9361411a-d63c-5cda-81cb-db67a15d4b3b'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f7c23e26-2343-5131-890b-c91797e75ff2'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('92070f54-f368-5e37-a7da-68549e9412c6'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f6b772cd-f250-5fb3-8c5e-e70b41d17151'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ea7c526e-3204-5a66-9c61-162e5c3bcb4d'::uuid,
  'f6b772cd-f250-5fb3-8c5e-e70b41d17151'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '92251cfb-0f65-5a90-8080-49138dd9318e'::uuid,
  'f6b772cd-f250-5fb3-8c5e-e70b41d17151'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('df9de4bd-c0e1-5a16-b18b-4ea041bed3e9'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a0620241-edea-5f21-8e4c-1e6a35d94ee3'::uuid, 'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0fe5ffe5-75a7-5869-8dc3-0ad103aca7d1'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('20b52e3e-d5df-5487-9bc6-2e3a3bf6bfd7'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5cf8d42b-fc6c-51be-8969-7411c8521a7f'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, 'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fb47bfd6-b191-5c9f-a5c6-14ebd26970a0'::uuid, 'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('06202135-4586-5060-8e96-4ab439db5e7a'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, 'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6ba628fe-0c85-5db0-a4ea-b54a332a83d6'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, 'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1a6600f9-8f24-5766-832a-65579818c867'::uuid,
  '6ba628fe-0c85-5db0-a4ea-b54a332a83d6'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '20515e4f-9a89-5d6e-83fb-541df5990502'::uuid,
  '6ba628fe-0c85-5db0-a4ea-b54a332a83d6'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('800f7068-0eb0-5d2d-a23a-4d5e09e9b4e0'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7ffb093-b774-5110-a6d1-aa35e0848a14'::uuid, 'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('66863450-7625-5679-ae59-df6a593d6fc9'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f088d5ce-32e6-5b30-b6b9-3248e0bd7ab7'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3fc988a-7775-5dc6-afc8-99185766c526'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7317e130-6531-5ea5-b49a-a1f057e0e9f2'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eed42061-95bd-5575-badc-a1e12501d6a1'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7c734f05-3221-54c9-9dae-dfbeb24c4e60'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2f88a73e-9be9-5da8-afb2-fa7fcf6c7365'::uuid,
  '7c734f05-3221-54c9-9dae-dfbeb24c4e60'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3c140521-6bc8-546c-bc2d-a33141568e6f'::uuid,
  '7c734f05-3221-54c9-9dae-dfbeb24c4e60'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e4a0de32-4205-5210-9a7a-29e2bc829bdd'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38b0bbc8-14d9-5305-b9b0-c197e838c1bf'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('25bdbe83-fedc-574f-b10a-94a74f660e36'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5ef71211-7e57-5f5e-8686-8709a1d0b5bf'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dc6a13a2-cde7-578d-89ab-a6259a02acf0'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('453268ca-da44-59e3-9104-4fd4d3e10992'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('33de0d70-4adc-5d2c-85fa-35934d850131'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'eb50daad-5401-5637-99a6-72caf27a0548'::uuid,
  '33de0d70-4adc-5d2c-85fa-35934d850131'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd7402f24-e58e-58ee-ab92-cad956936ebc'::uuid,
  '33de0d70-4adc-5d2c-85fa-35934d850131'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('79f72555-d9c3-538e-828a-c9309603c2df'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4ec35ddd-3bb8-5131-a8bd-bfe7f2820e7c'::uuid, 'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1cfbdc48-5846-55cf-8131-1fbb070f63f2'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bf8fb968-d0d1-5f17-92ad-db3d139571a9'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('64924544-db02-5a9e-8db9-9f7ef693838a'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3c86094e-c182-5045-a966-3910e5b54c02'::uuid, '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eb1c4dba-91c4-5bb4-ae50-4a5f2b95e5d6'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5ea8af93-0eff-55e0-a058-e8b176388653'::uuid, '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '830f784a-665a-54f0-8814-b99b2119d7fb'::uuid,
  '5ea8af93-0eff-55e0-a058-e8b176388653'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1a3484b8-d996-50a1-8264-0bb15f4f53ad'::uuid,
  '5ea8af93-0eff-55e0-a058-e8b176388653'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a606526e-f5af-5546-b9c7-da274c86821a'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('086f26fd-9696-59dd-84db-8ee8e52a282d'::uuid, '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c8ace48e-241b-57d8-a24d-43d9ea193229'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('efec37ed-c2ca-5da1-a894-f4622cc9861a'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('794c950a-1ecf-5537-8b31-ea8205aafba3'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f438e667-7aba-5167-a4b2-83183ea3154c'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00982c53-6c26-543a-b702-bc96fe1e9f2b'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4cc39f6f-4181-5462-9ca7-29b54ce1fb30'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0969decf-eb81-5358-8593-d1a196006c5f'::uuid,
  '4cc39f6f-4181-5462-9ca7-29b54ce1fb30'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4606033a-0e04-5f9b-a43f-ecf3c194cd36'::uuid,
  '4cc39f6f-4181-5462-9ca7-29b54ce1fb30'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e3270bd9-6e15-59f3-ac8e-914ae02146f0'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dad1a9a0-b2d5-588b-a9f9-5d0970cbc9a5'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6b305e8e-f72d-5af4-b92d-e266b0468fb4'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7f1c1956-83de-518b-8e82-554ed4ffb233'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cc6b6e44-b1ea-5744-a053-585119c67e78'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cb55027e-f9ce-5069-ae98-471e5d407f50'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('77c4ad54-63f3-53d3-9949-71c8896eabec'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6ba9b639-5193-5bd9-b9a2-9e4e7ae0c263'::uuid,
  '77c4ad54-63f3-53d3-9949-71c8896eabec'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '159f7bdb-805c-5083-a70e-05aca8883f36'::uuid,
  '77c4ad54-63f3-53d3-9949-71c8896eabec'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('71d45fcc-331b-5dd9-9206-51bab4bfd8b2'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('56afea8d-4841-59ec-8164-f427942dd624'::uuid, '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('024150f5-9743-5ccc-a831-2b54f4407f8a'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6eda4f9c-3f69-5948-93a5-96e013f11be4'::uuid, '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e654fc87-2401-5a52-b78a-92c33d22486c'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('60f5bab1-30be-5487-8fb9-960fca0c6b45'::uuid, '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4a9f1bee-39c0-5ec4-832f-e1ba62d9b271'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f7181134-6649-5886-8a02-b599b8bd4e34'::uuid, '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f9067847-4dd8-5b2b-a5a4-50f87d913b7c'::uuid,
  'f7181134-6649-5886-8a02-b599b8bd4e34'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5d40c665-c686-5e94-9083-7d8568b1c997'::uuid,
  'f7181134-6649-5886-8a02-b599b8bd4e34'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('07c4fa1a-0f5c-51cc-9049-24d6d65405a9'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c64b68bb-3de3-5613-9914-31986ec81a37'::uuid, 'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('91597236-208c-54f3-9272-2b5f60105ff1'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d09db5da-9aa3-5c1a-b02c-1d1854067159'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bbe6257a-29ae-59f6-98ec-74c272837dfa'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('84209aae-0ca7-5ba7-bba5-826758d45bf8'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9101339-17a2-54c8-acf6-c711f2db6725'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d8a4ce17-a37c-51dc-934c-ea847735350b'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f4e0a535-0277-525f-8c43-1008448d2c41'::uuid,
  'd8a4ce17-a37c-51dc-934c-ea847735350b'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '74f53bca-cfb3-5204-a9a0-a8a844066d78'::uuid,
  'd8a4ce17-a37c-51dc-934c-ea847735350b'::uuid,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('da5d3420-3101-598e-bd73-6da7384243b4'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7c7e7bc-42a3-54fc-8e13-936e754c7233'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a2888107-19b1-5460-8c45-cab80b9815b7'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f7b4036b-bae6-5e8a-9492-695ae23049cb'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6cfea153-6465-5b3d-935f-ca5cc658155e'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7cde5606-0906-59c0-8252-8b38179556b2'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a8cd0501-c179-5c6e-bc0f-b2f09c32d7ea'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c553f782-6369-5337-9d5f-800575a02940'::uuid,
  'a8cd0501-c179-5c6e-bc0f-b2f09c32d7ea'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e17e59c1-966b-5da1-a5d1-7ad24094cdd7'::uuid,
  'a8cd0501-c179-5c6e-bc0f-b2f09c32d7ea'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1769e2be-b38a-5b48-adff-c37852e597d1'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4aad7a83-3197-5c2e-959a-0afe213a94f2'::uuid, 'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2b928b2b-1416-57e6-8f53-6ddc5486b101'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, 'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a3456903-4e72-50b2-a656-779ea15f8da8'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, 'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1ec6c5c6-bd28-5ace-b6ac-75bbc1677ecb'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('40c8ca17-3962-53d5-81d0-d0777bb10503'::uuid, '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ad3939bb-a66f-5ba7-8de2-f8fe2ff91792'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4238aef9-3bf8-50a4-9980-8163c4e9fc8a'::uuid, '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c5e3e045-dff9-5b93-8cf5-18e566926b2f'::uuid,
  '4238aef9-3bf8-50a4-9980-8163c4e9fc8a'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '74f045e9-e462-5069-abc6-6be19a3e883a'::uuid,
  '4238aef9-3bf8-50a4-9980-8163c4e9fc8a'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3497fb34-2987-5801-893c-fee3fa7c7756'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('35111f39-c442-5cf4-ad56-2619aad7db18'::uuid, 'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ee7a9e31-d0ab-570b-b1ff-8dea3e93f1c0'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('07270c93-6aaa-51b5-a6d8-65e8a80e48cd'::uuid, 'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('80ec320c-1125-5201-b804-4ffbb67c48f8'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('94a9cce1-27c5-5406-b3fd-8efe6ed80c30'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4f64f437-e094-5d2d-bc6b-0d813815b1a8'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('30ba9a7e-0086-50da-80b7-6ad0dd7ef8f0'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '718a4cad-4d01-5641-ae4a-a377fa5a5692'::uuid,
  '30ba9a7e-0086-50da-80b7-6ad0dd7ef8f0'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a7c2df78-0f4f-5ed8-8754-e162e82cc221'::uuid,
  '30ba9a7e-0086-50da-80b7-6ad0dd7ef8f0'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4973ca63-210a-5ad5-93ee-78038f9fdcdd'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('07941b64-8b0b-55d8-a2c1-ac8f3d6677cc'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c241e2c5-11ee-5dae-9014-75f3cc1800db'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('27a17ce4-aed9-5025-b18c-ab12c00febba'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('85908320-c57d-55cc-b9de-a518de59efe0'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dff9ce99-3531-5f40-b495-721757884ab6'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('39a4fb28-cd1d-5559-8420-8cf873907ed5'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9d35e4bd-ea10-57f8-b26f-8f4a41b18fd9'::uuid,
  '39a4fb28-cd1d-5559-8420-8cf873907ed5'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c44cd872-4ee5-5015-a593-777f98d4def1'::uuid,
  '39a4fb28-cd1d-5559-8420-8cf873907ed5'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bc92c171-8d46-5135-9b1d-7a08d129ef51'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5c058b82-429e-5699-be9f-47a88ad5b9b3'::uuid, '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b5c2e231-3858-5294-aad3-5145170bcde9'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3e998b2a-f91a-5c46-8b3b-9ffc3c6ef9b7'::uuid, '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('192cafaa-b1a8-5bdb-8f6d-6a3f62f723a8'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1739bc52-b398-5a10-afd4-cc457cd5d8a1'::uuid, 'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89f61795-ad16-5963-8938-55fb922ea000'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8504073b-c5ab-51cf-9895-055a60622982'::uuid, 'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e7231452-d553-5fce-8d0a-48ecc0f8bd53'::uuid,
  '8504073b-c5ab-51cf-9895-055a60622982'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '885918e3-3969-56b9-ba1c-b03ecd214961'::uuid,
  '8504073b-c5ab-51cf-9895-055a60622982'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('495014ba-4da6-59ed-aa49-60eeb795963f'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, 'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d79167e2-41ba-5d2f-8644-f631f634aa3e'::uuid, '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30e23369-467f-5bca-82c1-1a0215f92837'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1cbf77ac-9431-56d0-8adc-177cf00561f3'::uuid, '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('992a15b1-7828-506d-9d3c-b37ecafc9ee5'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6794c131-0ce1-5348-b966-5dec603b3b27'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ecbd0124-bff3-5d17-afa3-cc704aea7034'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('de4d69fb-a671-55db-bfd4-96a7eb7d3816'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '94bc6ed1-ee38-52c3-9aed-b1cfab7f270a'::uuid,
  'de4d69fb-a671-55db-bfd4-96a7eb7d3816'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3173404f-37f0-5504-a85c-78297d7053f9'::uuid,
  'de4d69fb-a671-55db-bfd4-96a7eb7d3816'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e61116a3-905c-5184-959f-039282f9dd0e'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4032d28b-655a-5018-bfb1-cc1b23ad5cf8'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3de2bbe0-52c6-573a-a2f5-c041e0d36b37'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2db0250c-4805-5e81-8a85-e0728b58e7c5'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('11802e11-7b43-5134-ba58-0d4017bf98e3'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9a759fbc-f931-5f9b-afed-08db946f952c'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8636e981-c586-52f5-a1ea-78ca4486e1f0'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9260d516-b46b-5beb-92f9-9b341d6cd3e4'::uuid,
  '8636e981-c586-52f5-a1ea-78ca4486e1f0'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '69284458-4e8c-5c62-b40c-475f7776f87c'::uuid,
  '8636e981-c586-52f5-a1ea-78ca4486e1f0'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5023a1ac-50ae-5b38-a725-c6ad67a03f6b'::uuid, '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('395f7892-9153-59e3-9aba-e10df32a649b'::uuid, 'e82aadde-599d-5823-9c92-7aa26f607621'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b2c62255-1959-596b-88eb-ad152df874af'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, 'e82aadde-599d-5823-9c92-7aa26f607621'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('84d29062-5c0c-5ab8-80a9-9911dbb7afd8'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, 'e82aadde-599d-5823-9c92-7aa26f607621'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;
