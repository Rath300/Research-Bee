INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6f065bee-4383-5058-87b5-b5a1e4bf3b0c'::uuid, '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('756ed1c4-51c2-500e-95a1-24f572b5cff8'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3b59c631-9beb-5331-b8a5-4afba1984659'::uuid, '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4f218eb5-387b-51be-b35d-5dcf89d15756'::uuid, 'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid, '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f52d5bb9-a85e-55cd-ab29-25df6ed2251f'::uuid, '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid, 'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('472179de-fad9-5ad8-a3e8-d86b0c397724'::uuid, '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid, 'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b617dfac-7e3c-5428-8e65-4286d474d59a'::uuid,
  '472179de-fad9-5ad8-a3e8-d86b0c397724'::uuid,
  'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid,
  '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7a60f15c-0cf0-5cec-844e-e7e0cfd2c04c'::uuid,
  '472179de-fad9-5ad8-a3e8-d86b0c397724'::uuid,
  '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid,
  'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a5de755e-cc16-532e-a055-87290436e42d'::uuid, 'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid, '6920da0a-a803-5817-876c-c73449120e9d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72312107-a144-5bba-8460-43d06be320a4'::uuid, '6920da0a-a803-5817-876c-c73449120e9d'::uuid, 'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('18d92b35-261f-5e1f-9432-f22d0aa29692'::uuid, '6920da0a-a803-5817-876c-c73449120e9d'::uuid, 'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2be227e2-1970-5935-87bd-44a33d3b3b06'::uuid, '2f973087-14f2-5e74-b267-236219d92b2b'::uuid, 'cdf6b929-635e-5023-8098-73c102653a89'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d19c7c00-97db-551b-a053-638427bc2541'::uuid, 'cdf6b929-635e-5023-8098-73c102653a89'::uuid, '2f973087-14f2-5e74-b267-236219d92b2b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f5991076-a837-536b-85d1-59217e93aa95'::uuid, '2f973087-14f2-5e74-b267-236219d92b2b'::uuid, 'cdf6b929-635e-5023-8098-73c102653a89'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '19d77010-7453-5c71-afad-9a6db9e0f328'::uuid,
  'f5991076-a837-536b-85d1-59217e93aa95'::uuid,
  '2f973087-14f2-5e74-b267-236219d92b2b'::uuid,
  'cdf6b929-635e-5023-8098-73c102653a89'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '21500d4e-34c1-530b-bf5d-37705d49cbef'::uuid,
  'f5991076-a837-536b-85d1-59217e93aa95'::uuid,
  'cdf6b929-635e-5023-8098-73c102653a89'::uuid,
  '2f973087-14f2-5e74-b267-236219d92b2b'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e056d023-1acd-5a62-9304-4d1d37481b98'::uuid, '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid, 'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8a242556-383f-54b3-99df-4eb582b1e122'::uuid, 'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid, '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('91612032-3111-59c8-a715-1609beab48a0'::uuid, '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid, 'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5629a7e0-c045-5d70-820b-6696c8528a5d'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, 'e5d0f288-9f92-5299-b807-495269bcd8ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('98342b18-8fd6-5e32-9241-327ab3b5d8ed'::uuid, 'e5d0f288-9f92-5299-b807-495269bcd8ca'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5c1f1484-cd17-5475-844e-a51640f5810c'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, 'e5d0f288-9f92-5299-b807-495269bcd8ca'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e09b1747-a28c-5c03-903d-4c4a64c48457'::uuid,
  '5c1f1484-cd17-5475-844e-a51640f5810c'::uuid,
  '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid,
  'e5d0f288-9f92-5299-b807-495269bcd8ca'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '76154203-9568-5289-8fc3-0ef6657cc25b'::uuid,
  '5c1f1484-cd17-5475-844e-a51640f5810c'::uuid,
  'e5d0f288-9f92-5299-b807-495269bcd8ca'::uuid,
  '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e6bc4155-edfb-5b95-8d06-42785018f5cf'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, '42100420-3e43-57ff-96c6-5945409a49d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4d9af9de-d05f-5753-ae96-8d56ce944d82'::uuid, '42100420-3e43-57ff-96c6-5945409a49d1'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('afed21de-c1c7-5546-a8b5-92f7f5a6f380'::uuid, '42100420-3e43-57ff-96c6-5945409a49d1'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('996f8b0e-a93a-5cd2-b7d7-1c415eac85f9'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7f71a082-64a3-506f-b690-277629a64a6a'::uuid, '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9708bd4b-e3ca-5332-995c-9495fdd57394'::uuid, '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8085842c-9c6f-5bb6-811f-5bc818790f2f'::uuid,
  '9708bd4b-e3ca-5332-995c-9495fdd57394'::uuid,
  '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid,
  '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c66b293c-4579-5e17-b43b-7c1e23384e49'::uuid,
  '9708bd4b-e3ca-5332-995c-9495fdd57394'::uuid,
  '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid,
  '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1495735f-9820-5ec6-8c3d-ea6d32df3732'::uuid, 'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid, 'bf0af558-883d-514f-a05c-6d86200699c1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d0881878-0203-5a0e-8b07-e6258d999d2c'::uuid, 'bf0af558-883d-514f-a05c-6d86200699c1'::uuid, 'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('78632feb-c168-5854-ba19-e277a2d3856f'::uuid, 'bf0af558-883d-514f-a05c-6d86200699c1'::uuid, 'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f1b95c48-389e-538b-bbc8-266f87021c7e'::uuid, '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid, 'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1f130202-69ac-5cef-af63-d696b9c33e6a'::uuid, 'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid, '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8e245ef6-0170-566f-b90f-2e59e8bbb762'::uuid, '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid, 'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9081053f-c4e6-527e-ac22-309d16b9ef6d'::uuid,
  '8e245ef6-0170-566f-b90f-2e59e8bbb762'::uuid,
  '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid,
  'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bdfa2817-840a-59a9-b2a6-e531e514538a'::uuid,
  '8e245ef6-0170-566f-b90f-2e59e8bbb762'::uuid,
  'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid,
  '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;