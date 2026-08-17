INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '680e2d8e-8e5e-5578-a17f-fcfdb17c2cf5'::uuid,
  '2efcee88-74e8-5d93-8f3d-e8ddeb641605'::uuid,
  '59fc5e89-4210-5535-9f42-ed5204636320'::uuid,
  'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5830f8fc-41db-57fe-aeb4-3d29a4a112b7'::uuid, 'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fae24971-4f4d-51b9-a0ac-d6dead2fe0b0'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, 'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;