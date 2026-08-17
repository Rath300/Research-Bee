INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d0e7315b-23bf-59cc-ae3e-b8331f814367'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('651a1b8f-2a53-5be3-8959-f42abcebc0f7'::uuid, '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid, '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('33067776-ab82-5e55-b3d3-e15f78cfb263'::uuid, '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid, '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c8a60a11-1661-5e76-ab5f-a00e86833455'::uuid, '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid, '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;