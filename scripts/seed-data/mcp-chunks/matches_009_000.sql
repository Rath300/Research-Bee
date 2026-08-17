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