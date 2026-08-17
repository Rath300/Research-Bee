INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd2d2a3ef-57b8-52d2-baee-c18139fc2c03'::uuid,
  '4010d4dc-a9dc-5194-a715-640aaa53ff7c'::uuid,
  'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid,
  '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('10cb4d54-9e6f-551a-93a5-ee6934db1016'::uuid, '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid, 'bdbffa25-5dda-547c-904d-3abab742a813'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bfa8da7a-3dbd-5fd1-a22a-ce122b8f9cc9'::uuid, 'bdbffa25-5dda-547c-904d-3abab742a813'::uuid, '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b1ab95bf-96e3-51f5-8eb7-421cc29eab86'::uuid, '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid, 'bdbffa25-5dda-547c-904d-3abab742a813'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8ed8081c-bc83-5756-9ee5-fe733cfe0253'::uuid, 'db69352b-36e0-5136-a601-8cd783f826e7'::uuid, '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('67e2464d-302c-53e1-b2ca-7fe880178244'::uuid, '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid, 'db69352b-36e0-5136-a601-8cd783f826e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc9141fc-582d-504f-93e1-78ea46996de5'::uuid, '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid, 'db69352b-36e0-5136-a601-8cd783f826e7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2c8779dd-979e-5a81-a60f-6357a4b4e8f9'::uuid,
  'dc9141fc-582d-504f-93e1-78ea46996de5'::uuid,
  'db69352b-36e0-5136-a601-8cd783f826e7'::uuid,
  '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '93b70ea2-933b-5da1-a32c-26462edbf835'::uuid,
  'dc9141fc-582d-504f-93e1-78ea46996de5'::uuid,
  '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid,
  'db69352b-36e0-5136-a601-8cd783f826e7'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89137c75-7261-58a5-8861-720dbe32834d'::uuid, '1a61d961-51b5-5a7b-a66f-f3270ebcf8b4'::uuid, '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c8e2df83-bab3-5c1f-8642-d7ac46fbc82f'::uuid, '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid, '1a61d961-51b5-5a7b-a66f-f3270ebcf8b4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b9bbb39d-ca4a-550f-a898-72adc4f09bfb'::uuid, '1a61d961-51b5-5a7b-a66f-f3270ebcf8b4'::uuid, '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bf7f8289-2255-5f8c-adfd-2e35043ec5cb'::uuid, '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('db9ddbe0-77f8-5b59-953c-4ef1334d0c2c'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('44bc67d0-f812-54fc-81de-41d71486ec8a'::uuid, '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e2e0683a-6a1c-5308-8543-5a4f119c6599'::uuid,
  '44bc67d0-f812-54fc-81de-41d71486ec8a'::uuid,
  '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid,
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0840dd0e-33d7-5845-8490-302459675085'::uuid,
  '44bc67d0-f812-54fc-81de-41d71486ec8a'::uuid,
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('27e995fe-170a-5bc5-b362-b15267b83803'::uuid, 'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('68ca6a59-dd9d-5ed2-b680-7940aa1357a3'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, 'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('71581b0c-a2f7-5a03-80ae-a830fd712fa0'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, 'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2027acb5-f366-5dbe-864d-5c5976b4e699'::uuid, '223e8288-5d44-542e-b220-e739635a31f1'::uuid, '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e87287ab-a40c-5a99-b316-a325a3efc1cb'::uuid, '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid, '223e8288-5d44-542e-b220-e739635a31f1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7273cada-d737-5c62-b466-80a93ce75152'::uuid, '223e8288-5d44-542e-b220-e739635a31f1'::uuid, '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '277056c4-3811-53c6-aa55-b269aa34af17'::uuid,
  '7273cada-d737-5c62-b466-80a93ce75152'::uuid,
  '223e8288-5d44-542e-b220-e739635a31f1'::uuid,
  '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4a1686bd-9cfc-5d60-8200-5b8d711e1ed3'::uuid,
  '7273cada-d737-5c62-b466-80a93ce75152'::uuid,
  '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid,
  '223e8288-5d44-542e-b220-e739635a31f1'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('78df4660-caf6-5b46-a5a1-dbc3d0bb945e'::uuid, '223e8288-5d44-542e-b220-e739635a31f1'::uuid, '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00f004d9-f307-5578-b0c2-24739415f56a'::uuid, '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid, '223e8288-5d44-542e-b220-e739635a31f1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('292769ea-413b-5e03-8c8a-31d2cbf930d3'::uuid, '223e8288-5d44-542e-b220-e739635a31f1'::uuid, '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1bcd67f7-5120-5ac0-a5a4-5a9ba117b11f'::uuid, 'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid, 'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('81cca323-506f-542d-b25c-127ac6708258'::uuid, 'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid, 'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('59690c3e-3022-5457-b29f-2f0e65619b0d'::uuid, 'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid, 'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '105e14f2-a2fb-5e26-a7c6-b4ae1969d283'::uuid,
  '59690c3e-3022-5457-b29f-2f0e65619b0d'::uuid,
  'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid,
  'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ffe1360d-7a2c-51e2-b0be-25d24cf88d7a'::uuid,
  '59690c3e-3022-5457-b29f-2f0e65619b0d'::uuid,
  'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid,
  'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0b3333ab-3432-5b7a-8959-db1bdf259dd2'::uuid, 'b1528f83-05e9-5237-9070-2e49e81250b0'::uuid, '844bc8c1-568a-5c29-a8ee-695abfcc8b62'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89a9e877-84e5-5b4b-8f78-3f52dc431d9a'::uuid, '844bc8c1-568a-5c29-a8ee-695abfcc8b62'::uuid, 'b1528f83-05e9-5237-9070-2e49e81250b0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('83ac3f67-eb8d-5d2e-82b0-429aebb588f5'::uuid, '844bc8c1-568a-5c29-a8ee-695abfcc8b62'::uuid, 'b1528f83-05e9-5237-9070-2e49e81250b0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fd393215-1c57-5fc6-892f-78803120cd1c'::uuid, '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid, 'd03250de-48b2-59ba-9295-19028affe265'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('002604a2-870c-5203-9d12-8f67d23ce3ec'::uuid, 'd03250de-48b2-59ba-9295-19028affe265'::uuid, '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7edf8493-5d09-5d00-adf2-1bbe1aa6778f'::uuid, '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid, 'd03250de-48b2-59ba-9295-19028affe265'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1545cab9-e4ca-5c12-80dc-2d1bb67e9e63'::uuid,
  '7edf8493-5d09-5d00-adf2-1bbe1aa6778f'::uuid,
  '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid,
  'd03250de-48b2-59ba-9295-19028affe265'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;