INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7002a623-725e-532a-bbed-4d185c554cfd'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, '56f8439d-f665-534b-a3ed-49809023f629'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d04d4699-1753-5145-8adc-b4b8b33bfcd9'::uuid, '56f8439d-f665-534b-a3ed-49809023f629'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('22d34220-da03-5f22-99c0-d2c7a165fd4b'::uuid, 'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid, 'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e4297b1-458a-5b15-a105-e7fa3711164f'::uuid, 'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid, 'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5f23d755-aefa-5716-ab91-0b3531fd9ab6'::uuid, 'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid, 'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '85312fcd-d0f1-5e49-9c3e-e526cf193c03'::uuid,
  '5f23d755-aefa-5716-ab91-0b3531fd9ab6'::uuid,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;