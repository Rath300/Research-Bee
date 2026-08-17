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