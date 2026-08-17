INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e0258f5-cdef-5969-be89-23c96296f379'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fd7cf64a-cf88-54a5-922b-8bf0d286c85b'::uuid, '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('84ac648f-412b-5c12-aa44-1efae071ded3'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f1450ea4-c0c8-52c4-8640-1987f4110948'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('120fab15-11b4-55f2-adc8-602e4d06bf69'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('41df66cb-8597-5b56-af26-5cec5d265b4f'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '675fc5cb-7fba-5267-8a4e-8db37cfe1fc1'::uuid,
  '41df66cb-8597-5b56-af26-5cec5d265b4f'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd9f86936-ab82-507c-9a70-f45ddc2d97e7'::uuid,
  '41df66cb-8597-5b56-af26-5cec5d265b4f'::uuid,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e91e4d45-357c-542b-a3ef-a20aa0dd0a78'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, 'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;