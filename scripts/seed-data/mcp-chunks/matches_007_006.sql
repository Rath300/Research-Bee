INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('80e4fc79-99d1-55f2-879a-4b5516dc30e7'::uuid, 'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid, '800de340-7fca-5636-aa2d-5bc6b317e3c1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3b6101b8-14ec-52c9-9a2b-389290f83e41'::uuid, '800de340-7fca-5636-aa2d-5bc6b317e3c1'::uuid, 'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d0df4a90-3998-5149-b46e-bfb3fa27cc6e'::uuid, '800de340-7fca-5636-aa2d-5bc6b317e3c1'::uuid, 'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e6849914-a848-5ef2-8992-480acc653ecb'::uuid, '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid, '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;