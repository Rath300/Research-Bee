INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('849c882d-12ba-593b-967b-9770524175f7'::uuid, '251eed55-e7bd-5e13-a2ca-cea6ceee8615'::uuid, 'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e207d3a7-5682-5285-bb1d-6706f25565fb'::uuid, '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d08a6d99-a341-58b9-8475-3953681d642b'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ad5e9651-b297-5be6-b278-11f4992ac079'::uuid, '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;