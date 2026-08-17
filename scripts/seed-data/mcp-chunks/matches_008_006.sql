INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e158e858-f4f1-53ab-9459-a7a4851fb023'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f68443fa-3d2a-594c-b3d0-bc591984e5d4'::uuid, '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '05d0cac1-0927-5438-bbd4-69394848d57b'::uuid,
  'f68443fa-3d2a-594c-b3d0-bc591984e5d4'::uuid,
  '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid,
  'a130656b-33b4-5818-9d16-667ae077b735'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;