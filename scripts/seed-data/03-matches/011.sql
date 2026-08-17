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

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5e7ca9b3-c59b-5451-8985-522a06409e30'::uuid,
  '3f969c53-3570-55b6-8660-5e54fa2b822c'::uuid,
  '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid,
  'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cc65615b-4ad9-57a7-9a94-000357de0655'::uuid,
  '3f969c53-3570-55b6-8660-5e54fa2b822c'::uuid,
  'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid,
  '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bd80431c-5567-588e-a4f2-96457ad16dd8'::uuid, '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f5987e67-9542-5bab-8c73-23dfd03e4695'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cee676eb-94d4-569f-8541-ea53f638f9cb'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3aeb8ed1-981e-50a4-a598-aac0991cd00c'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9b88411-29a1-57b3-9e67-e5d85650b978'::uuid, '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bc0fe72c-0786-5ad1-b564-8114fd86ad95'::uuid, '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'af58675e-9e26-56e3-a7a6-d309f0630644'::uuid,
  'bc0fe72c-0786-5ad1-b564-8114fd86ad95'::uuid,
  'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid,
  '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f19819c5-16f3-5a7a-ab88-edb875af401b'::uuid,
  'bc0fe72c-0786-5ad1-b564-8114fd86ad95'::uuid,
  '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid,
  'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('599896ad-1e7d-52c1-bd40-6f3d3859741d'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58476a3d-537a-5607-90c0-786464fc2ff3'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ae84af88-b596-5caf-98f6-c348557d734e'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a13dafb9-23de-5dc3-aafb-a00ccab3bb64'::uuid, '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid, '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('73c110e0-4a7e-59dc-a6d8-0276fccf13e5'::uuid, '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid, '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5020bc31-6f04-54f8-bb1d-286c35024dec'::uuid, '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid, '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd4fef9d2-958f-5737-914a-ada0339cbd18'::uuid,
  '5020bc31-6f04-54f8-bb1d-286c35024dec'::uuid,
  '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid,
  '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4e78f797-1324-5a0e-904d-fac9c17b9b6f'::uuid,
  '5020bc31-6f04-54f8-bb1d-286c35024dec'::uuid,
  '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid,
  '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e5aafbb-662b-5078-b9ca-1b3f409912e5'::uuid, '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid, 'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f64705cd-bd26-5b47-8496-205ca9e0ac1a'::uuid, 'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid, '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8872d861-a37f-5e64-bde7-f1f947845e62'::uuid, '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid, 'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('46f11852-872e-5dac-aab1-6747986b9185'::uuid, '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid, '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5160e6ef-0b07-52e0-92e0-ac4bd09e1ec0'::uuid, '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid, '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('74ef4b96-d7c1-5902-8933-f9c1b43ba645'::uuid, '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid, '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dc337e20-4f9a-5494-864a-4a1f63c2f628'::uuid,
  '74ef4b96-d7c1-5902-8933-f9c1b43ba645'::uuid,
  '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid,
  '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2d19a744-f3ee-53da-8231-765155b82eb2'::uuid,
  '74ef4b96-d7c1-5902-8933-f9c1b43ba645'::uuid,
  '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid,
  '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d35ac5b0-ab79-5a5a-9d86-14099e6ba20b'::uuid, '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid, '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('487bb1ab-d045-50df-bfe1-f0d16c0944c8'::uuid, '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid, '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('45279999-57a9-5fe3-9425-1f8066fb0eff'::uuid, '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid, '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5240cb6c-5105-56bb-bc9a-a5128d3dfd37'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, '5a4c8839-4851-5d6e-a7a4-9aa7d280b2b2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a92d48f0-7482-52d7-a0f5-9ac79750b9e7'::uuid, '5a4c8839-4851-5d6e-a7a4-9aa7d280b2b2'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('86338c7b-e2e4-5874-9daf-548673d82832'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, '5a4c8839-4851-5d6e-a7a4-9aa7d280b2b2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8ca8d6e3-b862-5f82-a19b-ff8a0dcf4246'::uuid,
  '86338c7b-e2e4-5874-9daf-548673d82832'::uuid,
  '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid,
  '5a4c8839-4851-5d6e-a7a4-9aa7d280b2b2'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0d601673-235e-5bcd-9918-cd7bf16692b9'::uuid,
  '86338c7b-e2e4-5874-9daf-548673d82832'::uuid,
  '5a4c8839-4851-5d6e-a7a4-9aa7d280b2b2'::uuid,
  '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9e7a4105-8f12-5cd4-9d54-d7dc5f75af9d'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f19a4899-ad08-526c-9f58-8ed042eff743'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('67e17153-10c4-56b9-b243-56c1512d7ac6'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('da9108ef-d58d-572e-96f1-775d22e746f2'::uuid, 'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid, '3885d68d-f126-5f98-897e-f4679395d859'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7ad10a25-95e5-511a-8b8a-dc26f372b304'::uuid, '3885d68d-f126-5f98-897e-f4679395d859'::uuid, 'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('472d404d-72bc-5e32-b676-f129856a3277'::uuid, '3885d68d-f126-5f98-897e-f4679395d859'::uuid, 'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fa44ced6-f785-5345-8f72-9e0e0a90bc09'::uuid,
  '472d404d-72bc-5e32-b676-f129856a3277'::uuid,
  'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid,
  '3885d68d-f126-5f98-897e-f4679395d859'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '59762ce4-cdc5-5cb9-baac-6856a7e156cc'::uuid,
  '472d404d-72bc-5e32-b676-f129856a3277'::uuid,
  '3885d68d-f126-5f98-897e-f4679395d859'::uuid,
  'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8b80be17-c9b3-58cd-8ac5-8afd4ec6fda8'::uuid, 'a5eb7d26-8083-5569-82c4-2cbb0f496de7'::uuid, 'cc231435-d9ae-5d15-affd-9d705a76b1a1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('be028baf-1d57-5327-9720-41ea9c125dd7'::uuid, 'cc231435-d9ae-5d15-affd-9d705a76b1a1'::uuid, 'a5eb7d26-8083-5569-82c4-2cbb0f496de7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('841d0c55-cd40-5633-bdfd-ed1197954643'::uuid, 'a5eb7d26-8083-5569-82c4-2cbb0f496de7'::uuid, 'cc231435-d9ae-5d15-affd-9d705a76b1a1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bb337f22-6977-5dd7-b762-68fe8e83b0cd'::uuid, 'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid, '56d23229-5074-553f-90e4-26d72cf20897'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2b722c1a-3fd9-5423-a997-ee1065a6789f'::uuid, '56d23229-5074-553f-90e4-26d72cf20897'::uuid, 'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ada21865-c08e-5e88-9d78-88e0e154f42c'::uuid, '56d23229-5074-553f-90e4-26d72cf20897'::uuid, 'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7c6687f5-a7b8-5490-a89d-c6f0ae9bc210'::uuid,
  'ada21865-c08e-5e88-9d78-88e0e154f42c'::uuid,
  'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid,
  '56d23229-5074-553f-90e4-26d72cf20897'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e1fb0327-d428-50d7-940e-ef0192850b40'::uuid,
  'ada21865-c08e-5e88-9d78-88e0e154f42c'::uuid,
  '56d23229-5074-553f-90e4-26d72cf20897'::uuid,
  'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('50a3a492-d381-5422-8513-26ed8c738fce'::uuid, '12fb840a-85f9-51d1-a098-9f48ae2a57b8'::uuid, '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cebb35aa-342d-5c90-9f16-a932f0a8a695'::uuid, '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid, '12fb840a-85f9-51d1-a098-9f48ae2a57b8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('33a07aeb-d8ee-5f8c-93c3-abd0315a7ddc'::uuid, '12fb840a-85f9-51d1-a098-9f48ae2a57b8'::uuid, '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5bb157f9-39ef-5248-ac83-092594a10c09'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, 'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('de13d00a-5aac-5156-b847-2c9275782323'::uuid, 'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('90bd6f6b-32ae-58c3-9a8f-51842627994e'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, 'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fd417c90-4b99-5f8c-b4eb-2cac2994be6a'::uuid,
  '90bd6f6b-32ae-58c3-9a8f-51842627994e'::uuid,
  '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid,
  'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fc2cedc3-4aed-51d9-b10e-d47586c838f6'::uuid,
  '90bd6f6b-32ae-58c3-9a8f-51842627994e'::uuid,
  'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid,
  '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6b6a0c25-3f5b-5b1d-be42-4b6ba4ec1857'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('455db8b3-d623-5697-a564-9caa283ab4a8'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('28fe04eb-c5e4-520d-b9d6-a41bfdce678c'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bc5f662f-9ccb-532e-aef5-78410fc8ee91'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ed1b5a8-e304-5466-af42-346230b0056f'::uuid, '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('82fe8175-efde-5179-8464-4fcca4be962b'::uuid, '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2b85edda-c721-539e-904c-9afad36ffbc2'::uuid,
  '82fe8175-efde-5179-8464-4fcca4be962b'::uuid,
  'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid,
  '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '469e0fa2-631c-5024-b238-cea661d084bd'::uuid,
  '82fe8175-efde-5179-8464-4fcca4be962b'::uuid,
  '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid,
  'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6eb00755-abec-5904-8a7e-871e379bbfef'::uuid, 'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid, 'b3f204c0-b5ce-55c6-be97-067e8c0334b6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('614819f1-d196-5827-9983-a27bcbf03c81'::uuid, 'b3f204c0-b5ce-55c6-be97-067e8c0334b6'::uuid, 'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2a486fbc-6afb-51d0-80e6-0e157219d0fb'::uuid, 'b3f204c0-b5ce-55c6-be97-067e8c0334b6'::uuid, 'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1306ebf2-7f1c-584f-b630-935ccd599399'::uuid, 'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('66016097-b34c-5103-85f2-cd9985b5fad6'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, 'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ba4b26ab-0071-515c-a4a0-a2178f409be8'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, 'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '81a63f14-5cdb-5b81-a3d0-282578a6c999'::uuid,
  'ba4b26ab-0071-515c-a4a0-a2178f409be8'::uuid,
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f4acac23-ea1e-5494-9201-51e06fa4444c'::uuid,
  'ba4b26ab-0071-515c-a4a0-a2178f409be8'::uuid,
  '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid,
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('add3a5cb-e218-5088-9a15-a7f957db2e42'::uuid, '717e2f46-9620-5600-b8e0-5187f52e05ee'::uuid, '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f9ca990d-929e-5a66-ba4d-2bd154b62363'::uuid, '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid, '717e2f46-9620-5600-b8e0-5187f52e05ee'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('63dd7c7e-675d-5b6d-b597-a99119035983'::uuid, '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid, '717e2f46-9620-5600-b8e0-5187f52e05ee'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1469885a-0ff7-55b5-a087-cc9042ae583f'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, 'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ba86014e-e21f-5dcb-aff6-3ba0a1624d70'::uuid, 'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e477b7fc-6d77-55a8-b247-07fecf61877c'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, 'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'be713be7-20d9-5540-944b-1697411768e2'::uuid,
  'e477b7fc-6d77-55a8-b247-07fecf61877c'::uuid,
  '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid,
  'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3ff8dc97-269c-5b7e-9f43-e03399e4e456'::uuid,
  'e477b7fc-6d77-55a8-b247-07fecf61877c'::uuid,
  'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid,
  '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6768735d-834a-5a47-93ec-5e3ee8246ae3'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e733396-a31c-53aa-a8c2-678bd47b9034'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5ae67380-b78a-50b5-946e-9b602b544ea6'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b9bd2ef8-3378-5f37-966b-ebb86519cb25'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9536d8ab-61fc-5d37-8477-3e18a2623159'::uuid, '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cedea074-35ae-5c78-aa33-d47401cc39f2'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0eab5feb-db21-5224-84e5-67d277ad2ecf'::uuid,
  'cedea074-35ae-5c78-aa33-d47401cc39f2'::uuid,
  '0383e3ef-8b66-5f66-8353-206517213c00'::uuid,
  '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '356f04ba-dacf-540c-be4a-5c0809fba168'::uuid,
  'cedea074-35ae-5c78-aa33-d47401cc39f2'::uuid,
  '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid,
  '0383e3ef-8b66-5f66-8353-206517213c00'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8e22e945-cda7-5b03-b4f2-6113cf07ee79'::uuid, 'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid, '4c0b16d5-ad7b-5990-b2bd-acbaf07eb752'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e11f3ec3-3c94-50d1-aaf1-96640b2f10cd'::uuid, '4c0b16d5-ad7b-5990-b2bd-acbaf07eb752'::uuid, 'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('481acae7-2ac5-5e22-b919-332cbef42829'::uuid, '4c0b16d5-ad7b-5990-b2bd-acbaf07eb752'::uuid, 'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('442985db-1a02-5698-93c0-49b220093159'::uuid, '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a4d533c2-7b40-5abf-ad2c-66b2b473e622'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('26fc24c0-2e71-5d3c-9ac2-fe32829e3343'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '31e02898-b575-5423-9d1e-07950c7f9a42'::uuid,
  '26fc24c0-2e71-5d3c-9ac2-fe32829e3343'::uuid,
  '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid,
  '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '053e5565-47ce-5416-9556-181e6cbea349'::uuid,
  '26fc24c0-2e71-5d3c-9ac2-fe32829e3343'::uuid,
  '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid,
  '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e41b0250-9d0e-5788-aaf9-6ca6a88d44de'::uuid, '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid, 'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dc79e513-9aa0-5ca5-97b2-9de03e8860b6'::uuid, 'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid, '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8ab2d6b3-58bd-50a5-900c-4e25fada4dbf'::uuid, '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid, 'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1ab06664-41b6-5336-a5bb-52ac4d424135'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5019987f-b086-5de1-b175-871315863739'::uuid, '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bdb95883-1845-5aa2-b1f3-bafd638fda6d'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '96089ec9-255a-5a6a-bb2a-e400de332822'::uuid,
  'bdb95883-1845-5aa2-b1f3-bafd638fda6d'::uuid,
  '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid,
  '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2d5e0650-663d-5fcb-a653-a91cb00583f9'::uuid,
  'bdb95883-1845-5aa2-b1f3-bafd638fda6d'::uuid,
  '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid,
  '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('207f3c42-db72-5a83-ac28-f41406db29b8'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('939f3283-37f0-54cc-b115-b1ad22fcba1e'::uuid, '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c5186e72-b16f-5658-bf31-93e39c799946'::uuid, '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('81ee6f8e-3e8b-5a9e-a23c-3239ce6e0481'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('54f5e3aa-1c0e-5946-b48c-79552a3bdbd1'::uuid, '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8ebba3d1-f31c-583a-8b24-ddde74e7c1fa'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '23e5d2bd-32ca-56e3-a2e6-9ab46b4322e9'::uuid,
  '8ebba3d1-f31c-583a-8b24-ddde74e7c1fa'::uuid,
  '0e62eacf-462f-5d52-9989-07f38d304832'::uuid,
  '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c6931311-c1e4-5d6b-9959-b93b11f99e54'::uuid,
  '8ebba3d1-f31c-583a-8b24-ddde74e7c1fa'::uuid,
  '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid,
  '0e62eacf-462f-5d52-9989-07f38d304832'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e00e131-df8e-5813-bb02-efaf1efdc0c3'::uuid, 'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid, 'b0180410-8061-5081-8509-d15823d3c0a5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('396ba56d-821b-5126-bea7-af9c954082a7'::uuid, 'b0180410-8061-5081-8509-d15823d3c0a5'::uuid, 'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('af2f35c9-63b2-518d-8a5e-b836b031a42d'::uuid, 'b0180410-8061-5081-8509-d15823d3c0a5'::uuid, 'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a4421007-7b08-5a4f-a011-c85fc1bf8f96'::uuid, '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e1bce4be-d1a5-5a45-89ea-87fd4661e7e2'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b4927b30-b3fb-5a22-80d9-bde3cf3b3448'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c47e2c9c-2d10-59f3-91d3-3a943469686c'::uuid,
  'b4927b30-b3fb-5a22-80d9-bde3cf3b3448'::uuid,
  '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid,
  '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7100e172-0eec-53df-b703-b70b27f5e320'::uuid,
  'b4927b30-b3fb-5a22-80d9-bde3cf3b3448'::uuid,
  '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid,
  '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89ac3ab1-edbd-5b9b-9198-2dd0cfc551e3'::uuid, 'e4161d15-a489-5141-bd1c-b34b92ebab30'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b01f7f53-50b3-512c-bd5c-46bce6ecbd11'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, 'e4161d15-a489-5141-bd1c-b34b92ebab30'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fda3eff1-a813-50a6-a098-0b6008a7f81d'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, 'e4161d15-a489-5141-bd1c-b34b92ebab30'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2abcc3ca-cc07-5ea1-84ee-f5e7dc316753'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, '57922f55-9cea-510b-8329-299c51dd6d47'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aa20380d-930c-5031-b475-eedb66f8d59f'::uuid, '57922f55-9cea-510b-8329-299c51dd6d47'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a87dd180-9d09-5605-89ca-4de4f23e3935'::uuid, '57922f55-9cea-510b-8329-299c51dd6d47'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '34d38e86-bc10-58ea-8474-57eea9fcc2fc'::uuid,
  'a87dd180-9d09-5605-89ca-4de4f23e3935'::uuid,
  '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid,
  '57922f55-9cea-510b-8329-299c51dd6d47'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0c590370-f5e3-5119-bbda-b7e0f9cafe02'::uuid,
  'a87dd180-9d09-5605-89ca-4de4f23e3935'::uuid,
  '57922f55-9cea-510b-8329-299c51dd6d47'::uuid,
  '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72e2e308-cfd3-53d2-93de-5a0f9d7d8b92'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d22390f0-4093-550e-ae4b-e3b859cfefae'::uuid, '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('792bd387-d07b-5090-9d40-532a2e8afe4c'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fbbdedfa-1dbe-530c-bb6d-2db89dee3a60'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, '778bb832-28a2-5667-a854-30ded635eb52'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2e4d6bc1-1da7-5c4f-94f1-db076cbd0f49'::uuid, '778bb832-28a2-5667-a854-30ded635eb52'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b28a5112-1dac-563b-a81c-d0006514d941'::uuid, '778bb832-28a2-5667-a854-30ded635eb52'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7f4c4722-62cc-5804-9bd4-1e1c967bc661'::uuid,
  'b28a5112-1dac-563b-a81c-d0006514d941'::uuid,
  'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid,
  '778bb832-28a2-5667-a854-30ded635eb52'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '48e1a56c-4008-551c-a35b-89c4f4469219'::uuid,
  'b28a5112-1dac-563b-a81c-d0006514d941'::uuid,
  '778bb832-28a2-5667-a854-30ded635eb52'::uuid,
  'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('101e6106-5cdf-5768-ad80-99f9446ed937'::uuid, '05054208-013e-5ac0-8db9-7b769e41a544'::uuid, 'f5c6f747-5297-5e24-87be-fd7df457b835'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4f333cda-5e7c-5151-95bb-94b6956dd608'::uuid, 'f5c6f747-5297-5e24-87be-fd7df457b835'::uuid, '05054208-013e-5ac0-8db9-7b769e41a544'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e1f8585f-4e6c-5b87-8c77-dee34a7f190b'::uuid, '05054208-013e-5ac0-8db9-7b769e41a544'::uuid, 'f5c6f747-5297-5e24-87be-fd7df457b835'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5af3c872-92bc-51bc-83ed-cc26ea91f8f2'::uuid, '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid, '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('35f93934-e0ef-5e8b-878e-1b4c4ef47811'::uuid, '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid, '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('08b9900e-7f49-5295-aa28-bc277ace75d3'::uuid, '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid, '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'aa1dc382-c10e-5c5f-9520-bc02aa9cfd1f'::uuid,
  '08b9900e-7f49-5295-aa28-bc277ace75d3'::uuid,
  '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid,
  '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fdf50143-c68a-53b6-8945-0b49458f6e23'::uuid,
  '08b9900e-7f49-5295-aa28-bc277ace75d3'::uuid,
  '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid,
  '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('791a5b45-8d81-5694-84e6-fa650dc7cb03'::uuid, '8b2f1251-9e04-5a0e-a4a3-105bfab4a2f5'::uuid, '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0f51c58e-82c1-5260-bdd3-75bf8ecff4f4'::uuid, '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid, '8b2f1251-9e04-5a0e-a4a3-105bfab4a2f5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cf72efb6-64e9-514b-b255-ab4841f3285a'::uuid, '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid, '8b2f1251-9e04-5a0e-a4a3-105bfab4a2f5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3004497b-b78b-5869-826f-db5a79e7b8ef'::uuid, '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid, 'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f035ffb0-97b3-506f-9f01-2963249a6175'::uuid, 'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid, '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fe7d6ee9-4c55-59ab-8b5d-73872efcbfda'::uuid, '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid, 'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '687753f8-d797-52db-b698-2ec27a37ab7c'::uuid,
  'fe7d6ee9-4c55-59ab-8b5d-73872efcbfda'::uuid,
  '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid,
  'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1ff7f556-2dd6-585b-bac5-a2f963aafc79'::uuid,
  'fe7d6ee9-4c55-59ab-8b5d-73872efcbfda'::uuid,
  'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid,
  '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('53923020-c2fd-5c63-8964-b278ee4a4c06'::uuid, '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a668bb5f-5180-5ca7-ba82-020b956629b8'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c1c24c1d-c89f-5a11-ab13-2625dae4eaaf'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('35748d20-173e-5ab9-920b-55dd1bb0992e'::uuid, '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid, 'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2494fd86-5c27-5e37-bbcb-29dcec22beb2'::uuid, 'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid, '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('27d55e23-d6d3-5b84-9536-c7b472faa83e'::uuid, '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid, 'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f95f1391-2b6e-506c-92b3-c86e819958e0'::uuid,
  '27d55e23-d6d3-5b84-9536-c7b472faa83e'::uuid,
  '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid,
  'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fe4a2ef1-fb76-5063-bd48-35cfa3bbe7e1'::uuid,
  '27d55e23-d6d3-5b84-9536-c7b472faa83e'::uuid,
  'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid,
  '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d5fbebc9-d67f-5564-a41f-44b8b489dac4'::uuid, 'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid, '49fbee97-9df9-5705-9855-5aac175ded93'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c1e45f31-138e-5c98-a9f0-012bfca9887f'::uuid, '49fbee97-9df9-5705-9855-5aac175ded93'::uuid, 'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1a64c7d0-9f31-52ad-8016-bc15fe12deac'::uuid, '49fbee97-9df9-5705-9855-5aac175ded93'::uuid, 'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('48f8634e-ba3b-5939-84ab-ca2451af3928'::uuid, 'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid, 'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dd7d0ab2-7102-5d42-bef3-0cdb4da57b1a'::uuid, 'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid, 'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cb30aaa1-690e-596f-a684-bbf62ece3860'::uuid, 'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid, 'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '20740a1b-cc28-5b1d-a129-1899a7ba32bf'::uuid,
  'cb30aaa1-690e-596f-a684-bbf62ece3860'::uuid,
  'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid,
  'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'be2e021b-13ef-5542-8422-35e620982cab'::uuid,
  'cb30aaa1-690e-596f-a684-bbf62ece3860'::uuid,
  'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid,
  'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e2a38e66-43bf-5c6b-b719-bd124f901a92'::uuid, 'bedb8fd5-db92-5834-8620-0fbed814321d'::uuid, '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('92048819-575d-5cf0-90b0-2bdd575f0715'::uuid, '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid, 'bedb8fd5-db92-5834-8620-0fbed814321d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c9f82ccf-18d5-53ca-944f-fd4d937ebef2'::uuid, '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid, 'bedb8fd5-db92-5834-8620-0fbed814321d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72678756-fb28-5cf9-b7cc-fae07200c483'::uuid, 'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid, 'd08b51e2-35ee-57f1-b9fe-38c281fde355'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b29c5825-768e-53d9-8254-8fc6f35956b1'::uuid, 'd08b51e2-35ee-57f1-b9fe-38c281fde355'::uuid, 'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dee5185b-335a-5cfa-b4ab-da662034166b'::uuid, 'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid, 'd08b51e2-35ee-57f1-b9fe-38c281fde355'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '76a6b2b0-f7fa-5442-a7ff-246668b2c523'::uuid,
  'dee5185b-335a-5cfa-b4ab-da662034166b'::uuid,
  'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid,
  'd08b51e2-35ee-57f1-b9fe-38c281fde355'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2166c7ea-c376-5afc-97b8-386b9626f53b'::uuid,
  'dee5185b-335a-5cfa-b4ab-da662034166b'::uuid,
  'd08b51e2-35ee-57f1-b9fe-38c281fde355'::uuid,
  'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1b48592b-2e93-5f03-9cb7-4767c7abc5f8'::uuid, 'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid, '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4509eb65-8088-5ba7-bac2-7988adcbfabc'::uuid, '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid, 'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b1e825d9-6c2e-54dd-8fdc-4997d080024b'::uuid, '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid, 'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3a1d533f-299c-560c-990c-b47080c54eda'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, 'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8be5d204-13dc-514f-997a-2e198f33b26c'::uuid, 'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3f72dbae-2642-55ac-af10-bc6102a224ae'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, 'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e8739a60-a5f2-53a9-9745-6a6c57a1b7ed'::uuid,
  '3f72dbae-2642-55ac-af10-bc6102a224ae'::uuid,
  '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid,
  'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '08996cac-6d63-5eb2-a883-c2aa6805f3da'::uuid,
  '3f72dbae-2642-55ac-af10-bc6102a224ae'::uuid,
  'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid,
  '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('670ac55e-d02e-5258-9cb2-105b12edf515'::uuid, '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid, '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cfb11567-a0f8-5a5c-8f32-ca1216947397'::uuid, '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid, '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('16445d29-af93-5313-b34e-b9b01bca9790'::uuid, '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid, '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('df3d06f4-ea4a-51d7-9b5f-0972ec35d01f'::uuid, '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9f3a10d2-01ba-5281-9f55-07db8ac25c65'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('25fad607-f0a2-55eb-8e4c-e8e227bd364b'::uuid, '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8e33e8bc-7c8b-5371-b37f-82e26e03ee02'::uuid,
  '25fad607-f0a2-55eb-8e4c-e8e227bd364b'::uuid,
  '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid,
  'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '12f7b1b7-a54c-58bc-86d3-f69518ab7d31'::uuid,
  '25fad607-f0a2-55eb-8e4c-e8e227bd364b'::uuid,
  'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid,
  '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b9cce87c-fd62-5627-a68c-2260fdfbac9c'::uuid, 'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('151dc57f-5627-55dc-b368-f8a5383fb5ae'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, 'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('64676764-7664-5fdf-9c20-cc4a39f82f93'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, 'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('faba79bd-2e92-5de2-8059-a3de9d0a4b13'::uuid, '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid, '72563df9-2262-5969-9688-d5cf69877f50'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5556ddb8-872f-573d-941b-7ff669d92e3a'::uuid, '72563df9-2262-5969-9688-d5cf69877f50'::uuid, '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('aa3f06b8-12bb-53b7-be45-574b5fa2de10'::uuid, '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid, '72563df9-2262-5969-9688-d5cf69877f50'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '935e13a0-0c7b-5d1a-b9e2-7de438887154'::uuid,
  'aa3f06b8-12bb-53b7-be45-574b5fa2de10'::uuid,
  '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid,
  '72563df9-2262-5969-9688-d5cf69877f50'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5501a290-f5dd-5734-8880-7edafb911cba'::uuid,
  'aa3f06b8-12bb-53b7-be45-574b5fa2de10'::uuid,
  '72563df9-2262-5969-9688-d5cf69877f50'::uuid,
  '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;
