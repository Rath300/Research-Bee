INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38b4a158-ed3a-5bbb-b85f-232960d66c8b'::uuid, '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6b18e877-75b4-50d0-b303-07cf5d10508d'::uuid, '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '97430467-c82e-5f45-bcbf-1c81294b0ede'::uuid,
  '6b18e877-75b4-50d0-b303-07cf5d10508d'::uuid,
  '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid,
  '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;