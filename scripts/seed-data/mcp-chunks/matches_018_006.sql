INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ad4e44b-79a9-5d33-bb77-25d2d1a25c1d'::uuid, 'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid, '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f053d221-1666-5ef3-8d8c-b8805d1af2b3'::uuid, '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid, 'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7d891faa-628f-56c3-8f35-3072e8569317'::uuid,
  'f053d221-1666-5ef3-8d8c-b8805d1af2b3'::uuid,
  '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid,
  'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;