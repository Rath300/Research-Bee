INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('658f327c-e93d-5292-9242-cc34d540001b'::uuid, '05fcff78-0cbc-5304-80d1-89c5fb51a5ce'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('70bed8f7-7f95-556b-9e14-b5c963f03ad0'::uuid, '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid, '05054208-013e-5ac0-8db9-7b769e41a544'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4a3033c9-325c-50ab-bdcd-ca33e4d34b06'::uuid, '05054208-013e-5ac0-8db9-7b769e41a544'::uuid, '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('08f130ef-ce70-52d8-b6fc-eb4ea293afa5'::uuid, '05054208-013e-5ac0-8db9-7b769e41a544'::uuid, '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;