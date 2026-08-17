INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d92ae69a-bcfe-59d1-8e48-8f446ca75287'::uuid, 'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('97acbc1e-cc3d-5800-ab90-7cebf03ca9ed'::uuid, '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid, 'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c6596f3-c777-51bb-90b3-c7900721b497'::uuid, 'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid, '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('45280387-6629-557f-b6fb-f9d89b216ea1'::uuid, '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid, 'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('131e2e6c-9d1d-5ffc-ac7e-a74d29f6bc32'::uuid, 'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid, '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('af723336-a83a-58bb-9b38-549b17204bff'::uuid, 'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae5665fd-0076-56df-aa09-f88ee54e6b23'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, 'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c45b2289-5d4f-5ead-874a-38617bf81345'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, 'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2fbb8a75-a201-50c9-b027-5544f3bca6ef'::uuid,
  'c45b2289-5d4f-5ead-874a-38617bf81345'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;