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

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a250b56e-dd6d-5347-945d-7dcdabfa083a'::uuid, 'b3f204c0-b5ce-55c6-be97-067e8c0334b6'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4e74aa42-4aca-55a3-87a3-75b8e829a2eb'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'b3f204c0-b5ce-55c6-be97-067e8c0334b6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d98a581e-47f4-590a-8638-e9f5b9218b6a'::uuid, 'b3f204c0-b5ce-55c6-be97-067e8c0334b6'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('05fe3f5e-8140-54f0-b615-fe44ecf97ebf'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, 'f324de5b-f927-5f4b-92bf-a2695829f8d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2643dfb9-c3c8-5871-811b-d0abc5be475e'::uuid, 'f324de5b-f927-5f4b-92bf-a2695829f8d2'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b2dece19-53a1-5d05-8cb5-840ea866a0d7'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, 'f324de5b-f927-5f4b-92bf-a2695829f8d2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9d2afce1-1e2a-5414-84bf-5f4779b2778b'::uuid,
  'b2dece19-53a1-5d05-8cb5-840ea866a0d7'::uuid,
  '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid,
  'f324de5b-f927-5f4b-92bf-a2695829f8d2'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e046e9d6-f6e8-5d8a-a6d9-0e3795d826c6'::uuid,
  'b2dece19-53a1-5d05-8cb5-840ea866a0d7'::uuid,
  'f324de5b-f927-5f4b-92bf-a2695829f8d2'::uuid,
  '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('320748b3-29a4-58d7-ad2f-305d36995735'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d9c2c654-e936-5fbb-b150-7b4ce3658e36'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('98be45db-3d8b-5959-849e-dab920d972f5'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('60d5c82c-9ef6-56a6-9db2-9012effb0fd2'::uuid, '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid, '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('142471a0-dc78-55c1-af31-f3391fa722b7'::uuid, '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid, '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d738f4fb-35a0-5e1f-95d5-27b2c9ff61ad'::uuid, '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid, '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f5cf5bbf-5367-54c5-9d7e-f4cb5a609963'::uuid,
  'd738f4fb-35a0-5e1f-95d5-27b2c9ff61ad'::uuid,
  '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid,
  '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9d4c9ed9-19cd-5925-9cd4-c11afefefc74'::uuid,
  'd738f4fb-35a0-5e1f-95d5-27b2c9ff61ad'::uuid,
  '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid,
  '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a6b6eac1-9e42-524a-8485-183f308ff8f9'::uuid, 'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid, 'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ed7e50a5-2636-5a1c-9d86-8883ffa0e65a'::uuid, 'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid, 'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4fe7d57c-32cb-56ab-94e3-6478e4a0f961'::uuid, 'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid, 'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6fc81330-2628-5a1a-b7dc-5fe69c044b1b'::uuid, '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2461d65a-4557-58d5-824e-424287de87f4'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6608e369-2589-5cba-9443-f183560afe90'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ba712f75-c1c6-59bc-8e6a-cab8749d9542'::uuid,
  '6608e369-2589-5cba-9443-f183560afe90'::uuid,
  '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a59a1904-d679-5071-904c-f6e101d84f1c'::uuid,
  '6608e369-2589-5cba-9443-f183560afe90'::uuid,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b70df647-04f9-5662-ac20-9a9d89bdaea5'::uuid, '4c0b16d5-ad7b-5990-b2bd-acbaf07eb752'::uuid, '9368db5e-e423-510b-abf1-bd3510893600'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89022f69-5e79-599e-a2e9-bfefb63d97b9'::uuid, '9368db5e-e423-510b-abf1-bd3510893600'::uuid, '4c0b16d5-ad7b-5990-b2bd-acbaf07eb752'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc65ecc7-ecf7-5132-861e-8ffbc1a74943'::uuid, '4c0b16d5-ad7b-5990-b2bd-acbaf07eb752'::uuid, '9368db5e-e423-510b-abf1-bd3510893600'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d4fb6063-d386-5022-b7d3-985e43835828'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, '3c61d365-5745-5cca-b16b-98e085138757'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ea90505f-e9f2-5b79-8b94-0531489011fc'::uuid, '3c61d365-5745-5cca-b16b-98e085138757'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4dcdd589-a0ff-510a-b2ba-4bb60a8d7d9c'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, '3c61d365-5745-5cca-b16b-98e085138757'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cf62c6fd-2e1e-577b-979b-d953060bf1f3'::uuid,
  '4dcdd589-a0ff-510a-b2ba-4bb60a8d7d9c'::uuid,
  '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid,
  '3c61d365-5745-5cca-b16b-98e085138757'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bf99c462-ced5-5cf1-9902-5376a5e8560f'::uuid,
  '4dcdd589-a0ff-510a-b2ba-4bb60a8d7d9c'::uuid,
  '3c61d365-5745-5cca-b16b-98e085138757'::uuid,
  '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('222fe924-9048-5070-9c7c-d8e18fc3d924'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f38253d6-6a70-53a4-9f29-b485d6c004b1'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4cf412bb-faf6-55c9-b08b-90c2f4920b5b'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6b97ec0a-1e31-55d4-9432-f94a696e5e7c'::uuid, 'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid, '9b892976-4532-57a5-9100-2063a3f4046f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('868c4eff-142c-5fd9-a0a6-c9d8fdcf1fdf'::uuid, '9b892976-4532-57a5-9100-2063a3f4046f'::uuid, 'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('21d720b6-ee39-50e7-b99c-4a5c60d2a1a9'::uuid, '9b892976-4532-57a5-9100-2063a3f4046f'::uuid, 'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0e128de3-2cf5-5f04-9ffe-c56dbf009ee7'::uuid,
  '21d720b6-ee39-50e7-b99c-4a5c60d2a1a9'::uuid,
  'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid,
  '9b892976-4532-57a5-9100-2063a3f4046f'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'df3e4e2c-e1a0-5421-bda9-4a7e52f43576'::uuid,
  '21d720b6-ee39-50e7-b99c-4a5c60d2a1a9'::uuid,
  '9b892976-4532-57a5-9100-2063a3f4046f'::uuid,
  'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('850660fd-a44a-5831-b02c-ea6d69dbb8f3'::uuid, '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid, '4ae3110b-2758-5a34-9e95-e052815cda96'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ce03b12d-2987-53ae-95a8-5c991e8f551c'::uuid, '4ae3110b-2758-5a34-9e95-e052815cda96'::uuid, '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('af73d143-c8be-5090-b966-5e27bbbfbf50'::uuid, '4ae3110b-2758-5a34-9e95-e052815cda96'::uuid, '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c54baf74-80d8-5708-9e3b-5e842a7f87ab'::uuid, '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid, '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d50e1e4e-4a7f-5710-ba2b-7c7b7295e5a6'::uuid, '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid, '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2a32d4a2-1f81-5a3c-8e4a-3fac0cdee2ab'::uuid, '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid, '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5ea0cad0-1596-5805-b09e-3363363aad93'::uuid,
  '2a32d4a2-1f81-5a3c-8e4a-3fac0cdee2ab'::uuid,
  '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid,
  '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f5eed798-011c-5e98-b8c6-9f24989e579b'::uuid,
  '2a32d4a2-1f81-5a3c-8e4a-3fac0cdee2ab'::uuid,
  '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid,
  '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c586c7ba-b224-55b0-ad4c-b738382f9d81'::uuid, 'b0180410-8061-5081-8509-d15823d3c0a5'::uuid, '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4cfa6afa-f5e6-51f4-9f70-81e9a8a80251'::uuid, '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid, 'b0180410-8061-5081-8509-d15823d3c0a5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b3971d4f-8dba-5dff-b646-8f9fdde70bdd'::uuid, '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid, 'b0180410-8061-5081-8509-d15823d3c0a5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('07fcb75a-4b8e-5951-833a-14c968b45b1f'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('525d8e99-150d-5619-b4d7-352cea0b8ace'::uuid, '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('36f34ead-6430-51e2-8c1a-0361dd6502b9'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '38669477-4309-577a-ac7f-31e4db937e37'::uuid,
  '36f34ead-6430-51e2-8c1a-0361dd6502b9'::uuid,
  '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid,
  '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1f2bee31-5598-56b2-b572-7d508b2fa9d2'::uuid,
  '36f34ead-6430-51e2-8c1a-0361dd6502b9'::uuid,
  '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid,
  '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c98334a0-a365-5bf6-92a1-51c46acc1d43'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('977cfef7-12e9-5bf7-bf78-c6e7a81c166b'::uuid, '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ef10e19a-4cb3-5ac4-8a84-4b445965eb20'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('436175ca-80d8-5ae6-a262-681f0d99ce52'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, 'c18237ec-ff4a-5cc3-a383-cb6f58e13ea2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e56fd93d-bbfe-542d-ad9d-ed027f1e5a84'::uuid, 'c18237ec-ff4a-5cc3-a383-cb6f58e13ea2'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('255d65f2-e90a-547c-b5dc-dc2b9ce55b04'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, 'c18237ec-ff4a-5cc3-a383-cb6f58e13ea2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f601c0fd-1eae-578d-957d-ddc452eaf272'::uuid,
  '255d65f2-e90a-547c-b5dc-dc2b9ce55b04'::uuid,
  '56361163-593b-5f6a-8eb2-5269671702e2'::uuid,
  'c18237ec-ff4a-5cc3-a383-cb6f58e13ea2'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cb01bbbb-4e1b-5140-9951-23a4953aed04'::uuid,
  '255d65f2-e90a-547c-b5dc-dc2b9ce55b04'::uuid,
  'c18237ec-ff4a-5cc3-a383-cb6f58e13ea2'::uuid,
  '56361163-593b-5f6a-8eb2-5269671702e2'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3d86da5f-7792-5abf-84ac-357ab267a370'::uuid, '57922f55-9cea-510b-8329-299c51dd6d47'::uuid, '617208a8-08ea-5f2c-b293-4093cd3d2775'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d64b0ca3-268d-537d-ba82-d1d40fdf8461'::uuid, '617208a8-08ea-5f2c-b293-4093cd3d2775'::uuid, '57922f55-9cea-510b-8329-299c51dd6d47'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8a5e61a4-dc87-5e73-818c-da6fe973216b'::uuid, '57922f55-9cea-510b-8329-299c51dd6d47'::uuid, '617208a8-08ea-5f2c-b293-4093cd3d2775'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b8642e8-ae1b-5396-863c-f001482d28d0'::uuid, '778bb832-28a2-5667-a854-30ded635eb52'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9617c67e-0f34-5ae3-84fc-4b00d9a4ad3c'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, '778bb832-28a2-5667-a854-30ded635eb52'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6be47624-885b-54e2-8641-c135f912357b'::uuid, '778bb832-28a2-5667-a854-30ded635eb52'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '477a41f2-7533-58b2-96d9-a34d20835bd4'::uuid,
  '6be47624-885b-54e2-8641-c135f912357b'::uuid,
  '778bb832-28a2-5667-a854-30ded635eb52'::uuid,
  '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2f267fcf-c399-571e-a5e4-ed455f7a29b2'::uuid,
  '6be47624-885b-54e2-8641-c135f912357b'::uuid,
  '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid,
  '778bb832-28a2-5667-a854-30ded635eb52'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e49953f7-e5a1-5c7a-b789-e90fcdb999ea'::uuid, 'f5c6f747-5297-5e24-87be-fd7df457b835'::uuid, 'a169404e-faf7-5071-b788-07d72b750c2c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('af291ba5-07c6-5608-a32d-a17259ad8e3b'::uuid, 'a169404e-faf7-5071-b788-07d72b750c2c'::uuid, 'f5c6f747-5297-5e24-87be-fd7df457b835'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('42aed88c-7fd3-5c8b-bec8-8ae455125575'::uuid, 'a169404e-faf7-5071-b788-07d72b750c2c'::uuid, 'f5c6f747-5297-5e24-87be-fd7df457b835'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('81741834-7338-5a2e-b552-dae2ae4f461d'::uuid, '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid, '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9aa27f49-6d3f-51c2-9510-5d6734a423e7'::uuid, '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid, '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b1f93616-1828-5fc1-9fcf-3f1bf1a4c03d'::uuid, '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid, '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ac2ee4e7-9705-51bc-9df9-c51b8407daee'::uuid,
  'b1f93616-1828-5fc1-9fcf-3f1bf1a4c03d'::uuid,
  '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid,
  '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'eacf5aab-c877-521f-b99c-124091de9cca'::uuid,
  'b1f93616-1828-5fc1-9fcf-3f1bf1a4c03d'::uuid,
  '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid,
  '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

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

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('162e1eee-7c66-58de-bf2e-f1a2ed28fc0b'::uuid, '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2f6525f7-438f-5342-89e4-b8af6d485ffa'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('55a65216-1887-5a92-b293-04100e8d2260'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7fa56e1f-f0d0-523a-9416-d554baa767f9'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, 'f1af066e-3f30-5479-830e-3162690b429d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ca8306bf-ca06-5020-85d5-2d7a74417b71'::uuid, 'f1af066e-3f30-5479-830e-3162690b429d'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fadcbb5c-0de6-5463-8e1b-55fca575ff90'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, 'f1af066e-3f30-5479-830e-3162690b429d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'de484856-9e80-59e0-a747-61048ac37bef'::uuid,
  'fadcbb5c-0de6-5463-8e1b-55fca575ff90'::uuid,
  'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid,
  'f1af066e-3f30-5479-830e-3162690b429d'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'edb29fd7-4c94-5124-b069-1ff57ab5cf2c'::uuid,
  'fadcbb5c-0de6-5463-8e1b-55fca575ff90'::uuid,
  'f1af066e-3f30-5479-830e-3162690b429d'::uuid,
  'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('618a48af-0800-5196-a8b8-1247f21d1757'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, '599f91ad-8872-5548-98ef-05309b9d767d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e092a04d-b422-51ce-a96c-7333cd8cbaff'::uuid, '599f91ad-8872-5548-98ef-05309b9d767d'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d66d479a-b41e-5f6e-865a-ccefe4aec316'::uuid, '599f91ad-8872-5548-98ef-05309b9d767d'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e399889-4222-5012-ab1b-464f569473f9'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, '94620992-b146-536c-a930-0efce8d2c959'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('657a8076-ebb4-5973-b437-99138caf1238'::uuid, '94620992-b146-536c-a930-0efce8d2c959'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4d6a6642-2560-5363-9b10-b53172789ca1'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, '94620992-b146-536c-a930-0efce8d2c959'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2c195d56-1f09-572e-b6cf-f33bfcf7f305'::uuid,
  '4d6a6642-2560-5363-9b10-b53172789ca1'::uuid,
  '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid,
  '94620992-b146-536c-a930-0efce8d2c959'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e068f3c8-7899-5934-9f39-b7750efbcf29'::uuid,
  '4d6a6642-2560-5363-9b10-b53172789ca1'::uuid,
  '94620992-b146-536c-a930-0efce8d2c959'::uuid,
  '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a0cad950-7ded-5a38-86e2-ea9244ba0dac'::uuid, '72563df9-2262-5969-9688-d5cf69877f50'::uuid, 'a446d3e3-844d-589c-9f96-50f5f4eaee5b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('82b33304-12b7-5761-a1be-20c9c90c245a'::uuid, 'a446d3e3-844d-589c-9f96-50f5f4eaee5b'::uuid, '72563df9-2262-5969-9688-d5cf69877f50'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0067bff9-7855-511a-9c98-7ca208a52bda'::uuid, '72563df9-2262-5969-9688-d5cf69877f50'::uuid, 'a446d3e3-844d-589c-9f96-50f5f4eaee5b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6bfb6a04-e960-55cd-bfaf-941f09e46e0f'::uuid, '6a4f619f-e444-588f-b820-a92527d80b68'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('45b48cfb-46ee-55d0-a38e-198430ed361d'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, '6a4f619f-e444-588f-b820-a92527d80b68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a063ab73-d539-5826-bbef-eef862695f4d'::uuid, '6a4f619f-e444-588f-b820-a92527d80b68'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '373fbfc6-acfd-5bcd-a153-1f6f87c31e34'::uuid,
  'a063ab73-d539-5826-bbef-eef862695f4d'::uuid,
  '6a4f619f-e444-588f-b820-a92527d80b68'::uuid,
  '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e651d868-c1ed-5355-929c-8e5bf3380c96'::uuid,
  'a063ab73-d539-5826-bbef-eef862695f4d'::uuid,
  '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid,
  '6a4f619f-e444-588f-b820-a92527d80b68'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d4ce7f94-8a4f-518c-bba0-f85397891b9e'::uuid, '9cb755c4-0ef9-56cb-9ee7-02d3013edbe0'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bc68f502-d727-57ab-ae73-1e7bc2096199'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, '9cb755c4-0ef9-56cb-9ee7-02d3013edbe0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f47b5e54-4777-5a51-9156-6325cbc99855'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, '9cb755c4-0ef9-56cb-9ee7-02d3013edbe0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('99fa1c7e-bc71-59c2-92cc-044a2d33005d'::uuid, 'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid, 'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('41f19bfe-e71f-5b67-b0d1-e6ddd0222216'::uuid, 'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid, 'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f7160b9e-60c9-5f71-891b-ca25d596d2df'::uuid, 'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid, 'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '53847265-eb66-50ba-8d2c-c8299cd8fb0f'::uuid,
  'f7160b9e-60c9-5f71-891b-ca25d596d2df'::uuid,
  'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid,
  'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b6c7906b-5074-52d0-a6dd-244f41f54245'::uuid,
  'f7160b9e-60c9-5f71-891b-ca25d596d2df'::uuid,
  'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid,
  'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1f963d0f-8a66-56c5-8e9f-7daceec592ee'::uuid, 'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid, '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('855ba946-c044-55b7-8f0c-eb7926f0618b'::uuid, '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid, 'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f329f0a4-f647-5547-8754-e841f76c38ec'::uuid, '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid, 'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('919f9478-bed6-5e02-a075-2574bca8c645'::uuid, '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid, 'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e9e7978-6974-53e0-adf3-30e787078f9e'::uuid, 'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid, '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ad11105a-a803-52b5-bca7-8856159a5f81'::uuid, '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid, 'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ab8995fb-9e4b-5708-9776-7570378f5246'::uuid,
  'ad11105a-a803-52b5-bca7-8856159a5f81'::uuid,
  '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid,
  'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '28726b0b-6798-5825-9ac3-fdaa47870347'::uuid,
  'ad11105a-a803-52b5-bca7-8856159a5f81'::uuid,
  'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid,
  '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f1b5123e-0f8d-5ef6-9d5b-de528a8f0cc0'::uuid, 'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid, '7b5d6f8f-a9da-5c63-9788-0f8bd3e5ea66'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e4f605a6-71ee-5e25-b303-b38ccba7ba37'::uuid, '7b5d6f8f-a9da-5c63-9788-0f8bd3e5ea66'::uuid, 'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e0f9d3fb-da1e-5767-b5c1-8cacfa5538b3'::uuid, '7b5d6f8f-a9da-5c63-9788-0f8bd3e5ea66'::uuid, 'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ca466937-ece9-596b-984f-b13be009d235'::uuid, '40866e35-1364-5559-8365-e428e26a9b73'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('11cf22ba-e839-53db-88b2-7a2748eddf35'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, '40866e35-1364-5559-8365-e428e26a9b73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a7d442d2-1ea8-59bc-9a8d-9b04c7c157a3'::uuid, '40866e35-1364-5559-8365-e428e26a9b73'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'efd7bacf-f349-5e7a-b713-4da02848dbaa'::uuid,
  'a7d442d2-1ea8-59bc-9a8d-9b04c7c157a3'::uuid,
  '40866e35-1364-5559-8365-e428e26a9b73'::uuid,
  '489286d8-f958-5262-bb06-db46b21bf316'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5c2461f5-4c64-595d-8963-376fefae10c8'::uuid,
  'a7d442d2-1ea8-59bc-9a8d-9b04c7c157a3'::uuid,
  '489286d8-f958-5262-bb06-db46b21bf316'::uuid,
  '40866e35-1364-5559-8365-e428e26a9b73'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6a9aaaa4-0878-5000-9507-5b8944ac9658'::uuid, '4bc1801f-c757-581d-91da-a729eda9358f'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ad0c2a00-be0b-5fe0-81e9-bdb93f419f04'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, '4bc1801f-c757-581d-91da-a729eda9358f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6dc474d0-f8ad-52ad-9c71-1a18830942ec'::uuid, '4bc1801f-c757-581d-91da-a729eda9358f'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('371c6174-d717-5456-ae58-40fa6ce35225'::uuid, '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid, '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7fc65aa5-21a0-5064-a3b9-b6847feb6a8d'::uuid, '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid, '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cf94982c-d815-54b4-9ea7-acdcb22c03ce'::uuid, '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid, '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'aae17207-d643-5478-99ca-c58d5abcdee2'::uuid,
  'cf94982c-d815-54b4-9ea7-acdcb22c03ce'::uuid,
  '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid,
  '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5c65de92-927d-5c92-9391-eaa161f2cd12'::uuid,
  'cf94982c-d815-54b4-9ea7-acdcb22c03ce'::uuid,
  '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid,
  '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ba346c95-c1a0-5a92-9afb-8453c4ab2d9a'::uuid, '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid, '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7f7f6fa5-7f86-5205-b942-8722a5709eb4'::uuid, '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid, '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('23d7d4af-33f0-5b4c-aa64-9903ce8310d0'::uuid, '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid, '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0dae8669-f9f9-57bf-8832-419b5494ad9d'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38b3c552-5f22-50b5-85f1-b41ac4f90a45'::uuid, 'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7b428a32-8dc7-5f5e-b31c-b59aa6438c2f'::uuid, 'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '28e7ef5a-9d4f-5225-9398-5f19a158ea43'::uuid,
  '7b428a32-8dc7-5f5e-b31c-b59aa6438c2f'::uuid,
  'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid,
  'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b4399f62-0483-581e-a54c-4eab3c56e30d'::uuid,
  '7b428a32-8dc7-5f5e-b31c-b59aa6438c2f'::uuid,
  'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid,
  'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b607d49d-6ddb-5bed-8fe9-96a3e548c8ae'::uuid, 'f324de5b-f927-5f4b-92bf-a2695829f8d2'::uuid, '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9f0e77c5-3e24-5526-901a-54c2a71e69c6'::uuid, '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid, 'f324de5b-f927-5f4b-92bf-a2695829f8d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a27f2530-fa69-5b08-8fd3-c1f88e95ced6'::uuid, '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid, 'f324de5b-f927-5f4b-92bf-a2695829f8d2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('750a238a-64ed-585e-aace-df2e7221e8db'::uuid, '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3b06367a-b3a8-5a40-9a78-d71fe49fe878'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0954e6df-c0a2-536d-a5ce-c6f896e9c324'::uuid, '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7461e704-0155-5cbe-8c08-7c6ee9a8cc97'::uuid,
  '0954e6df-c0a2-536d-a5ce-c6f896e9c324'::uuid,
  '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid,
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '018b47b4-a708-59a4-afff-29d12d890c71'::uuid,
  '0954e6df-c0a2-536d-a5ce-c6f896e9c324'::uuid,
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('300fe3b4-f69b-583c-95ee-09b9c3270719'::uuid, 'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dfd8a82f-8238-54e9-a285-23c11f84ec2c'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, 'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0827a356-5c8b-50a4-b494-6fedd1f2bd57'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, 'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('beca2798-0ce3-50e0-9c4c-20238aafa9b9'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d349c496-92f8-55b1-9661-7474b9a97664'::uuid, '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c2df0b0d-20d1-56ea-8dad-35481db81d6f'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c5f8db20-f4d5-53a5-b25c-71b23ce95c93'::uuid,
  'c2df0b0d-20d1-56ea-8dad-35481db81d6f'::uuid,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '65315394-b45f-5375-93d8-1dd472f045a7'::uuid,
  'c2df0b0d-20d1-56ea-8dad-35481db81d6f'::uuid,
  '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6c3f69c4-41ea-58be-9670-a26f1f1ab3fd'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d68e960b-4ea1-5a86-a9d1-fffd99e0b8c1'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e94dedf6-14fa-5fa9-9b46-fc8863d434d1'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('27d7efc7-5a61-56af-b9aa-68eeb708b474'::uuid, '9368db5e-e423-510b-abf1-bd3510893600'::uuid, '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;
