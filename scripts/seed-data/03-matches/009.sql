INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '04ed7681-93d9-5685-a978-b7479e855c5f'::uuid,
  'f68443fa-3d2a-594c-b3d0-bc591984e5d4'::uuid,
  'a130656b-33b4-5818-9d16-667ae077b735'::uuid,
  '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a16aad67-9583-534a-92d6-d63ecb57acea'::uuid, 'a92d4ffb-9625-5c8a-ab6f-18a27c05992d'::uuid, '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1a7c8de0-e7fe-5685-8237-1c142ae0827b'::uuid, '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid, 'a92d4ffb-9625-5c8a-ab6f-18a27c05992d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('62d5c2fd-9096-5341-9119-db8c850f63c8'::uuid, '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid, 'a92d4ffb-9625-5c8a-ab6f-18a27c05992d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('956f1525-a4ca-5173-8dd9-4eaf7ffcc504'::uuid, 'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid, '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b5753867-5d98-56cd-91bf-a179b39b9243'::uuid, '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid, 'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e3c73395-cb14-5a6c-bb3c-49a5b3da99c7'::uuid, '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid, 'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '465ee84f-e78c-5cbc-9025-50585f6cd621'::uuid,
  'e3c73395-cb14-5a6c-bb3c-49a5b3da99c7'::uuid,
  'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid,
  '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b055be7d-4a2f-59ad-b2e9-d6f50fbac8a8'::uuid,
  'e3c73395-cb14-5a6c-bb3c-49a5b3da99c7'::uuid,
  '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid,
  'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('08d79293-6782-52c4-9eaf-66f8bcd36c58'::uuid, 'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid, '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('11e76048-b0da-5d5c-ad20-8c1acc305a28'::uuid, '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid, 'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('aabff28a-d154-5db1-bd9c-23d968a1e3fa'::uuid, '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid, 'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('682898a4-0ee9-559d-a0ad-12a1d9e38edb'::uuid, 'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid, 'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4be08810-a7c5-5159-9526-ab52991e976f'::uuid, 'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid, 'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('faec31a8-17e5-528c-b68f-3c4bf96f43e6'::uuid, 'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid, 'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cac88e9f-8932-59bc-aa16-b8ef8c77ce10'::uuid,
  'faec31a8-17e5-528c-b68f-3c4bf96f43e6'::uuid,
  'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid,
  'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0a7628f1-af29-56ea-aabc-fa264843d092'::uuid,
  'faec31a8-17e5-528c-b68f-3c4bf96f43e6'::uuid,
  'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid,
  'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('61f1ddb4-82db-534e-8432-635cea90fa2b'::uuid, '545134f1-47eb-57dc-89af-f53e59335d17'::uuid, '809c2fce-167e-593f-99c1-13a851571fb2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a38b9a54-0322-515f-849a-b5068442d105'::uuid, '809c2fce-167e-593f-99c1-13a851571fb2'::uuid, '545134f1-47eb-57dc-89af-f53e59335d17'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c51b410d-4aa6-597d-8131-4143430323ea'::uuid, '545134f1-47eb-57dc-89af-f53e59335d17'::uuid, '809c2fce-167e-593f-99c1-13a851571fb2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3de23bf4-f728-5a70-811d-43ecdae9737c'::uuid, '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid, '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e0778ec9-3e7a-562c-a36b-056f66a5ed44'::uuid, '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid, '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1ca2ddf9-0b18-5d99-a538-112376435225'::uuid, '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid, '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1eca5da2-e9a5-57e5-98cd-864f85a9043e'::uuid,
  '1ca2ddf9-0b18-5d99-a538-112376435225'::uuid,
  '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid,
  '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9ef0c9cd-3694-56e6-945b-5139e85e2b73'::uuid,
  '1ca2ddf9-0b18-5d99-a538-112376435225'::uuid,
  '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid,
  '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('56e11cde-8ef6-5c1d-884c-e209a895249c'::uuid, 'dab59244-4f3e-5e87-a1c5-d2738f719a6a'::uuid, '743deae9-0a26-5472-9f76-6e4aea019515'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1911e3dc-0483-5818-9ec6-14143eabc0a8'::uuid, '743deae9-0a26-5472-9f76-6e4aea019515'::uuid, 'dab59244-4f3e-5e87-a1c5-d2738f719a6a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e254eabe-c0d6-58c3-9423-09629092a5b7'::uuid, '743deae9-0a26-5472-9f76-6e4aea019515'::uuid, 'dab59244-4f3e-5e87-a1c5-d2738f719a6a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1cd013a6-4372-5d40-aad2-c1f4d280084c'::uuid, '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid, '2e17579b-6b8b-5000-b30d-a2dde2efb47d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6c57d403-672e-5eed-ad5d-f1f7986da182'::uuid, '2e17579b-6b8b-5000-b30d-a2dde2efb47d'::uuid, '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d194ed94-afc5-5f63-832f-0a64cb03f928'::uuid, '2e17579b-6b8b-5000-b30d-a2dde2efb47d'::uuid, '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'babf7bb3-98a0-57e2-95bf-cfac59b95054'::uuid,
  'd194ed94-afc5-5f63-832f-0a64cb03f928'::uuid,
  '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid,
  '2e17579b-6b8b-5000-b30d-a2dde2efb47d'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '522f3186-258d-5990-a23b-649daaf9b2bd'::uuid,
  'd194ed94-afc5-5f63-832f-0a64cb03f928'::uuid,
  '2e17579b-6b8b-5000-b30d-a2dde2efb47d'::uuid,
  '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8448f5e4-7fef-5ac6-b4a3-3aeda7458ba3'::uuid, '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid, 'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('767330c7-3764-53e6-b043-f8f59d2d5c1e'::uuid, 'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid, '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b4ef94f6-b1c7-59d2-916f-e82040ba871f'::uuid, '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid, 'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3996b07a-7513-56d9-b8c6-26a1a4c0a632'::uuid, 'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid, '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c712b6cd-681e-5afd-9970-da45fbdee18f'::uuid, '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid, 'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5108c308-17e0-574a-a77c-307e7ba3601d'::uuid, '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid, 'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd3e91528-0928-51c2-a2d9-ed7001ab05e2'::uuid,
  '5108c308-17e0-574a-a77c-307e7ba3601d'::uuid,
  'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid,
  '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'adf74617-6fcb-55d5-b8ef-26a837403bce'::uuid,
  '5108c308-17e0-574a-a77c-307e7ba3601d'::uuid,
  '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid,
  'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6011abd1-5991-5c1d-88b4-cb8f017e421c'::uuid, 'e054a422-05f1-59ce-8a48-b1440c9b8b07'::uuid, '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cfbb3079-5062-5455-a108-4913b1c9b058'::uuid, '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid, 'e054a422-05f1-59ce-8a48-b1440c9b8b07'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7a046579-5bea-50c5-8085-93bd838686f1'::uuid, '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid, 'e054a422-05f1-59ce-8a48-b1440c9b8b07'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9b4605c7-57f3-5417-9ee8-cd3245513d00'::uuid, '74683992-9a31-552a-8e82-cd7205332508'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2a26d681-1e20-571b-856a-62f5104ad7bd'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, '74683992-9a31-552a-8e82-cd7205332508'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c06db72b-f22b-5d26-8b4a-1e7223caa4d0'::uuid, '74683992-9a31-552a-8e82-cd7205332508'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5421ffcb-561b-5a62-bb73-a99550f522ca'::uuid,
  'c06db72b-f22b-5d26-8b4a-1e7223caa4d0'::uuid,
  '74683992-9a31-552a-8e82-cd7205332508'::uuid,
  'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'eca37b31-5273-5329-a3c1-8d6cf90aee5c'::uuid,
  'c06db72b-f22b-5d26-8b4a-1e7223caa4d0'::uuid,
  'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid,
  '74683992-9a31-552a-8e82-cd7205332508'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0772b52e-bbf5-5f24-a2aa-998a10d545d0'::uuid, 'b822e46a-24e0-5c86-819e-929acfc5a4df'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c76d166d-cb5f-5433-8baf-433ce813473a'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, 'b822e46a-24e0-5c86-819e-929acfc5a4df'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a8a2a720-1655-5d86-ba17-51f48d049736'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, 'b822e46a-24e0-5c86-819e-929acfc5a4df'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9382c427-ebe6-5f3f-8319-6ebb11e15003'::uuid, 'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid, '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3c904c7-64c4-5cea-abb1-0a0490c1d739'::uuid, '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid, 'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f5f577b2-93ee-5bc6-b60e-d359fdb85370'::uuid, '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid, 'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '37abdf90-b1a1-5002-a01f-a5bc051553c1'::uuid,
  'f5f577b2-93ee-5bc6-b60e-d359fdb85370'::uuid,
  'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid,
  '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '045c112e-81b1-5400-8421-1c1238095aab'::uuid,
  'f5f577b2-93ee-5bc6-b60e-d359fdb85370'::uuid,
  '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid,
  'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ccd167b1-f635-5ca6-8571-1f10e778be31'::uuid, 'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1b82c5a0-b83c-5db7-9908-bf7868bccdb6'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, 'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('604e4718-a50c-5a77-8127-d38005a63d8c'::uuid, 'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('57ef69cd-ad59-560e-9bc5-d5a4ce654bed'::uuid, '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid, '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dfcd0114-4dc1-5c08-8405-b8aec51718df'::uuid, '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid, '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('da3656d0-d0f2-5cd6-b6c5-624cc835c13b'::uuid, '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid, '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0582b39f-0361-5b57-b2ee-f78f8a8c3b50'::uuid,
  'da3656d0-d0f2-5cd6-b6c5-624cc835c13b'::uuid,
  '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid,
  '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '569962d6-f1e5-5987-9724-ee7b283448fa'::uuid,
  'da3656d0-d0f2-5cd6-b6c5-624cc835c13b'::uuid,
  '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid,
  '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6959a5ed-1343-50c1-b4a4-c7547b4667c2'::uuid, '930dbf77-a75a-5e7d-9a6a-555d7e26ff51'::uuid, '02513dbb-0dc9-5a45-aaa5-3fd7c0d8c871'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f08fa563-6080-53f7-96fc-e67c24d49a8c'::uuid, '02513dbb-0dc9-5a45-aaa5-3fd7c0d8c871'::uuid, '930dbf77-a75a-5e7d-9a6a-555d7e26ff51'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('17ec7ed9-c170-5526-a938-471adba25787'::uuid, '02513dbb-0dc9-5a45-aaa5-3fd7c0d8c871'::uuid, '930dbf77-a75a-5e7d-9a6a-555d7e26ff51'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f41998d3-e7e9-52ff-b6eb-535ba565b238'::uuid, '4dd81124-bec2-5847-bd6a-cdaade4f77c2'::uuid, '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('08c0b071-7b25-532e-88af-02a45b1afd11'::uuid, '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid, '4dd81124-bec2-5847-bd6a-cdaade4f77c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('65de0ae7-d5dd-589c-83ef-5ac7d8bccdc2'::uuid, '4dd81124-bec2-5847-bd6a-cdaade4f77c2'::uuid, '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '879f81a6-39db-54ab-9de6-0df9fc69504b'::uuid,
  '65de0ae7-d5dd-589c-83ef-5ac7d8bccdc2'::uuid,
  '4dd81124-bec2-5847-bd6a-cdaade4f77c2'::uuid,
  '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '549b14f4-7821-557e-a6a3-2f72c1d0fb54'::uuid,
  '65de0ae7-d5dd-589c-83ef-5ac7d8bccdc2'::uuid,
  '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid,
  '4dd81124-bec2-5847-bd6a-cdaade4f77c2'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('98018e8d-567f-52f1-83b1-eab4868751bb'::uuid, '523b980a-c957-5e7a-8cd0-abb466412214'::uuid, 'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('60e7a368-a1ad-54fa-b8ae-4000f65576bf'::uuid, 'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid, '523b980a-c957-5e7a-8cd0-abb466412214'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('70f40539-c6a5-59dd-921b-59f732690501'::uuid, '523b980a-c957-5e7a-8cd0-abb466412214'::uuid, 'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c1633821-fecc-53f5-b37d-ddb121eef432'::uuid, 'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid, '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9bdf9cf2-019a-5151-9760-278b05003342'::uuid, '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid, 'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('04bc5984-68ee-5372-ab15-605303a8003a'::uuid, '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid, 'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c0ad0bbf-23b8-59f3-9d53-87580f40a9a7'::uuid,
  '04bc5984-68ee-5372-ab15-605303a8003a'::uuid,
  'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid,
  '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7955378e-a52c-5b81-8134-99b6baea3680'::uuid,
  '04bc5984-68ee-5372-ab15-605303a8003a'::uuid,
  '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid,
  'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('837b4a08-cef3-541a-9d76-7ca04ecdc7cf'::uuid, 'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('857b74e4-8f16-5d16-8189-dfa0dedc6e0a'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, 'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9febbcb4-9ac4-5db0-98ab-5303458bc31e'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, 'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('31a25990-9471-5025-b3a3-d757de70bccb'::uuid, 'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid, 'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e0d89047-7e47-5a16-8358-5b96483e2aac'::uuid, 'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid, 'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5c027b68-5271-5822-91a9-e347b78cfc14'::uuid, 'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid, 'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd96e0fd0-6038-5f49-a64b-1142ff4e1ae5'::uuid,
  '5c027b68-5271-5822-91a9-e347b78cfc14'::uuid,
  'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid,
  'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'aa6d34f1-0bc6-5b4a-988a-95898b0b1d06'::uuid,
  '5c027b68-5271-5822-91a9-e347b78cfc14'::uuid,
  'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid,
  'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1994a61b-326e-59c8-b2e3-3d74c725412b'::uuid, '2ccca6e5-bb28-5a0e-abe4-066695c1a229'::uuid, '157a061e-6fb6-53f2-adab-f285a291df07'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b7604982-5773-51bb-9a24-91bf4bfccfd4'::uuid, '157a061e-6fb6-53f2-adab-f285a291df07'::uuid, '2ccca6e5-bb28-5a0e-abe4-066695c1a229'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6ef6f635-ec74-53b2-bc6a-93bab3b04086'::uuid, '157a061e-6fb6-53f2-adab-f285a291df07'::uuid, '2ccca6e5-bb28-5a0e-abe4-066695c1a229'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('78070289-1edf-5060-acd2-326617cb432f'::uuid, '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid, 'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cb42dd98-7c74-53f3-beca-f45bb4826c90'::uuid, 'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid, '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ebb98330-8cc5-526c-ab4b-a705c28f8572'::uuid, '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid, 'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8503bc61-e81e-5217-9605-f4afadf0837a'::uuid,
  'ebb98330-8cc5-526c-ab4b-a705c28f8572'::uuid,
  '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid,
  'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b179c4ae-9055-55ae-9c87-b19a45ec408a'::uuid,
  'ebb98330-8cc5-526c-ab4b-a705c28f8572'::uuid,
  'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid,
  '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e66ddd3-8f8e-5cb7-b893-9f66100f70bd'::uuid, '8dcc64e5-1781-5d54-acde-4fe2a4718700'::uuid, '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6bd15ae6-dce2-5fb9-9842-1b5ca0ae521e'::uuid, '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid, '8dcc64e5-1781-5d54-acde-4fe2a4718700'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('411da486-567e-55d4-a0df-5dcaf1533a87'::uuid, '8dcc64e5-1781-5d54-acde-4fe2a4718700'::uuid, '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('06f171cf-4e95-548d-8ccd-b3583a4ca9fe'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0b5f1bed-60a9-5bdb-b400-3015cdfbe871'::uuid, '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0a0e4c93-b1a7-5ba8-a4a3-2189d0b70c7d'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8b9ecdf8-e238-5f81-a1b4-5fc3cce4c0ca'::uuid,
  '0a0e4c93-b1a7-5ba8-a4a3-2189d0b70c7d'::uuid,
  '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid,
  '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a77c0315-479f-599e-a22c-792e3b79d232'::uuid,
  '0a0e4c93-b1a7-5ba8-a4a3-2189d0b70c7d'::uuid,
  '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid,
  '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('97b5864e-ec24-57aa-990a-81c3284ecb97'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e61e4c48-7a70-510a-bd18-22cd769bebf1'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4843d84c-8687-5546-8845-83972a4ce0fa'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fdd55fa9-5f81-5d4b-a0b0-08223e11b3cf'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1a13748d-61de-5ef8-95a7-02d96ac34efe'::uuid, '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2dde3668-9362-5557-bd46-6c2e7368388b'::uuid, '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '23edd94f-26d3-5fe6-b29a-98f00069d333'::uuid,
  '2dde3668-9362-5557-bd46-6c2e7368388b'::uuid,
  'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid,
  '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '799e47ee-4526-501a-a86a-a4d8d542210c'::uuid,
  '2dde3668-9362-5557-bd46-6c2e7368388b'::uuid,
  '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid,
  'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89284daf-14d4-5344-9d9c-b2007ca32ef8'::uuid, 'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid, '24d08bca-e89e-5133-9580-3c3af259e917'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('42150027-efcc-5262-ae02-0df978ebfcbe'::uuid, '24d08bca-e89e-5133-9580-3c3af259e917'::uuid, 'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('07ab3bd7-2dba-5eec-905f-725c66db3877'::uuid, '24d08bca-e89e-5133-9580-3c3af259e917'::uuid, 'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('97a67e00-1b9f-5de7-bb14-6f0fd390e76e'::uuid, 'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1cd7c726-5de1-547c-b30a-2136acae0163'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, 'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fb9b85f2-ca9d-579e-86a3-81ff053d93e3'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, 'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '223a1515-5445-588f-88d0-e5ceeeb011d2'::uuid,
  'fb9b85f2-ca9d-579e-86a3-81ff053d93e3'::uuid,
  'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid,
  '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ee04c4af-b17b-5f32-ac81-e3d30c2c608b'::uuid,
  'fb9b85f2-ca9d-579e-86a3-81ff053d93e3'::uuid,
  '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid,
  'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('31c34d59-7d2b-5dd2-bab1-ab626783461e'::uuid, '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid, '1225191a-019f-56d5-8355-03d7ea853341'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cca7c673-f4cd-5faf-9c85-898236302af3'::uuid, '1225191a-019f-56d5-8355-03d7ea853341'::uuid, '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('686ad558-c79e-5c96-afde-a1caa7f9bc33'::uuid, '1225191a-019f-56d5-8355-03d7ea853341'::uuid, '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a5a3bdd8-0fec-5a2b-af44-acba0914b412'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, '6fca6e88-1c4f-5c43-922a-3f20d6ddc049'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e57e707c-87ce-5c94-aa1d-5d81264c6184'::uuid, '6fca6e88-1c4f-5c43-922a-3f20d6ddc049'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('233ca1c3-a393-57e5-8672-36e749e9ea2e'::uuid, '6fca6e88-1c4f-5c43-922a-3f20d6ddc049'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dc74ebe9-c3d0-50b7-98c4-5ca384cd117e'::uuid,
  '233ca1c3-a393-57e5-8672-36e749e9ea2e'::uuid,
  '781e7da5-24de-584d-b14b-8380dabd974e'::uuid,
  '6fca6e88-1c4f-5c43-922a-3f20d6ddc049'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c1c793a4-a1f2-5b38-9ca6-43a080a97f5f'::uuid,
  '233ca1c3-a393-57e5-8672-36e749e9ea2e'::uuid,
  '6fca6e88-1c4f-5c43-922a-3f20d6ddc049'::uuid,
  '781e7da5-24de-584d-b14b-8380dabd974e'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9737868-6d5c-5e33-bafa-7387f3483cf1'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b0fb97c-67ea-5d72-b11e-c2f186bcd2a3'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('58675ce8-15e7-5557-ba44-bf4fff6fd07f'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8013a10f-6e2c-5d36-aac8-4647219bc472'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2ccb023d-56fc-5bf8-b962-fcca3c632c56'::uuid, '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c7045113-079f-5030-9fa6-7ed8862e5cf2'::uuid, '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'db4ee18d-4414-55f8-925a-6bbb685ff128'::uuid,
  'c7045113-079f-5030-9fa6-7ed8862e5cf2'::uuid,
  'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid,
  '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '465bd012-35a9-5663-bbdd-2d773e117cec'::uuid,
  'c7045113-079f-5030-9fa6-7ed8862e5cf2'::uuid,
  '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid,
  'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a4efeed3-f617-5b74-bf47-62ea68dbe2e5'::uuid, 'c36122a7-4e23-5387-9c04-70087a1dee13'::uuid, 'a47f9557-3126-5157-8316-17a32c536be0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0b03a30e-8ad5-5eec-bd3f-74fdd8ed884c'::uuid, 'a47f9557-3126-5157-8316-17a32c536be0'::uuid, 'c36122a7-4e23-5387-9c04-70087a1dee13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f58264e2-a53d-578e-ab1a-efa7e224fb11'::uuid, 'a47f9557-3126-5157-8316-17a32c536be0'::uuid, 'c36122a7-4e23-5387-9c04-70087a1dee13'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('748885fc-4b36-5d4f-be0f-d09ccbebcbd0'::uuid, 'babd2038-73bf-59da-ae80-09745173f792'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8a1e011-6c13-5781-ae94-ee50276b716b'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, 'babd2038-73bf-59da-ae80-09745173f792'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a12c7541-1309-57af-819e-31cca7955baa'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, 'babd2038-73bf-59da-ae80-09745173f792'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '880df381-da99-50ee-991e-bc572c405bb5'::uuid,
  'a12c7541-1309-57af-819e-31cca7955baa'::uuid,
  'babd2038-73bf-59da-ae80-09745173f792'::uuid,
  'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '262fcfc0-6de4-5d80-b994-b5a8bfb7b0e5'::uuid,
  'a12c7541-1309-57af-819e-31cca7955baa'::uuid,
  'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid,
  'babd2038-73bf-59da-ae80-09745173f792'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7381759a-5a6e-54e5-a622-abd5bb7584b2'::uuid, 'ac5f51b9-619a-5ecc-8be0-95f17fbf70fb'::uuid, 'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('580ad032-4309-5c83-8993-37378baccc7f'::uuid, 'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid, 'ac5f51b9-619a-5ecc-8be0-95f17fbf70fb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e7777b9d-b570-52a0-867f-08bcb4ffb190'::uuid, 'ac5f51b9-619a-5ecc-8be0-95f17fbf70fb'::uuid, 'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('161af220-bd68-57d7-a851-6ff60dcab3cd'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bd2a876c-b7a7-5397-a97d-7b823556c693'::uuid, '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dd35dfa8-28a5-56ee-8152-8ba6d19b8273'::uuid, '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1518f0c3-820b-5e72-a329-a8b4477300cb'::uuid,
  'dd35dfa8-28a5-56ee-8152-8ba6d19b8273'::uuid,
  'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid,
  '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f4334c5b-6186-53a7-9111-d3cc1a7939c6'::uuid,
  'dd35dfa8-28a5-56ee-8152-8ba6d19b8273'::uuid,
  '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid,
  'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7ab501a2-c4fe-5744-8be0-0ad95339e12f'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('77a60428-9a01-5d16-888e-0971ad6803dd'::uuid, '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('98cac5ce-a7a5-5a24-a92b-f5cfe7b3a25e'::uuid, '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3039e49a-1e1b-5088-a615-751b2cd464c5'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, '5356c221-d65a-5f9c-921b-112439242ea1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('26ffb169-37ca-521f-8a58-40f601c9fe11'::uuid, '5356c221-d65a-5f9c-921b-112439242ea1'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5c14ad0e-2c72-594a-b2d4-cb58345f2b24'::uuid, '5356c221-d65a-5f9c-921b-112439242ea1'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ef6ef014-2908-58dc-8bf9-9848e850560a'::uuid,
  '5c14ad0e-2c72-594a-b2d4-cb58345f2b24'::uuid,
  '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid,
  '5356c221-d65a-5f9c-921b-112439242ea1'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2fcf3e48-09fa-540d-9df9-a4f592fd1631'::uuid,
  '5c14ad0e-2c72-594a-b2d4-cb58345f2b24'::uuid,
  '5356c221-d65a-5f9c-921b-112439242ea1'::uuid,
  '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('46e60af9-d1c6-5886-95e9-fafe1189e5dc'::uuid, '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid, 'fa2365d8-493b-584a-8249-5fdb62f40ca7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dd661bb8-a356-5824-a5d0-3842ac3bf707'::uuid, 'fa2365d8-493b-584a-8249-5fdb62f40ca7'::uuid, '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('191bc58f-0e92-5918-bce2-edc11a44fb86'::uuid, '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid, 'fa2365d8-493b-584a-8249-5fdb62f40ca7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ab3312b2-b8aa-517f-9681-dd460368dc23'::uuid, '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b1c9986-35ec-5f4f-89fb-2d6c61425d85'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9f82d219-bfec-5a88-b15d-39f5235e42fd'::uuid, '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1df1c244-0ec7-584b-89e5-7a98a9ac02cc'::uuid,
  '9f82d219-bfec-5a88-b15d-39f5235e42fd'::uuid,
  '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid,
  'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '46f4d130-b8ce-5fd7-8064-ce2bdbb4bfef'::uuid,
  '9f82d219-bfec-5a88-b15d-39f5235e42fd'::uuid,
  'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid,
  '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9f075b40-eff0-5a14-9708-7ca25a84fd49'::uuid, 'e8959cb7-aa69-5b68-afde-e4bb16d5a608'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f44cd324-ec6f-5bdf-8748-47073689d326'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, 'e8959cb7-aa69-5b68-afde-e4bb16d5a608'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b712195b-6c9e-5419-b54c-bcfe764a5b18'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, 'e8959cb7-aa69-5b68-afde-e4bb16d5a608'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b0ba712-8c2b-5c29-bf5b-cb80f71945fb'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('645520a3-025c-50d6-bfbc-2e8a6577f827'::uuid, '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('861d54fc-f6d0-54c7-b67f-5de0d008fa1b'::uuid, '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fd69d77f-b673-578e-a2b2-447713514389'::uuid,
  '861d54fc-f6d0-54c7-b67f-5de0d008fa1b'::uuid,
  'a130656b-33b4-5818-9d16-667ae077b735'::uuid,
  '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f22b688d-7e5e-55b6-9d5e-a9c2ba35d0c8'::uuid,
  '861d54fc-f6d0-54c7-b67f-5de0d008fa1b'::uuid,
  '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid,
  'a130656b-33b4-5818-9d16-667ae077b735'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5eb946be-86a4-5178-83b9-45ddd7cf49d3'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00a9882f-7a93-5649-bca8-1d362a35ce74'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e3f6cb81-7424-5d40-a66a-053355e06032'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7be166e4-baa5-5b9e-9aee-ea407f39fb8a'::uuid, '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid, '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c13f18c-4c23-5d23-b758-92eedd235f08'::uuid, '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid, '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('129bf582-4919-5413-a2bd-8428c93226b1'::uuid, '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid, '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3b11ef03-db14-5ef1-a4e8-6681712eaa8d'::uuid,
  '129bf582-4919-5413-a2bd-8428c93226b1'::uuid,
  '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid,
  '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '47d7126a-b6c6-55c6-9668-bb9c45454675'::uuid,
  '129bf582-4919-5413-a2bd-8428c93226b1'::uuid,
  '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid,
  '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e0ea7f69-b0d1-59ac-80e3-965da6094636'::uuid, '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid, 'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d0c4683c-baaf-5c20-bfb0-dae67924ed04'::uuid, 'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid, '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b24d2d10-b1c3-59cd-be53-ff910fa41744'::uuid, '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid, 'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0f1b8878-9406-5f94-ac06-e57d13654242'::uuid, 'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fd5f0ce7-34b6-5768-baea-c9f2b28e426b'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, 'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a31706f1-db91-5ddf-88ba-81783f74a4bf'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, 'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7dc91467-184c-5675-841a-c31cd236c686'::uuid,
  'a31706f1-db91-5ddf-88ba-81783f74a4bf'::uuid,
  'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid,
  'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1cd3c753-c03e-5da3-bc3f-505287de3a34'::uuid,
  'a31706f1-db91-5ddf-88ba-81783f74a4bf'::uuid,
  'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid,
  'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8d67d16f-274c-54bf-befb-0cf207b74835'::uuid, '809c2fce-167e-593f-99c1-13a851571fb2'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a6fc5801-1418-5b03-a98f-475cceffbcbd'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, '809c2fce-167e-593f-99c1-13a851571fb2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc835cfa-efb1-529e-8a58-69ea320c8440'::uuid, '809c2fce-167e-593f-99c1-13a851571fb2'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7bd53634-d7b9-5374-b11a-06d8d4b53e4d'::uuid, '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid, 'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('73aef113-f46b-5612-9045-8d1c1add3c5e'::uuid, 'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid, '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('da90a559-9c57-5c03-bdb7-d5c6a2ea1164'::uuid, '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid, 'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f08bd6c1-50fa-530b-b821-33e5a1e676d4'::uuid,
  'da90a559-9c57-5c03-bdb7-d5c6a2ea1164'::uuid,
  '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid,
  'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c68209d1-4c18-52d1-a118-752a6e086fb9'::uuid,
  'da90a559-9c57-5c03-bdb7-d5c6a2ea1164'::uuid,
  'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid,
  '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ee05e6e5-e604-56f6-bc27-5a4a4571995a'::uuid, '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid, '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5add3eff-cb77-5ce9-bcda-e07c9770dba6'::uuid, '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid, '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('adc85b3d-fcdc-5d69-829b-596844ce8c00'::uuid, '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid, '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6f591323-9982-5ab9-a5d6-0855f31658c0'::uuid, '743deae9-0a26-5472-9f76-6e4aea019515'::uuid, 'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fe3f64aa-85a6-5504-ac60-f74a96ecf9dc'::uuid, 'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid, '743deae9-0a26-5472-9f76-6e4aea019515'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e2e951a3-21a5-5ed0-8e12-724070a24f0c'::uuid, '743deae9-0a26-5472-9f76-6e4aea019515'::uuid, 'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c750167e-7859-5b75-9086-fe0a07aaf97e'::uuid,
  'e2e951a3-21a5-5ed0-8e12-724070a24f0c'::uuid,
  '743deae9-0a26-5472-9f76-6e4aea019515'::uuid,
  'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2c0ac365-9bf1-535c-a862-9b089b6a2fe4'::uuid,
  'e2e951a3-21a5-5ed0-8e12-724070a24f0c'::uuid,
  'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid,
  '743deae9-0a26-5472-9f76-6e4aea019515'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6784c147-0970-5543-90b4-3d7ef7a62414'::uuid, '2e17579b-6b8b-5000-b30d-a2dde2efb47d'::uuid, 'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('03c1e87e-cc5b-54a4-b650-bc16e662e019'::uuid, 'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid, '2e17579b-6b8b-5000-b30d-a2dde2efb47d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e3ae8b30-4865-557e-a150-3b2d5938e364'::uuid, '2e17579b-6b8b-5000-b30d-a2dde2efb47d'::uuid, 'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c614696-656a-5efe-b53e-e944c09ea1f5'::uuid, '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0afb86a0-cd49-56d8-88d4-41764625aa73'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a7a11a7d-ef29-580a-92e3-6d8147e51f6b'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1efb9ccb-79f7-5b01-8701-396aa0953d24'::uuid,
  'a7a11a7d-ef29-580a-92e3-6d8147e51f6b'::uuid,
  '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid,
  '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0cacb491-724e-5092-a224-b4900a888a39'::uuid,
  'a7a11a7d-ef29-580a-92e3-6d8147e51f6b'::uuid,
  '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid,
  '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('92448945-7f51-5f84-89ee-d55c6268ffe4'::uuid, '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ba1964f6-cd96-598f-a9ce-b8f561d31749'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('926b006b-17d0-5821-9166-22a1ec01208f'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3cd77bfd-a4ee-5ed3-92c1-b802e21d5e01'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, '0d1d60a3-6461-5d9d-97bf-d3d4eaa8d252'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('545f8dad-dbdd-5979-a14f-bea0448db7f9'::uuid, '0d1d60a3-6461-5d9d-97bf-d3d4eaa8d252'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e2c54671-0618-5ab7-ad0f-8915a68f3261'::uuid, '0d1d60a3-6461-5d9d-97bf-d3d4eaa8d252'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '519b91b9-63a3-5fd3-a5a2-5a78cf698abb'::uuid,
  'e2c54671-0618-5ab7-ad0f-8915a68f3261'::uuid,
  'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid,
  '0d1d60a3-6461-5d9d-97bf-d3d4eaa8d252'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8115edb2-44a4-59d2-b02c-360e41106006'::uuid,
  'e2c54671-0618-5ab7-ad0f-8915a68f3261'::uuid,
  '0d1d60a3-6461-5d9d-97bf-d3d4eaa8d252'::uuid,
  'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d240490c-1d5e-5558-acd2-9b167157a6bd'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('24c1e396-58ed-5f3a-85bc-2a5a9bc06662'::uuid, '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3a7ca928-0acf-5c79-bdf4-60dbdba52ae3'::uuid, '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6985ef60-6714-53fa-a8ed-fa23dff69d3d'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fd4f5ce0-ff47-5980-a9f3-5ce50e3845e1'::uuid, '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0f76e47b-d90a-5217-be9d-8cb1274a2546'::uuid, '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '27baaafd-1d9c-5fce-8fa8-4d5fb49c11d1'::uuid,
  '0f76e47b-d90a-5217-be9d-8cb1274a2546'::uuid,
  '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid,
  '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '88286491-9b9f-55cf-a24a-562566a35baa'::uuid,
  '0f76e47b-d90a-5217-be9d-8cb1274a2546'::uuid,
  '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid,
  '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a8dd4359-5c00-55c1-94a6-39f9f8acf3b4'::uuid, '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid, 'ab207c01-931d-503e-a7bc-828029810b26'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('16a606b0-9db3-5bca-b125-9dded05f4652'::uuid, 'ab207c01-931d-503e-a7bc-828029810b26'::uuid, '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('05a00378-3f1d-5592-8393-0f28e57bc2f9'::uuid, '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid, 'ab207c01-931d-503e-a7bc-828029810b26'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c20fd8c3-082f-5dd2-b532-ba5083b000e3'::uuid, '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6478e719-71e0-5552-bba2-cc91f9686a5a'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b7bff52a-7ccb-5633-8a4c-b21f22ed099c'::uuid, '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fcdad050-f5e6-50fd-b752-ee963232f1df'::uuid,
  'b7bff52a-7ccb-5633-8a4c-b21f22ed099c'::uuid,
  '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid,
  'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '04f0a662-e171-5184-994e-ad1540121fb0'::uuid,
  'b7bff52a-7ccb-5633-8a4c-b21f22ed099c'::uuid,
  'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid,
  '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('99d0bac7-8042-5fe7-97cb-d84058ba09c1'::uuid, '02513dbb-0dc9-5a45-aaa5-3fd7c0d8c871'::uuid, '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7e7f0453-0e60-5728-8c0f-f78360bc91cb'::uuid, '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid, '02513dbb-0dc9-5a45-aaa5-3fd7c0d8c871'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;
