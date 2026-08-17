INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('455e1a5f-9cbd-5475-a820-3f4b4469527f'::uuid, '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid, 'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('90b77530-e088-5248-bd8c-d5f4299e5992'::uuid, 'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid, '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fe3c3745-2cf6-5ed4-b652-77a6ce71b680'::uuid, '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid, 'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2ad90324-6dcf-560e-b56c-0e65f41de79b'::uuid, '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid, '6a4f619f-e444-588f-b820-a92527d80b68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cd437cec-65dd-5373-a301-f426af128530'::uuid, '6a4f619f-e444-588f-b820-a92527d80b68'::uuid, '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5b47f6aa-d158-556c-8d9c-bb5bbb01979c'::uuid, '6a4f619f-e444-588f-b820-a92527d80b68'::uuid, '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '91a83920-c9b7-5250-ad50-b952d749ed07'::uuid,
  '5b47f6aa-d158-556c-8d9c-bb5bbb01979c'::uuid,
  '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid,
  '6a4f619f-e444-588f-b820-a92527d80b68'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '151a693a-4ca2-5798-b859-911a800cc947'::uuid,
  '5b47f6aa-d158-556c-8d9c-bb5bbb01979c'::uuid,
  '6a4f619f-e444-588f-b820-a92527d80b68'::uuid,
  '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ef89e1cc-9d97-5021-9341-760a4bd3a817'::uuid, '5a4c8839-4851-5d6e-a7a4-9aa7d280b2b2'::uuid, '9cb755c4-0ef9-56cb-9ee7-02d3013edbe0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5d2ed5d3-0686-505d-9ae2-004ad75c0bbd'::uuid, '9cb755c4-0ef9-56cb-9ee7-02d3013edbe0'::uuid, '5a4c8839-4851-5d6e-a7a4-9aa7d280b2b2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('beec80f6-70ec-5fb8-aff1-86712fedbd4e'::uuid, '5a4c8839-4851-5d6e-a7a4-9aa7d280b2b2'::uuid, '9cb755c4-0ef9-56cb-9ee7-02d3013edbe0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3be47999-8f97-5008-a21e-2fb9535a0351'::uuid, '3885d68d-f126-5f98-897e-f4679395d859'::uuid, 'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aba8b8b1-36c9-5eee-a07b-d75aea3b5550'::uuid, 'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid, '3885d68d-f126-5f98-897e-f4679395d859'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('076f2bae-4412-548e-918f-4267d3729344'::uuid, '3885d68d-f126-5f98-897e-f4679395d859'::uuid, 'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '23dd0fbc-a52b-5157-b8c9-d4437a84cdf5'::uuid,
  '076f2bae-4412-548e-918f-4267d3729344'::uuid,
  '3885d68d-f126-5f98-897e-f4679395d859'::uuid,
  'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2982d605-3301-5e09-961e-845bb85eaf91'::uuid,
  '076f2bae-4412-548e-918f-4267d3729344'::uuid,
  'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid,
  '3885d68d-f126-5f98-897e-f4679395d859'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0414ace2-f86a-5d52-800d-4cdf9d00e8f9'::uuid, 'cc231435-d9ae-5d15-affd-9d705a76b1a1'::uuid, '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ab487bcf-1cff-5812-bc02-a0b19c35beae'::uuid, '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid, 'cc231435-d9ae-5d15-affd-9d705a76b1a1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('db71b8db-bfb5-58e2-b5db-b58e94806dea'::uuid, '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid, 'cc231435-d9ae-5d15-affd-9d705a76b1a1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d41c1212-3e07-559d-9bab-1a3e9a6d2fe2'::uuid, '56d23229-5074-553f-90e4-26d72cf20897'::uuid, 'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8e4d6dd3-12c4-54f2-bf40-11ddeaaf1f4a'::uuid, 'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid, '56d23229-5074-553f-90e4-26d72cf20897'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c3201664-a395-570c-a8e1-a62d85269b25'::uuid, '56d23229-5074-553f-90e4-26d72cf20897'::uuid, 'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dda56ee2-8b5a-5f15-ab7f-a00aafecc30b'::uuid,
  'c3201664-a395-570c-a8e1-a62d85269b25'::uuid,
  '56d23229-5074-553f-90e4-26d72cf20897'::uuid,
  'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5b0702bd-e3aa-5c90-8bf2-f91b45e2787f'::uuid,
  'c3201664-a395-570c-a8e1-a62d85269b25'::uuid,
  'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid,
  '56d23229-5074-553f-90e4-26d72cf20897'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('86fccdb5-5ea2-5342-9189-9eda738d8f76'::uuid, '56d23229-5074-553f-90e4-26d72cf20897'::uuid, 'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d5b5c1a3-810e-5f42-ac42-838973d53218'::uuid, 'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid, '56d23229-5074-553f-90e4-26d72cf20897'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fc75c5b2-5b1c-5fc3-b589-df2d223b8a04'::uuid, '56d23229-5074-553f-90e4-26d72cf20897'::uuid, 'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2e6fd109-fe2a-5bf3-8ec9-fd1dba4f09b6'::uuid, '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid, '40866e35-1364-5559-8365-e428e26a9b73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7d9787c1-48ef-5453-ac86-65bc3fd78c6f'::uuid, '40866e35-1364-5559-8365-e428e26a9b73'::uuid, '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f846c65a-808a-51aa-b57f-1844db9c1777'::uuid, '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid, '40866e35-1364-5559-8365-e428e26a9b73'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd63c151d-f50b-5e22-844a-7599a6b3d884'::uuid,
  'f846c65a-808a-51aa-b57f-1844db9c1777'::uuid,
  '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid,
  '40866e35-1364-5559-8365-e428e26a9b73'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a7f8bff0-3d50-52ba-8861-e19f199eea8a'::uuid,
  'f846c65a-808a-51aa-b57f-1844db9c1777'::uuid,
  '40866e35-1364-5559-8365-e428e26a9b73'::uuid,
  '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ffc021d8-15ac-5d3b-8f95-b8f257ba0333'::uuid, 'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid, '4bc1801f-c757-581d-91da-a729eda9358f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1b0da63c-c8e0-5ec2-855d-37bbebc82f07'::uuid, '4bc1801f-c757-581d-91da-a729eda9358f'::uuid, 'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('99bc759b-30aa-551d-9aa5-2db5601d9c80'::uuid, '4bc1801f-c757-581d-91da-a729eda9358f'::uuid, 'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b45a64af-6b55-581d-ba93-07b6796ac16a'::uuid, '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid, '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bbc253b7-9811-5595-a5f8-f49703349470'::uuid, '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid, '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cff4e9be-fc4c-55de-99b6-4cb6bc66c194'::uuid, '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid, '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2b7c894a-315a-57d0-9e21-1a3973dfbad3'::uuid,
  'cff4e9be-fc4c-55de-99b6-4cb6bc66c194'::uuid,
  '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid,
  '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ebb446ec-d9c6-5b3a-a283-5dd93e266bc9'::uuid,
  'cff4e9be-fc4c-55de-99b6-4cb6bc66c194'::uuid,
  '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid,
  '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;