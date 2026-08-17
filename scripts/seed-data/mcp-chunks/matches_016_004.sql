INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c3ba8d40-004a-5368-bbbd-5b57364468d2'::uuid,
  'e4be50fe-dff9-5e8e-b7f8-aa5c745fd756'::uuid,
  '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid,
  '2f973087-14f2-5e74-b267-236219d92b2b'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd8f95444-d413-5a88-89b7-c52ef24c609c'::uuid,
  'e4be50fe-dff9-5e8e-b7f8-aa5c745fd756'::uuid,
  '2f973087-14f2-5e74-b267-236219d92b2b'::uuid,
  '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c0c55676-1a94-51e3-be7b-745e0b4263ed'::uuid, '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid, '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('534da376-9b23-5319-9489-3b94022bd380'::uuid, '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid, '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('72e88d35-4358-55f9-8d66-326542e35ef2'::uuid, '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid, '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c06a548e-7121-5131-985b-32a9d19d698d'::uuid, 'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('23e7ad1b-0c4d-500d-9c56-a5f121374b77'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, 'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('623ff33e-8ec9-51db-877f-1cd5fc3b425e'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, 'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '735fa2b2-0f97-5d21-8572-ff0ef3965553'::uuid,
  '623ff33e-8ec9-51db-877f-1cd5fc3b425e'::uuid,
  'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid,
  '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e689fad1-d266-5201-8e8a-61bf42988230'::uuid,
  '623ff33e-8ec9-51db-877f-1cd5fc3b425e'::uuid,
  '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid,
  'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f2abd5fe-20c0-5038-b559-52db32b0c315'::uuid, '251eed55-e7bd-5e13-a2ca-cea6ceee8615'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b5f27c5a-a311-5a0c-85e4-a107b3634de4'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, '251eed55-e7bd-5e13-a2ca-cea6ceee8615'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('90f28242-a708-5799-ad25-767ee843ace2'::uuid, '251eed55-e7bd-5e13-a2ca-cea6ceee8615'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e73f5d19-0936-58f0-a6db-72bf09a3c6d7'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, 'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aab1d5e5-cdea-5a33-b738-2890a7d020fd'::uuid, 'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('86f954b9-7bfe-5da1-a65e-34c06733c282'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, 'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'db6fef8a-a86a-5c2d-be8d-e38d1bf39241'::uuid,
  '86f954b9-7bfe-5da1-a65e-34c06733c282'::uuid,
  'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid,
  'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '98ba3f47-5560-556b-a0aa-c30c9255e4a0'::uuid,
  '86f954b9-7bfe-5da1-a65e-34c06733c282'::uuid,
  'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid,
  'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('75145aa5-ad1b-5fca-bf9d-ff54b0674092'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('67b179d6-eb75-564b-8606-227b818bf3b1'::uuid, '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('da86efa0-fc9e-5855-b650-8d40a0916c90'::uuid, '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4cdc8614-8251-5538-953f-570fa78234a4'::uuid, '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid, '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7a9e9033-6a23-5e7e-89bf-0fdb5cb6a008'::uuid, '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid, '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3e29e05d-7300-5c59-a1b6-12af38d5a764'::uuid, '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid, '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c9fdd311-0727-5cc5-80ce-6160801ca2ed'::uuid,
  '3e29e05d-7300-5c59-a1b6-12af38d5a764'::uuid,
  '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid,
  '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e0fdba39-6bb0-5bd5-b153-2f26ef6d60f6'::uuid,
  '3e29e05d-7300-5c59-a1b6-12af38d5a764'::uuid,
  '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid,
  '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c127d992-b07a-50ae-890f-888b84c3b09d'::uuid, 'e689d62a-1c67-5a79-87ec-81b794bd9c0f'::uuid, '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('42e4cb55-d63e-514e-9d71-5397b933d3e7'::uuid, '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid, 'e689d62a-1c67-5a79-87ec-81b794bd9c0f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1d738f01-5904-5bc0-bb32-682285e257f3'::uuid, '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid, 'e689d62a-1c67-5a79-87ec-81b794bd9c0f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a691c346-3548-5565-be42-2f36ae54422f'::uuid, '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('88cd3da6-0a01-5a98-b690-d94316a298c4'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fc860878-afcd-5941-90c6-995bdb76a2cb'::uuid, '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a6dc417b-4cab-5c6a-bb38-90708a59d5cf'::uuid,
  'fc860878-afcd-5941-90c6-995bdb76a2cb'::uuid,
  '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid,
  'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7a7189c0-8745-585a-9808-39c31ba7594f'::uuid,
  'fc860878-afcd-5941-90c6-995bdb76a2cb'::uuid,
  'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid,
  '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('69ef2bbf-0257-5745-8004-8afc1571628f'::uuid, '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c1fc813a-ef12-5dbe-b7a8-4858f48cbab2'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3c8510e7-e07a-5667-80a1-3f584b13f419'::uuid, '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('919a59c8-4f11-5490-9043-af9f7cfebec7'::uuid, '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid, '345c8171-44e4-513a-98ee-6a601680d628'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b04931af-061e-58e1-b4f5-a71a69d2c4df'::uuid, '345c8171-44e4-513a-98ee-6a601680d628'::uuid, '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('44428b8e-ed10-5552-8556-33f44b35ef9a'::uuid, '345c8171-44e4-513a-98ee-6a601680d628'::uuid, '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;