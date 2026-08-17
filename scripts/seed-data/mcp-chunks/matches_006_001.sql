INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '482f7623-bec4-5ba4-a6e6-e7246bd13995'::uuid,
  'e6104d1c-224c-50f4-83e5-4640ce7ba8bd'::uuid,
  '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid,
  'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd6f2c581-e254-5c02-8ce9-da82db076ec3'::uuid,
  'e6104d1c-224c-50f4-83e5-4640ce7ba8bd'::uuid,
  'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid,
  '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('39d7e5f5-84c6-5ca3-b841-4f2a3b51bc71'::uuid, '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('de7b8011-34d7-55e6-bb92-35b87a08ebce'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ef50c5bb-ac76-5217-82d6-b960db270077'::uuid, '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e6f51ec6-e1ff-5867-a344-73959a8b9d50'::uuid, 'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid, 'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('05bcbedc-6daa-57c1-9f96-00bb3da3fb02'::uuid, 'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid, 'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c946ce66-6c7d-56e7-8047-ab1d0506ef58'::uuid, 'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid, 'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '90ea2135-01ed-5b74-9224-320605527bf7'::uuid,
  'c946ce66-6c7d-56e7-8047-ab1d0506ef58'::uuid,
  'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid,
  'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '83770218-d296-507c-a373-479b391badbb'::uuid,
  'c946ce66-6c7d-56e7-8047-ab1d0506ef58'::uuid,
  'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid,
  'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('289c8c7b-7e03-5ecb-8b89-ceaf4b26e334'::uuid, '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid, '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9cf52eba-2d11-578e-84d9-07d61f62479a'::uuid, '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a'::uuid, '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b1f92166-5ee7-584c-a5c8-d7147525f6a6'::uuid, '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid, '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bb751e82-800f-57c3-a152-a996e4c3c96f'::uuid, 'f1bf462e-7f1e-5e43-9ef9-4abd70e78f82'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f20f55bb-bf4d-5f6e-926f-c279897c5f29'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, 'f1bf462e-7f1e-5e43-9ef9-4abd70e78f82'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('24cdf0fe-5291-54d6-be97-23046fc59060'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, 'f1bf462e-7f1e-5e43-9ef9-4abd70e78f82'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '73f3ccdb-7544-53ad-a8ce-f50096ea0c0f'::uuid,
  '24cdf0fe-5291-54d6-be97-23046fc59060'::uuid,
  'f1bf462e-7f1e-5e43-9ef9-4abd70e78f82'::uuid,
  'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd14ec960-ae07-5dae-9ea1-2158b777b82f'::uuid,
  '24cdf0fe-5291-54d6-be97-23046fc59060'::uuid,
  'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid,
  'f1bf462e-7f1e-5e43-9ef9-4abd70e78f82'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ec2c83b9-b836-504e-8b90-21a8d487f6d1'::uuid, 'd63df04e-24ab-5901-bf95-b865f4575782'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9948f645-477a-535d-aee3-91cb5aaa2ae9'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, 'd63df04e-24ab-5901-bf95-b865f4575782'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('71a877cd-b35b-5699-838a-a045e2acbc8b'::uuid, 'd63df04e-24ab-5901-bf95-b865f4575782'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b01476d4-8b50-5f51-be43-e2c7efc71fde'::uuid, 'c0679564-584a-56e3-82af-67940faa7931'::uuid, '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f0b0edb4-29e4-5170-9651-62a21fbcdbcf'::uuid, '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid, 'c0679564-584a-56e3-82af-67940faa7931'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b9349c88-1d34-5895-b31c-159ed60f5055'::uuid, '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid, 'c0679564-584a-56e3-82af-67940faa7931'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '84ffcd97-5826-5e62-939b-ed83683985a5'::uuid,
  'b9349c88-1d34-5895-b31c-159ed60f5055'::uuid,
  'c0679564-584a-56e3-82af-67940faa7931'::uuid,
  '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '40afc2de-7393-5082-bec2-5bbb444e9c8e'::uuid,
  'b9349c88-1d34-5895-b31c-159ed60f5055'::uuid,
  '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid,
  'c0679564-584a-56e3-82af-67940faa7931'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f9361fdd-3c69-5cc4-a3e3-51714653c536'::uuid, 'c0679564-584a-56e3-82af-67940faa7931'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3cbf7cc0-3cce-59eb-978a-eb2f9a79df23'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, 'c0679564-584a-56e3-82af-67940faa7931'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('317c98e2-e58d-5497-a6b7-5b3bc3d37c1e'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, 'c0679564-584a-56e3-82af-67940faa7931'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f44ff174-9bab-5751-8deb-f01237d55c13'::uuid, '123328a2-6e0a-5530-9449-09997654760e'::uuid, 'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9d31fe97-1d75-5857-b5b0-d3f4f62407f7'::uuid, 'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid, '123328a2-6e0a-5530-9449-09997654760e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3f3389af-f188-5625-873e-2738664ab503'::uuid, '123328a2-6e0a-5530-9449-09997654760e'::uuid, 'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1a00f538-7736-50e9-a292-bfdfd69ac1b6'::uuid,
  '3f3389af-f188-5625-873e-2738664ab503'::uuid,
  '123328a2-6e0a-5530-9449-09997654760e'::uuid,
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '28c822b4-5add-5a8b-ac63-9c08da2cc29a'::uuid,
  '3f3389af-f188-5625-873e-2738664ab503'::uuid,
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  '123328a2-6e0a-5530-9449-09997654760e'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('caaf8e96-abdf-53b8-a07e-b97fec0e10ba'::uuid, 'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid, '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('69afab22-d297-5afa-a175-b0beedbe8204'::uuid, '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid, 'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2ff19730-4fc6-5b35-88b5-652db86a355b'::uuid, '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid, 'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('110826f9-af32-5ff9-8997-11306091da24'::uuid, '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid, '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b1afd421-e406-501f-bbe2-439b4f3c6f3a'::uuid, '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid, '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4ec6a0be-8573-518d-9e47-9c54c7f204ea'::uuid, '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid, '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;