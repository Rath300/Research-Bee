INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2ee647d4-4401-5d7f-b426-80ff4abbf1f6'::uuid,
  '7993fa02-abbc-53f3-b5fb-214473f6681a'::uuid,
  'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid,
  '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aff04970-7c73-51d9-ad8d-de58962bcc7b'::uuid, '07e78528-7a32-5945-9289-b917095c02bc'::uuid, 'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d765a4c5-a1fb-5b7d-8cdc-f831199d141e'::uuid, 'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid, '07e78528-7a32-5945-9289-b917095c02bc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;