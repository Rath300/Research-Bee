INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e0d0eaa6-cc88-5e5f-9933-481c2eb27705'::uuid, '03d924c7-38c5-5e68-8929-cfb838a4b9a9'::uuid, '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('13c5d930-722d-52ee-8105-94c9aefc23ed'::uuid, '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid, '03d924c7-38c5-5e68-8929-cfb838a4b9a9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8e12e5d4-ac7a-564c-9a86-efb0bed9a2a2'::uuid, '03d924c7-38c5-5e68-8929-cfb838a4b9a9'::uuid, '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b52b52f1-01af-5438-a138-11f86260677c'::uuid, 'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid, 'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;