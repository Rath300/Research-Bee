INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd21d8837-6faf-5388-98bc-c310a06412a0'::uuid,
  '08f130ef-ce70-52d8-b6fc-eb4ea293afa5'::uuid,
  '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid,
  '05054208-013e-5ac0-8db9-7b769e41a544'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '707679cc-52b1-5da2-8394-381994c71761'::uuid,
  '08f130ef-ce70-52d8-b6fc-eb4ea293afa5'::uuid,
  '05054208-013e-5ac0-8db9-7b769e41a544'::uuid,
  '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1e94a8a3-d808-5240-a57f-7c8eca8bbc5a'::uuid, '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid, 'a169404e-faf7-5071-b788-07d72b750c2c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cc2f953a-afab-5b1e-b20d-8353841de08f'::uuid, 'a169404e-faf7-5071-b788-07d72b750c2c'::uuid, '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('60125326-a02a-52e6-84d9-d1b571c84759'::uuid, '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid, 'a169404e-faf7-5071-b788-07d72b750c2c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2d6abb8d-55ab-55c2-84a7-202357371fea'::uuid, '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid, '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6a437b64-fbf4-527b-bd8b-1fd43fa83eb3'::uuid, '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid, '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c1801519-9fdf-53b9-a081-14511fb95fda'::uuid, '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid, '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '48970290-1893-545a-941e-f1d3f8dda982'::uuid,
  'c1801519-9fdf-53b9-a081-14511fb95fda'::uuid,
  '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid,
  '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '95faa365-f835-5baa-9dfe-39d0ab77bc04'::uuid,
  'c1801519-9fdf-53b9-a081-14511fb95fda'::uuid,
  '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid,
  '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e2be15f-40eb-534c-9b72-f9704eee6164'::uuid, 'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid, '8b2f1251-9e04-5a0e-a4a3-105bfab4a2f5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2fe20c58-9a0d-52b0-a449-4ec437b66219'::uuid, '8b2f1251-9e04-5a0e-a4a3-105bfab4a2f5'::uuid, 'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dbb355e7-1e28-584c-9140-311e5cb2f5ac'::uuid, '8b2f1251-9e04-5a0e-a4a3-105bfab4a2f5'::uuid, 'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b1ffbacb-5627-5b97-9ced-c99342830cb5'::uuid, '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid, '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('440593ee-ca97-5c50-a496-b91d4ee09533'::uuid, '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid, '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b6d05e73-2b76-57bd-a2d1-86e246f874a9'::uuid, '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid, '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9f1561b7-e13f-5bd8-a5df-2e64da4349c0'::uuid,
  'b6d05e73-2b76-57bd-a2d1-86e246f874a9'::uuid,
  '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid,
  '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '289e37c7-af18-5518-b763-a882ba00d6bc'::uuid,
  'b6d05e73-2b76-57bd-a2d1-86e246f874a9'::uuid,
  '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid,
  '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1d8f5b18-9ca8-5989-9e9a-be01f2a4286a'::uuid, '095821f3-70c4-5469-a8ee-b42176e19675'::uuid, '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e3e887b6-d2bb-5a9c-b787-123631f36ad8'::uuid, '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid, '095821f3-70c4-5469-a8ee-b42176e19675'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('85c8f080-2eef-5733-ba82-c7f0224ec95c'::uuid, '095821f3-70c4-5469-a8ee-b42176e19675'::uuid, '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a7515329-1444-5b4b-886e-f822d5afed8c'::uuid, '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid, 'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e9378bd0-0400-52d8-ae93-9104ca3525b8'::uuid, 'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid, '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('93b5b0c6-2f17-5170-8f38-c0a7e1f44468'::uuid, '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid, 'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '77cb1609-3578-5d17-98d4-451cdd963578'::uuid,
  '93b5b0c6-2f17-5170-8f38-c0a7e1f44468'::uuid,
  '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid,
  'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd9d26866-47a6-5b98-8812-a4254df556d9'::uuid,
  '93b5b0c6-2f17-5170-8f38-c0a7e1f44468'::uuid,
  'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid,
  '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e57db287-772e-5835-a4cb-be351569b5f9'::uuid, '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid, '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72064ed9-7f1e-50d7-868d-d2ab59d927f5'::uuid, '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid, '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4292767b-0572-58d1-8dbd-4ef21ba5320c'::uuid, '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid, '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f5e7ffa6-3bd0-5865-9365-8726309cf563'::uuid, '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid, 'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('553561c6-625f-5266-84e0-9599c92d3541'::uuid, 'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid, '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dcaaf8e6-7e97-516b-9852-aff5077dd64e'::uuid, '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid, 'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ad5c5919-142d-5353-ada3-e9b7cacc8a39'::uuid,
  'dcaaf8e6-7e97-516b-9852-aff5077dd64e'::uuid,
  '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid,
  'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '366a890a-f646-5da9-8fcc-32e26719d6ad'::uuid,
  'dcaaf8e6-7e97-516b-9852-aff5077dd64e'::uuid,
  'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid,
  '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('11f7d0e0-7668-5078-bf8f-eb52df3e0b51'::uuid, '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid, 'bedb8fd5-db92-5834-8620-0fbed814321d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('facc75d7-ece8-548d-88dc-d350b6c361e2'::uuid, 'bedb8fd5-db92-5834-8620-0fbed814321d'::uuid, '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b41fe543-1421-52a9-9561-60f827d45e5a'::uuid, '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid, 'bedb8fd5-db92-5834-8620-0fbed814321d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('638cd5ff-eeba-5743-afd5-3ed41d75ef3d'::uuid, '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid, 'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('428ec501-d82a-5bf9-aedf-94eb924bb2ba'::uuid, 'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid, '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3f969c53-3570-55b6-8660-5e54fa2b822c'::uuid, '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid, 'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;