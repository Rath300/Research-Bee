INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0c3d8b6a-dd00-51fe-8613-bc818101e07c'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('90161416-a478-56d5-bfa7-0cac14e5a095'::uuid, 'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid, 'f1bf462e-7f1e-5e43-9ef9-4abd70e78f82'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1e8d270a-c222-5312-988b-f883c0238344'::uuid, 'f1bf462e-7f1e-5e43-9ef9-4abd70e78f82'::uuid, 'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a4940651-f3be-5c29-bbe9-b538321d1d84'::uuid, 'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid, 'f1bf462e-7f1e-5e43-9ef9-4abd70e78f82'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e0fd4e9e-acce-5874-971d-74d5942dcb69'::uuid,
  'a4940651-f3be-5c29-bbe9-b538321d1d84'::uuid,
  'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid,
  'f1bf462e-7f1e-5e43-9ef9-4abd70e78f82'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7b7a4474-6771-5991-88ee-43eb4743e48b'::uuid,
  'a4940651-f3be-5c29-bbe9-b538321d1d84'::uuid,
  'f1bf462e-7f1e-5e43-9ef9-4abd70e78f82'::uuid,
  'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('002474a5-cb6f-58d5-8d8b-590a6104e7b2'::uuid, 'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid, 'd63df04e-24ab-5901-bf95-b865f4575782'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ace65edb-014a-5223-8d91-c58ec6368ab1'::uuid, 'd63df04e-24ab-5901-bf95-b865f4575782'::uuid, 'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6f2a0fec-6b8c-5623-ad89-9effd3b00fe9'::uuid, 'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid, 'd63df04e-24ab-5901-bf95-b865f4575782'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3f791de8-278a-5b5c-b673-741a9d80cc56'::uuid, '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid, 'c0679564-584a-56e3-82af-67940faa7931'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9e3610e3-f56b-5ce2-9eeb-9d2f566b006a'::uuid, 'c0679564-584a-56e3-82af-67940faa7931'::uuid, '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('930d35c9-2418-538f-9a49-eafddc989af7'::uuid, '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid, 'c0679564-584a-56e3-82af-67940faa7931'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c702df3d-2428-55b2-9fc8-0ee08bdc6761'::uuid,
  '930d35c9-2418-538f-9a49-eafddc989af7'::uuid,
  '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid,
  'c0679564-584a-56e3-82af-67940faa7931'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5de10b50-ad66-5fad-9005-636f963d159b'::uuid,
  '930d35c9-2418-538f-9a49-eafddc989af7'::uuid,
  'c0679564-584a-56e3-82af-67940faa7931'::uuid,
  '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4043c976-554a-5cc9-9c26-da8c9647c6e5'::uuid, 'a1026c86-856a-5225-b193-c935211475da'::uuid, '123328a2-6e0a-5530-9449-09997654760e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('909fc623-8529-5501-9136-800697d44abe'::uuid, '123328a2-6e0a-5530-9449-09997654760e'::uuid, 'a1026c86-856a-5225-b193-c935211475da'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5755a4e0-1c24-53b6-97d7-99bbd13f7df2'::uuid, '123328a2-6e0a-5530-9449-09997654760e'::uuid, 'a1026c86-856a-5225-b193-c935211475da'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('33716b84-5da5-597d-b5cd-5bc31e4bc0d1'::uuid, 'adab7a98-c1d6-591f-8b46-750925810a73'::uuid, 'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('61c4543a-b2fc-5193-b4e8-a1afeda16149'::uuid, 'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid, 'adab7a98-c1d6-591f-8b46-750925810a73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('256e982d-9a1a-54cc-833e-a10afcb76bf2'::uuid, 'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid, 'adab7a98-c1d6-591f-8b46-750925810a73'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a43c0cf0-6688-5e65-bd7c-0a075c1d0e18'::uuid,
  '256e982d-9a1a-54cc-833e-a10afcb76bf2'::uuid,
  'adab7a98-c1d6-591f-8b46-750925810a73'::uuid,
  'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b1967c8b-c634-5033-a95b-050936024b5a'::uuid,
  '256e982d-9a1a-54cc-833e-a10afcb76bf2'::uuid,
  'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid,
  'adab7a98-c1d6-591f-8b46-750925810a73'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('465b3a4c-2393-5ad0-b5ce-4f4bd9e89a91'::uuid, 'adab7a98-c1d6-591f-8b46-750925810a73'::uuid, 'd18c35cd-30d2-5a94-bfe3-7782f41a3dc6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e76eafeb-f1bd-5782-af9f-d674f9b733a3'::uuid, 'd18c35cd-30d2-5a94-bfe3-7782f41a3dc6'::uuid, 'adab7a98-c1d6-591f-8b46-750925810a73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('25cf68a9-9972-5039-8c0a-c3cffc50eb9a'::uuid, 'adab7a98-c1d6-591f-8b46-750925810a73'::uuid, 'd18c35cd-30d2-5a94-bfe3-7782f41a3dc6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f96fe9b5-123a-53e1-bcd8-ac594095e244'::uuid, '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid, '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1b4247bc-d362-508b-bd18-308dbf40077e'::uuid, '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid, '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('40144e0b-c5ef-5a82-8c80-af751335cc05'::uuid, '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid, '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3fb90354-4e6a-52c2-8be1-c049102a1906'::uuid,
  '40144e0b-c5ef-5a82-8c80-af751335cc05'::uuid,
  '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid,
  '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '99b67c24-30ad-5b38-a97d-b9a3fe95fb90'::uuid,
  '40144e0b-c5ef-5a82-8c80-af751335cc05'::uuid,
  '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid,
  '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a5a42441-2f72-5af0-aec9-541c08f1f825'::uuid, '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid, '8539a32a-815b-5a83-a51e-679ee612278d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ccfead6-614c-556e-9f42-0cd247ac468c'::uuid, '8539a32a-815b-5a83-a51e-679ee612278d'::uuid, '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('305a8152-1e1d-54c0-99c7-b3064d5ed69b'::uuid, '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid, '8539a32a-815b-5a83-a51e-679ee612278d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ace1a279-3501-5aea-932a-7fe7058a11cc'::uuid, 'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid, '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('786699be-8a66-5169-92f4-16cf2071b945'::uuid, '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid, 'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bf696210-ed0f-5bb4-bae3-13f595022ddd'::uuid, '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid, 'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '71e6e1d6-37de-5d92-9818-b5df49bd7a96'::uuid,
  'bf696210-ed0f-5bb4-bae3-13f595022ddd'::uuid,
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c0677205-efef-59b6-8d4d-4ee68d0fd93b'::uuid,
  'bf696210-ed0f-5bb4-bae3-13f595022ddd'::uuid,
  '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid,
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2f71eb97-ecab-5cb7-8513-d49d312b39e0'::uuid, 'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid, '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8ce98a57-ff85-542c-b7a4-e41bff9efe61'::uuid, '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid, 'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;