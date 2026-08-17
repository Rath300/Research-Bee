INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('677a3d97-dba2-53d6-a732-d325c74c2c62'::uuid, '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4e91fc21-76be-57ed-9dff-668c689bd4aa'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2bfaf72a-7612-5d75-ada4-cf22896883d0'::uuid,
  '4e91fc21-76be-57ed-9dff-668c689bd4aa'::uuid,
  '428fd599-4b5e-50f7-937a-efec64706021'::uuid,
  '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9f2a78fb-2315-5bdf-96d2-4f92a422d86b'::uuid,
  '4e91fc21-76be-57ed-9dff-668c689bd4aa'::uuid,
  '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid,
  '428fd599-4b5e-50f7-937a-efec64706021'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5cbd9739-db19-50f2-a7fe-fed4c4f42d56'::uuid, '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid, '71f19248-9b47-5e00-bc96-ea56d2f0fa29'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6ba67107-5f3a-5794-977a-c9c6c898a254'::uuid, '71f19248-9b47-5e00-bc96-ea56d2f0fa29'::uuid, '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cb25c75e-1157-569c-a1f4-af84a5376dc8'::uuid, '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid, '71f19248-9b47-5e00-bc96-ea56d2f0fa29'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('488408f9-306d-5ca9-98dd-8a861080f592'::uuid, '11da8f2c-7470-5582-a044-f03903e3992c'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('18d3328f-4325-5133-a9b9-f8e8748edb44'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, '11da8f2c-7470-5582-a044-f03903e3992c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('377df575-9755-5df3-a2ca-84d7b8e1b400'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, '11da8f2c-7470-5582-a044-f03903e3992c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd68eb1eb-2f25-5354-aba3-76d2f819da74'::uuid,
  '377df575-9755-5df3-a2ca-84d7b8e1b400'::uuid,
  '11da8f2c-7470-5582-a044-f03903e3992c'::uuid,
  '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '53d11bfc-c153-51c3-9195-b0281c223263'::uuid,
  '377df575-9755-5df3-a2ca-84d7b8e1b400'::uuid,
  '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid,
  '11da8f2c-7470-5582-a044-f03903e3992c'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6bb2c0ce-268b-567c-bd84-5ebfeaacdad4'::uuid, '011fcd13-5185-5206-809d-115892a24501'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('901a20ab-044a-5b88-9178-601d486d868f'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, '011fcd13-5185-5206-809d-115892a24501'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('38599b86-4864-5a21-a320-c5ffe6820880'::uuid, '011fcd13-5185-5206-809d-115892a24501'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('534890e7-028b-5c24-9151-5dce55d75486'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, '6d797a78-3704-5608-8637-77e373f046fc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('828ebf8b-103e-5f93-b6e9-20f5dde87223'::uuid, '6d797a78-3704-5608-8637-77e373f046fc'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('79001505-aad8-5a4c-9024-d694313e930e'::uuid, '6d797a78-3704-5608-8637-77e373f046fc'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7ffa07e8-f62b-5a01-865b-6860400168da'::uuid,
  '79001505-aad8-5a4c-9024-d694313e930e'::uuid,
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  '6d797a78-3704-5608-8637-77e373f046fc'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0e7e95bd-9df9-58d4-b600-4dfbcd268cbd'::uuid,
  '79001505-aad8-5a4c-9024-d694313e930e'::uuid,
  '6d797a78-3704-5608-8637-77e373f046fc'::uuid,
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('efe82f3b-0b46-5dd6-8689-e55b85ea9717'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('79689fd7-e973-5fbf-81e3-a27017f7c014'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ede57f8e-fc87-5050-91f0-608ca95453a0'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a2a24f7f-6bc9-5073-bfc9-b007c08fe2fb'::uuid, '170229dc-697e-5b38-8001-6e6980b262ff'::uuid, '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5c607546-b46e-54aa-95a1-8d81ba0b50b0'::uuid, '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid, '170229dc-697e-5b38-8001-6e6980b262ff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('047ae01c-f20e-5dd7-8ff7-6d72b860fd2e'::uuid, '170229dc-697e-5b38-8001-6e6980b262ff'::uuid, '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fa9fc3d6-c34e-51f7-bd88-0e65d7823fbd'::uuid,
  '047ae01c-f20e-5dd7-8ff7-6d72b860fd2e'::uuid,
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1bc5933c-d3e7-5460-8413-1ab29cafc4d2'::uuid,
  '047ae01c-f20e-5dd7-8ff7-6d72b860fd2e'::uuid,
  '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid,
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d9dba064-ace5-51d3-9a06-1c0083172c61'::uuid, '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid, 'a92d4ffb-9625-5c8a-ab6f-18a27c05992d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b49360e7-3b3a-5873-8465-1b64a5c94640'::uuid, 'a92d4ffb-9625-5c8a-ab6f-18a27c05992d'::uuid, '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('375158da-65ff-5f7e-b927-d897e2757068'::uuid, '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid, 'a92d4ffb-9625-5c8a-ab6f-18a27c05992d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('67a08d37-5f6b-5e78-ac2a-bac8f8ed8e03'::uuid, '5a3de029-a188-532a-b55d-61583f327471'::uuid, 'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a55c8c43-2f33-5b01-8559-d38e2a107d82'::uuid, 'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid, '5a3de029-a188-532a-b55d-61583f327471'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('567f61c7-ceb8-50d2-bd53-8c5ac03b936f'::uuid, '5a3de029-a188-532a-b55d-61583f327471'::uuid, 'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '31b399ac-ca2f-5eb5-9bab-70093ff7ccbc'::uuid,
  '567f61c7-ceb8-50d2-bd53-8c5ac03b936f'::uuid,
  '5a3de029-a188-532a-b55d-61583f327471'::uuid,
  'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '93022b85-eb30-59ef-bb81-d70faa9b660c'::uuid,
  '567f61c7-ceb8-50d2-bd53-8c5ac03b936f'::uuid,
  'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid,
  '5a3de029-a188-532a-b55d-61583f327471'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7403b4f0-21f2-5e92-a01f-437d316b9fc0'::uuid, '628a4781-3a09-5aca-bc6a-7ae2fc619371'::uuid, 'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bab60279-7ed8-54e6-8432-b02bce22e0f2'::uuid, 'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid, '628a4781-3a09-5aca-bc6a-7ae2fc619371'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f7f5395d-338d-5b4c-8578-02e4bdfdd21b'::uuid, '628a4781-3a09-5aca-bc6a-7ae2fc619371'::uuid, 'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('15ad5619-3696-5acc-aa13-479449220e7e'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, '545134f1-47eb-57dc-89af-f53e59335d17'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;