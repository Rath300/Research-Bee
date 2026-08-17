INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6c3f69c4-41ea-58be-9670-a26f1f1ab3fd'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d68e960b-4ea1-5a86-a9d1-fffd99e0b8c1'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e94dedf6-14fa-5fa9-9b46-fc8863d434d1'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('27d7efc7-5a61-56af-b9aa-68eeb708b474'::uuid, '9368db5e-e423-510b-abf1-bd3510893600'::uuid, '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;