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