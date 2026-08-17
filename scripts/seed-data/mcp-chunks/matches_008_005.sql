INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c3f59ee4-938a-5382-92cc-4f5cfcd5c592'::uuid, 'c36122a7-4e23-5387-9c04-70087a1dee13'::uuid, 'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc44d747-da04-502e-96df-f405e8d933a4'::uuid, 'c36122a7-4e23-5387-9c04-70087a1dee13'::uuid, 'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '08f5b742-1e8d-544b-9f6c-d66311b361b7'::uuid,
  'dc44d747-da04-502e-96df-f405e8d933a4'::uuid,
  'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid,
  'c36122a7-4e23-5387-9c04-70087a1dee13'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '523d5569-4105-5813-95e1-36f946f2e8d2'::uuid,
  'dc44d747-da04-502e-96df-f405e8d933a4'::uuid,
  'c36122a7-4e23-5387-9c04-70087a1dee13'::uuid,
  'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a947c6ab-1ff4-5cb7-8608-1f1904d3b3b6'::uuid, 'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid, '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ec38292a-4baf-5b11-a576-4576fbd5da73'::uuid, '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid, 'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('306954ca-9e1e-593d-9cc5-d6555fb50930'::uuid, '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid, 'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d201b1f5-bc08-5727-9482-9b8a3faa8ab6'::uuid, '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid, 'babd2038-73bf-59da-ae80-09745173f792'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('523b7d31-f24f-5791-a58d-99c1ffd97b45'::uuid, 'babd2038-73bf-59da-ae80-09745173f792'::uuid, '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c0b55f5b-8f32-5129-9653-feb87d8af024'::uuid, '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid, 'babd2038-73bf-59da-ae80-09745173f792'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '845deb08-739c-59f5-bf9b-91c702fd51b3'::uuid,
  'c0b55f5b-8f32-5129-9653-feb87d8af024'::uuid,
  '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid,
  'babd2038-73bf-59da-ae80-09745173f792'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7799a289-011e-5004-b4f4-a43ac5f0e55b'::uuid,
  'c0b55f5b-8f32-5129-9653-feb87d8af024'::uuid,
  'babd2038-73bf-59da-ae80-09745173f792'::uuid,
  '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4a7eeef8-3af4-54c2-b97d-06254833b11a'::uuid, '9faafd0b-f2db-5a81-91bf-81528de61c8e'::uuid, 'ac5f51b9-619a-5ecc-8be0-95f17fbf70fb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1e477095-5776-5081-958d-0e7f71f74c5e'::uuid, 'ac5f51b9-619a-5ecc-8be0-95f17fbf70fb'::uuid, '9faafd0b-f2db-5a81-91bf-81528de61c8e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b24210d2-4a39-5552-b4fc-167182b13c55'::uuid, '9faafd0b-f2db-5a81-91bf-81528de61c8e'::uuid, 'ac5f51b9-619a-5ecc-8be0-95f17fbf70fb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bbb8e9f0-6e8b-59e7-bf00-5e47a8f0a7b3'::uuid, '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89cd53b5-2a1d-5a9c-b840-f533e2328e26'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8d6fbaea-34b2-53e2-8346-50e43a7c216a'::uuid, '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3225422d-f718-5bf5-89c8-3be453c1193c'::uuid,
  '8d6fbaea-34b2-53e2-8346-50e43a7c216a'::uuid,
  '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid,
  'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c8ca6468-f214-5293-b9c0-228f541799c2'::uuid,
  '8d6fbaea-34b2-53e2-8346-50e43a7c216a'::uuid,
  'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid,
  '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b958bbf7-f7d8-50c5-b5b2-79f4f4c314c4'::uuid, '71f19248-9b47-5e00-bc96-ea56d2f0fa29'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e8414d92-78fd-5cb2-92da-28eb0482b13b'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, '71f19248-9b47-5e00-bc96-ea56d2f0fa29'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('26982c46-787c-5a9a-a1aa-fb4344090594'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, '71f19248-9b47-5e00-bc96-ea56d2f0fa29'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e0421a1d-8e53-5ec5-8ea3-7bfeab3ac08e'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8eb7c6a7-bceb-5ab9-808e-71c9573b8f8f'::uuid, '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('98d070fe-dd64-599a-bef7-e64aa73d77d0'::uuid, '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5b076b7c-d66e-56bc-aed6-44bf3ecd9a66'::uuid,
  '98d070fe-dd64-599a-bef7-e64aa73d77d0'::uuid,
  '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid,
  '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '78c897c8-4b5a-5a10-84d3-f866147d7186'::uuid,
  '98d070fe-dd64-599a-bef7-e64aa73d77d0'::uuid,
  '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid,
  '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0d0bdf25-5cad-5b08-8abd-5c39c97d78ee'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae4777fd-70b6-514f-8f59-1d1b9ff2be6e'::uuid, '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('89c6dc13-10c2-5f49-8a20-11e0b83888e1'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fb05c942-b4bc-5a94-a292-1febd2891952'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('05382ba1-ca3f-5da6-a275-19cfeb3d4f46'::uuid, '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ca320ef4-95d0-581a-a965-0c2986e47b54'::uuid, '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a83cd54c-930d-5b58-b7c3-742dbbbd8f55'::uuid,
  'ca320ef4-95d0-581a-a965-0c2986e47b54'::uuid,
  'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid,
  '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '676a5d34-3703-557e-b137-c647a818a2b9'::uuid,
  'ca320ef4-95d0-581a-a965-0c2986e47b54'::uuid,
  '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid,
  'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a324bb2e-bf74-5ec1-8fae-07c40e4a300b'::uuid, '6d797a78-3704-5608-8637-77e373f046fc'::uuid, 'e8959cb7-aa69-5b68-afde-e4bb16d5a608'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('64e6f06a-e82c-58bd-844e-e3e29d991e46'::uuid, 'e8959cb7-aa69-5b68-afde-e4bb16d5a608'::uuid, '6d797a78-3704-5608-8637-77e373f046fc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fbf651bc-7096-5929-bd2b-256c7660363d'::uuid, '6d797a78-3704-5608-8637-77e373f046fc'::uuid, 'e8959cb7-aa69-5b68-afde-e4bb16d5a608'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('43ef7e8e-f1c5-5a7c-9ed0-5b216e829c76'::uuid, '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;