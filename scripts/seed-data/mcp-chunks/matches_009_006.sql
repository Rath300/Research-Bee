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