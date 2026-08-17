INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c9a613c1-b72f-5000-8cf8-ac113ceaef5b'::uuid,
  '67908430-fb79-54f4-9263-eca2d7d31bc8'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('17026a8e-8f65-5e3f-b97b-de4176ff5bb7'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8a3b735-1683-55cc-8538-f08a525073a2'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;