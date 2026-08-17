INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5edfaa23-ba9c-594a-b363-8b58026504ea'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, 'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4251f45a-481f-5d59-8366-fe4955fd6b35'::uuid, 'f644a779-f61f-50ac-9f62-0022190689d9'::uuid, 'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7b19737e-1f9e-5091-bd09-d84b0c735343'::uuid, 'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid, 'f644a779-f61f-50ac-9f62-0022190689d9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c0d990f5-5f51-59a5-9b51-7a8b47d72ba2'::uuid, 'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid, 'f644a779-f61f-50ac-9f62-0022190689d9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '40cefd76-dbff-5382-900b-217e7df78fb0'::uuid,
  'c0d990f5-5f51-59a5-9b51-7a8b47d72ba2'::uuid,
  'f644a779-f61f-50ac-9f62-0022190689d9'::uuid,
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'abd23047-95cc-5777-aa5d-40f2b3f10ca5'::uuid,
  'c0d990f5-5f51-59a5-9b51-7a8b47d72ba2'::uuid,
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  'f644a779-f61f-50ac-9f62-0022190689d9'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('24ec5fa8-d010-551b-9460-28bb4aab30a2'::uuid, '11c84f5e-775c-5b46-af66-1f232d2d9f72'::uuid, 'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bc0b8951-571e-5dc3-854a-1e833257c048'::uuid, 'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid, '11c84f5e-775c-5b46-af66-1f232d2d9f72'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('165621f6-0e66-5fc4-9578-5079980b0e2c'::uuid, '11c84f5e-775c-5b46-af66-1f232d2d9f72'::uuid, 'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9c9a4123-b354-5291-822b-7b45d5859e4b'::uuid, 'e10d8f3c-3339-5b7c-aab1-cb38fa334cb4'::uuid, '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b94aaf5f-7b34-5e87-801a-c98304b37c18'::uuid, '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid, 'e10d8f3c-3339-5b7c-aab1-cb38fa334cb4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5f55d16b-5656-590a-b9fa-142f14baea15'::uuid, '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid, 'e10d8f3c-3339-5b7c-aab1-cb38fa334cb4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f8869081-b360-556a-9889-522fec780045'::uuid,
  '5f55d16b-5656-590a-b9fa-142f14baea15'::uuid,
  'e10d8f3c-3339-5b7c-aab1-cb38fa334cb4'::uuid,
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9c2bacf8-0000-5f34-a1c4-4e4f1c600ae2'::uuid,
  '5f55d16b-5656-590a-b9fa-142f14baea15'::uuid,
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  'e10d8f3c-3339-5b7c-aab1-cb38fa334cb4'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0afff15c-e20b-5970-8ea2-c3a958dec62e'::uuid, '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid, '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4383b73c-b6be-576d-a60c-8573c58429f2'::uuid, '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid, '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dbe3c2af-6c27-5c5b-965d-f45e6df84f45'::uuid, '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid, '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f28179cb-01d5-5a66-9e20-b650dd55798a'::uuid, '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid, 'e97a9de9-ada2-56c8-98fd-109c271f42ab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c157822-0441-57e1-a356-e5532a8ac589'::uuid, 'e97a9de9-ada2-56c8-98fd-109c271f42ab'::uuid, '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('227c1284-332f-524a-8628-1456cd0fc67b'::uuid, '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid, 'e97a9de9-ada2-56c8-98fd-109c271f42ab'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7cb024f0-3599-5168-9282-411d46ffac18'::uuid,
  '227c1284-332f-524a-8628-1456cd0fc67b'::uuid,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  'e97a9de9-ada2-56c8-98fd-109c271f42ab'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'deec51ef-24de-523f-aa00-15441ac674c9'::uuid,
  '227c1284-332f-524a-8628-1456cd0fc67b'::uuid,
  'e97a9de9-ada2-56c8-98fd-109c271f42ab'::uuid,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5c5b2bc0-808a-591e-a904-ae5d6aa017da'::uuid, '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid, '6967920a-06a3-5d3b-9991-777798ca8208'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4825d724-3a57-5bfc-98c3-797aa265b4a7'::uuid, '6967920a-06a3-5d3b-9991-777798ca8208'::uuid, '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('51f4a946-6877-5315-b997-f1128fd41cf9'::uuid, '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid, '6967920a-06a3-5d3b-9991-777798ca8208'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cb399dc6-2c2d-5399-8ecc-10e2702be83a'::uuid, '15329dac-2653-5bf8-ab92-979bca93b089'::uuid, '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cb900e60-7943-5932-a595-d50851fbca91'::uuid, '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid, '15329dac-2653-5bf8-ab92-979bca93b089'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('28016bb3-fd1d-55c8-a428-79541b8a6f5f'::uuid, '15329dac-2653-5bf8-ab92-979bca93b089'::uuid, '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9e3f8ba6-768c-5699-80ef-2290eb98d8bf'::uuid,
  '28016bb3-fd1d-55c8-a428-79541b8a6f5f'::uuid,
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3149cdc2-5e4b-5e69-b0ef-007588334e7b'::uuid,
  '28016bb3-fd1d-55c8-a428-79541b8a6f5f'::uuid,
  '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid,
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8f767111-013e-5948-8b87-f0de01c0ee88'::uuid, 'd380f30b-3eb8-5b9c-8d1b-1650afcd5e01'::uuid, 'fd521a38-e933-583e-9739-3570f7da8371'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8651309d-6a42-59e9-a7d2-28f801c77861'::uuid, 'fd521a38-e933-583e-9739-3570f7da8371'::uuid, 'd380f30b-3eb8-5b9c-8d1b-1650afcd5e01'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('417ba5c4-35af-5361-97cf-298c39165a9a'::uuid, 'd380f30b-3eb8-5b9c-8d1b-1650afcd5e01'::uuid, 'fd521a38-e933-583e-9739-3570f7da8371'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ebe15f26-8f17-5304-8d4c-74c471cfa35b'::uuid, '95411eec-9c46-594a-827b-0f5c8ec314e1'::uuid, 'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4cf186c2-5a35-5b6f-b9fb-1b568591ae63'::uuid, 'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid, '95411eec-9c46-594a-827b-0f5c8ec314e1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6e357810-e9b1-53e0-bf10-ed69c6d736f8'::uuid, '95411eec-9c46-594a-827b-0f5c8ec314e1'::uuid, 'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9e92e545-92ce-5b42-931c-ac0e17ba5d2b'::uuid,
  '6e357810-e9b1-53e0-bf10-ed69c6d736f8'::uuid,
  '95411eec-9c46-594a-827b-0f5c8ec314e1'::uuid,
  'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9e9c11f2-a0dd-5bc6-873f-af6baf5275f7'::uuid,
  '6e357810-e9b1-53e0-bf10-ed69c6d736f8'::uuid,
  'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid,
  '95411eec-9c46-594a-827b-0f5c8ec314e1'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58690189-3404-5ff3-97e6-740cb4f35a4f'::uuid, '04960929-8e6d-526f-902a-3f56fae228ea'::uuid, '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('085aaac7-db0d-5920-9d9f-9c034685de62'::uuid, '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid, '04960929-8e6d-526f-902a-3f56fae228ea'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6a77febb-94a3-519c-97b9-b0d40d46106c'::uuid, '04960929-8e6d-526f-902a-3f56fae228ea'::uuid, '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30c49e5c-dca3-5b29-ab0d-3bafb25a0aca'::uuid, 'd43fc93e-7731-5f15-9829-c96382a66268'::uuid, 'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3169790f-f2e1-5d6c-8ffd-4f55ad4db630'::uuid, 'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid, 'd43fc93e-7731-5f15-9829-c96382a66268'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fc1398ed-226e-54a2-8ca3-8fbb9613a27f'::uuid, 'd43fc93e-7731-5f15-9829-c96382a66268'::uuid, 'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '64e93c82-65d0-5e87-bbf7-adf9ad3cc8ef'::uuid,
  'fc1398ed-226e-54a2-8ca3-8fbb9613a27f'::uuid,
  'd43fc93e-7731-5f15-9829-c96382a66268'::uuid,
  'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '945f1e95-0872-5dcc-8c90-575fab581f0f'::uuid,
  'fc1398ed-226e-54a2-8ca3-8fbb9613a27f'::uuid,
  'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid,
  'd43fc93e-7731-5f15-9829-c96382a66268'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('31358fc8-3ceb-5c27-a031-f84426b80ce1'::uuid, 'd43fc93e-7731-5f15-9829-c96382a66268'::uuid, '28443b95-67f6-5761-846b-913b1661ecc8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4e4eb897-6b67-530f-b671-c427520de50a'::uuid, '28443b95-67f6-5761-846b-913b1661ecc8'::uuid, 'd43fc93e-7731-5f15-9829-c96382a66268'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('beb868f3-1222-5c80-b3c2-b2d2d3ed3a71'::uuid, '28443b95-67f6-5761-846b-913b1661ecc8'::uuid, 'd43fc93e-7731-5f15-9829-c96382a66268'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae6bd699-1ded-5421-bc7a-3ab25f4d10bb'::uuid, '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid, '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a79eee6b-fff6-567c-977c-076a90cf5276'::uuid, '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid, '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('73b31c57-d3ec-516b-a1f0-7fc51c952f2a'::uuid, '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid, '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cb53c64f-1c22-52ce-8567-ef2e14f846ef'::uuid,
  '73b31c57-d3ec-516b-a1f0-7fc51c952f2a'::uuid,
  '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid,
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '070dd30e-45af-5e8d-a6f6-60ddecbfca9a'::uuid,
  '73b31c57-d3ec-516b-a1f0-7fc51c952f2a'::uuid,
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('02140f4b-cbe0-51e1-b737-747df1848ef9'::uuid, '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid, '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2c449623-415b-5e4f-ab05-27253365472c'::uuid, '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid, '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4644809b-9440-5409-a398-5127584c17b1'::uuid, '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid, '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('29a785e1-e455-594d-9039-e91367108bbe'::uuid, 'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid, '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dda30019-53c1-52be-85dd-dc9694fa379f'::uuid, '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid, 'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4f4e507f-d1cc-5f45-936d-92d4c3c9f275'::uuid, '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid, 'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '08345181-4bd4-5599-be68-b7b91a7d24e0'::uuid,
  '4f4e507f-d1cc-5f45-936d-92d4c3c9f275'::uuid,
  'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid,
  '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '44c54e4d-01b0-5029-94bc-ae3ab8f52c55'::uuid,
  '4f4e507f-d1cc-5f45-936d-92d4c3c9f275'::uuid,
  '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid,
  'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a4fa9bb7-472c-56f3-8fc0-f86a0ec6a5f8'::uuid, 'b7e832e2-7e38-5beb-ac9e-250ae24b06b4'::uuid, '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d57241db-efa8-5b34-9e30-f96796f020a5'::uuid, '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid, 'b7e832e2-7e38-5beb-ac9e-250ae24b06b4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('08551283-7fa8-52d0-98da-8396d7c9cfb8'::uuid, '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid, 'b7e832e2-7e38-5beb-ac9e-250ae24b06b4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5e90d9b3-7e56-53bc-bcec-67c20a328c17'::uuid, '377c353e-df57-5706-9534-8723efe02ecd'::uuid, '560e33d5-d1d4-54da-84b6-56f71fbcb908'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('047eb0aa-0959-5e0a-be8e-93367533d58f'::uuid, '560e33d5-d1d4-54da-84b6-56f71fbcb908'::uuid, '377c353e-df57-5706-9534-8723efe02ecd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3cfc3c71-b00f-5b26-8606-a907e5be7364'::uuid, '377c353e-df57-5706-9534-8723efe02ecd'::uuid, '560e33d5-d1d4-54da-84b6-56f71fbcb908'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '46b9d7b5-7942-5d8e-a1f9-4fa4061bf04a'::uuid,
  '3cfc3c71-b00f-5b26-8606-a907e5be7364'::uuid,
  '377c353e-df57-5706-9534-8723efe02ecd'::uuid,
  '560e33d5-d1d4-54da-84b6-56f71fbcb908'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ae525f04-fe1a-5492-aacb-274cacc0bdc0'::uuid,
  '3cfc3c71-b00f-5b26-8606-a907e5be7364'::uuid,
  '560e33d5-d1d4-54da-84b6-56f71fbcb908'::uuid,
  '377c353e-df57-5706-9534-8723efe02ecd'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b3c8f4ff-eaba-5a8f-81bc-60b03442b5e5'::uuid, '377c353e-df57-5706-9534-8723efe02ecd'::uuid, 'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fad50aae-8c46-5f47-9afa-7c14967867d4'::uuid, 'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid, '377c353e-df57-5706-9534-8723efe02ecd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e9ba213b-c3b4-578f-be71-0f9f9e96fc54'::uuid, '377c353e-df57-5706-9534-8723efe02ecd'::uuid, 'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b79fde73-ca38-5d72-aec5-edf2c4fdf600'::uuid, '3f854435-9399-5c74-9096-979bd941e61d'::uuid, 'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1bde3e9b-873a-5845-9d54-e74e67502d70'::uuid, 'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid, '3f854435-9399-5c74-9096-979bd941e61d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1556aa2c-ebed-597f-95e3-48e2a5ddd238'::uuid, '3f854435-9399-5c74-9096-979bd941e61d'::uuid, 'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c1a87278-ab5f-5a8f-b550-325a13221d0e'::uuid,
  '1556aa2c-ebed-597f-95e3-48e2a5ddd238'::uuid,
  '3f854435-9399-5c74-9096-979bd941e61d'::uuid,
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b1cc616b-a6a1-526c-88c0-0f1d94663a0d'::uuid,
  '1556aa2c-ebed-597f-95e3-48e2a5ddd238'::uuid,
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
  '3f854435-9399-5c74-9096-979bd941e61d'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d5ec7fb5-f859-5366-96a3-3dc7add79661'::uuid, 'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid, '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e253c85d-03e3-5d62-afd1-86ac2101287a'::uuid, '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid, 'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('15b494c9-1a51-5043-91a9-48ee439b97bf'::uuid, '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid, 'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1dd24627-37e5-55c5-a491-7c781fe563ba'::uuid, 'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid, 'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f5cf1dca-e805-5a02-ac8d-70941be3b5af'::uuid, 'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid, 'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f4bf1908-b0d0-58e6-a018-fc58bde8efb8'::uuid, 'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid, 'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c61e322f-9537-536d-ac20-bb08ba77fd5d'::uuid,
  'f4bf1908-b0d0-58e6-a018-fc58bde8efb8'::uuid,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8a9499cb-4775-5046-a929-3eb87b28339d'::uuid,
  'f4bf1908-b0d0-58e6-a018-fc58bde8efb8'::uuid,
  'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('71ad1324-9e87-572a-9487-c592ade61dcc'::uuid, '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid, 'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c4ae02a0-9b58-51d2-a010-f88dbb0df3fa'::uuid, 'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid, '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('04c8c332-de9e-5b89-bc41-eebc3910f662'::uuid, '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid, 'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('25575f43-94a0-5638-b6d7-944b8a7767c2'::uuid, '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid, 'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d9b1eaea-26c4-5508-89db-ff56f278f106'::uuid, 'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid, '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f3d6196f-6f48-5850-9890-86c55e8bf046'::uuid, '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid, 'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '78370f97-a2f9-52cc-9a39-e4f2ce7384bd'::uuid,
  'f3d6196f-6f48-5850-9890-86c55e8bf046'::uuid,
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c4d29a12-cb9c-55e0-838b-f87a42e30c69'::uuid,
  'f3d6196f-6f48-5850-9890-86c55e8bf046'::uuid,
  'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid,
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5bfbe22e-9537-5847-82e3-1d96603e4538'::uuid, '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c76d0aea-7618-5920-b504-53cae3f51a9b'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a41ed7f2-8d16-521b-b5e3-e7b4697b931c'::uuid, '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('40ccca3d-5fae-52b3-97da-a4cf464fbd88'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b89940a6-fdc8-5bb6-9c26-1809210de317'::uuid, '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8e597994-8477-5a18-b4ef-da9a6a31d362'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1642a07a-e810-5fac-94b8-7a8c7299c526'::uuid,
  '8e597994-8477-5a18-b4ef-da9a6a31d362'::uuid,
  '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid,
  '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bdbc364b-586c-5fea-8885-0bb092ac8398'::uuid,
  '8e597994-8477-5a18-b4ef-da9a6a31d362'::uuid,
  '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid,
  '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bb606879-4b80-528c-a846-40cc641dce26'::uuid, 'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid, '05f978d0-0879-58f9-a6dc-805cdda510f6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3f57ccf1-98f5-5ac5-a757-25b2a5bdc90f'::uuid, '05f978d0-0879-58f9-a6dc-805cdda510f6'::uuid, 'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('23f813ce-28ac-5742-86f7-eb1c4d337c01'::uuid, '05f978d0-0879-58f9-a6dc-805cdda510f6'::uuid, 'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b5baf9d3-fe0a-526c-a616-d3fdaa8a6684'::uuid, '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid, '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6ec6c639-f1b9-5e48-bbd7-73c8504f0cc1'::uuid, '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid, '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('500dc3a4-da19-5618-b92d-a406fbbbc2b2'::uuid, '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid, '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '08abf287-95aa-54f1-b470-20780fd42563'::uuid,
  '500dc3a4-da19-5618-b92d-a406fbbbc2b2'::uuid,
  '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid,
  '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c5a87ba4-d3a6-55c0-bad1-a2c2b76d3814'::uuid,
  '500dc3a4-da19-5618-b92d-a406fbbbc2b2'::uuid,
  '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid,
  '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('45601ddc-7e7d-5a0c-a114-bcf70e5bb064'::uuid, 'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid, 'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3452159a-f062-57f3-8f8f-46ec12da4a21'::uuid, 'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid, 'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b6c19629-059c-5ee0-9c29-da678e2029a2'::uuid, 'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid, 'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5c6a3ee0-00c7-541a-b37d-0df28f51a6d9'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('53f17135-b08f-50ce-b994-b8da95fc195f'::uuid, '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b9e882e0-a2f6-533f-aca4-f318c4a3356d'::uuid, '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c8f1794f-e78c-5ca4-948c-b7b326645a37'::uuid,
  'b9e882e0-a2f6-533f-aca4-f318c4a3356d'::uuid,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fa582778-0530-5e20-b568-2387f8caf9e8'::uuid,
  'b9e882e0-a2f6-533f-aca4-f318c4a3356d'::uuid,
  '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1e6943f7-1328-56d9-aba3-b2d09d54a651'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7830e8f1-5c39-5b30-8cbc-1cbd141b1b33'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

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

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('509281db-a498-5f00-baee-38ca86c42a85'::uuid, '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid, 'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('91031bbd-f70d-57ec-9e6d-38d0e488ff9e'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('93889d08-b46a-56f5-8d18-070b74159043'::uuid, 'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c18b3a9c-328f-518f-856a-a5c3c56bbe9a'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '755cbcf1-67ca-50d8-8e23-3ccee913ef3c'::uuid,
  'c18b3a9c-328f-518f-856a-a5c3c56bbe9a'::uuid,
  '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid,
  'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '406520fc-9c77-548e-a028-0a7a33331ce2'::uuid,
  'c18b3a9c-328f-518f-856a-a5c3c56bbe9a'::uuid,
  'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid,
  '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('09f7e50c-7126-5386-965e-f43d23e0d9ad'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'e64abfce-a585-5002-987d-172bddea50c0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bb93adf9-dbd6-5503-9e46-d5f4823e69ed'::uuid, 'e64abfce-a585-5002-987d-172bddea50c0'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('774119af-5f88-528e-8bcc-6a066f80ddf4'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'e64abfce-a585-5002-987d-172bddea50c0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e6e26a5-a5f1-5308-ad4e-725b1108832d'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, 'f324dc11-eb21-5df5-a147-1760b8514837'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('886a729c-2961-517d-8bdf-a95567096cb6'::uuid, 'f324dc11-eb21-5df5-a147-1760b8514837'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0b4385e7-7249-5109-99ea-065efd871e63'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, 'f324dc11-eb21-5df5-a147-1760b8514837'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3be09b15-40fc-5686-a7a5-21fca793cc24'::uuid,
  '0b4385e7-7249-5109-99ea-065efd871e63'::uuid,
  'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid,
  'f324dc11-eb21-5df5-a147-1760b8514837'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b3541a15-6a0e-5827-b0b4-eb17e4d770ce'::uuid,
  '0b4385e7-7249-5109-99ea-065efd871e63'::uuid,
  'f324dc11-eb21-5df5-a147-1760b8514837'::uuid,
  'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('245c447f-921a-5798-b3b8-f94944d8dbd0'::uuid, '59fc5e89-4210-5535-9f42-ed5204636320'::uuid, '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3583625d-29da-5b4f-83b8-ffc09edb1d74'::uuid, '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid, '59fc5e89-4210-5535-9f42-ed5204636320'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6d7d0d91-238d-5b8e-b2d3-f654ec8b8cea'::uuid, '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid, '59fc5e89-4210-5535-9f42-ed5204636320'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('099063b3-70c2-55e1-ac38-ef3a3042455c'::uuid, 'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7a501f4-37cf-5595-9a2f-21c47ee3713b'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, 'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cda4ef62-f2cd-5b2e-b932-b3c3db09d7c2'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, 'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd5f913bd-c292-554c-b1a8-8da30a4187d1'::uuid,
  'cda4ef62-f2cd-5b2e-b932-b3c3db09d7c2'::uuid,
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  '09c666a4-3bb7-5163-8075-029e573c454d'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ca148d16-1ffa-5bce-b65b-6e28902decb7'::uuid,
  'cda4ef62-f2cd-5b2e-b932-b3c3db09d7c2'::uuid,
  '09c666a4-3bb7-5163-8075-029e573c454d'::uuid,
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('50e5a058-598b-575a-8d24-ba50858b07f3'::uuid, 'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid, '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('537740e3-3fa1-5399-a9d3-4175eef69f02'::uuid, '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid, 'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1b8f7d59-69c5-5fc1-9d0d-67d90e944ab7'::uuid, '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid, 'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eac37836-2bb0-55f2-8c5e-a8fb8703149a'::uuid, '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid, '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3d9fd23b-b207-5c68-9022-52729fcda81d'::uuid, '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid, '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0dfd46b9-a4b7-5e28-8b88-f619c127a1e9'::uuid, '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid, '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8a41b513-080e-5c3a-a0e3-762726417e39'::uuid,
  '0dfd46b9-a4b7-5e28-8b88-f619c127a1e9'::uuid,
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e137e054-a990-5c93-8ce4-bd18402e326c'::uuid,
  '0dfd46b9-a4b7-5e28-8b88-f619c127a1e9'::uuid,
  '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid,
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('67842406-4283-5d8f-9638-99d435acf18c'::uuid, '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d702b636-769d-5cc4-b6e8-6fdacd0b84bf'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7f25f421-d3d6-5463-b2cc-20065e827ed6'::uuid, '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a2b866b4-458d-55f3-acb9-af851dbef2a1'::uuid, '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid, 'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b733cbe0-231c-558d-9b98-8ad79a94c074'::uuid, 'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid, '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a8435474-28f7-5859-89ab-5ba2743dc026'::uuid, '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid, 'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '016eb1f6-126a-5a02-82ba-cd9e968794ff'::uuid,
  'a8435474-28f7-5859-89ab-5ba2743dc026'::uuid,
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e05fdd90-066d-5dfc-b5c3-8b968d24bc02'::uuid,
  'a8435474-28f7-5859-89ab-5ba2743dc026'::uuid,
  'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid,
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d9265240-03a9-5992-900c-6f10919a1329'::uuid, 'e97a9de9-ada2-56c8-98fd-109c271f42ab'::uuid, 'dc822c01-3afa-540d-8c64-273165534be4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e0ea0c5-adc3-54f1-83b2-dabd76f6a9d6'::uuid, 'dc822c01-3afa-540d-8c64-273165534be4'::uuid, 'e97a9de9-ada2-56c8-98fd-109c271f42ab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('aedaaa7e-02e2-5b14-b52e-519d498cf14b'::uuid, 'dc822c01-3afa-540d-8c64-273165534be4'::uuid, 'e97a9de9-ada2-56c8-98fd-109c271f42ab'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d5133605-3623-553a-823e-315535a03fc0'::uuid, '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('937adf3f-9d24-585e-9bc0-d0c0d00cab40'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f56aa3d8-3d0b-55bc-8840-ee1271ebda27'::uuid, '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ab811a9d-1f43-50b6-b55c-1ba7287a670b'::uuid,
  'f56aa3d8-3d0b-55bc-8840-ee1271ebda27'::uuid,
  '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid,
  '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0273a68d-0a79-516a-8736-b7652771d390'::uuid,
  'f56aa3d8-3d0b-55bc-8840-ee1271ebda27'::uuid,
  '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid,
  '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7a8b79b-2b2d-51d5-8ef5-a3353fa9d7fb'::uuid, 'fd521a38-e933-583e-9739-3570f7da8371'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b1ad5859-a4a6-59f3-b0d9-ae0951ba3d0c'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, 'fd521a38-e933-583e-9739-3570f7da8371'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d239e085-207b-5578-b02d-3d27f2bde979'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, 'fd521a38-e933-583e-9739-3570f7da8371'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('15c8d805-239e-5cad-a116-8515accc1975'::uuid, 'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid, '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0fac63a6-6a11-5e58-b1a0-411fb1a43378'::uuid, '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid, 'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('efe049c7-91ee-5bb6-b026-fb63a7570b7a'::uuid, '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid, 'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5e5dcf66-77d3-5784-b2c3-f1d2da36d418'::uuid,
  'efe049c7-91ee-5bb6-b026-fb63a7570b7a'::uuid,
  'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid,
  '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '77d283b8-a890-5b76-8f02-c455076a0f97'::uuid,
  'efe049c7-91ee-5bb6-b026-fb63a7570b7a'::uuid,
  '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid,
  'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e9135a31-34cd-5f20-8e0a-669957208299'::uuid, 'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid, '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('940392f0-5fb4-5e8a-bb78-a08bab9fd47f'::uuid, '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid, 'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('179da1ba-d2c4-5382-9f64-baa69b6eb4f6'::uuid, '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid, 'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('65236145-4c3e-5b31-8cae-615dfa66766c'::uuid, '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid, 'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1cfa4804-c68f-5bc9-a08b-c7fa5494faaa'::uuid, 'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid, '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1be8d3d4-94c4-55ba-8810-48213efaf941'::uuid, '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid, 'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8554ab77-d161-577d-9b2c-16aa1b2eccf4'::uuid,
  '1be8d3d4-94c4-55ba-8810-48213efaf941'::uuid,
  '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid,
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '71d4415d-4c03-5984-a6f8-335e72c71777'::uuid,
  '1be8d3d4-94c4-55ba-8810-48213efaf941'::uuid,
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('961d65fb-6646-5b86-8ef3-be08a99520e0'::uuid, 'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid, 'b4ad0744-0326-5be3-98a2-fbc91bf8e8d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9c722a89-0766-52a3-ad8b-634b86ab9ed8'::uuid, 'b4ad0744-0326-5be3-98a2-fbc91bf8e8d2'::uuid, 'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('777be6a8-6204-5f1d-ab60-9c6accc885af'::uuid, 'b4ad0744-0326-5be3-98a2-fbc91bf8e8d2'::uuid, 'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('83e97aea-00ab-5e00-a6f4-20c5d059e674'::uuid, '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0c5bb3c3-980c-55df-93c0-83d190f269ec'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fad82a0b-e7d3-56bc-b90e-35d62d0b2e0b'::uuid, '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a5efe918-139e-5caa-b086-49dc8eebc6bc'::uuid,
  'fad82a0b-e7d3-56bc-b90e-35d62d0b2e0b'::uuid,
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '35c68acd-ee25-5848-bb8a-9035ae7c7f78'::uuid,
  'fad82a0b-e7d3-56bc-b90e-35d62d0b2e0b'::uuid,
  'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid,
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e00e13d8-4deb-5881-abc9-79729bc9777f'::uuid, '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid, '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('02e785be-3d7f-5749-9d82-2fe9ac46fa61'::uuid, '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid, '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('426c784f-3151-5e26-95e4-b7b8f4302354'::uuid, '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid, '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e056d2b-5940-5a2d-80c7-3f5a1cadd74d'::uuid, '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid, 'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('46d63cdc-5686-5794-a9c1-a76048a54737'::uuid, 'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid, '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('50379eb3-091e-5bca-b3cf-9442b7b927f0'::uuid, '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid, 'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8e04abdd-cf71-532a-8c92-69ef979a3eca'::uuid,
  '50379eb3-091e-5bca-b3cf-9442b7b927f0'::uuid,
  '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid,
  'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6acc8a59-f7ec-5549-9a75-5ec8bf10cca6'::uuid,
  '50379eb3-091e-5bca-b3cf-9442b7b927f0'::uuid,
  'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid,
  '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3f82fc5e-c737-58db-9541-dd2b865a9790'::uuid, '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fe1b1bfd-269a-578f-858d-70b30970093d'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d0e7315b-23bf-59cc-ae3e-b8331f814367'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('651a1b8f-2a53-5be3-8959-f42abcebc0f7'::uuid, '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid, '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('33067776-ab82-5e55-b3d3-e15f78cfb263'::uuid, '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid, '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c8a60a11-1661-5e76-ab5f-a00e86833455'::uuid, '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid, '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;
