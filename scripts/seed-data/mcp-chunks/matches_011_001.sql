INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5e7ca9b3-c59b-5451-8985-522a06409e30'::uuid,
  '3f969c53-3570-55b6-8660-5e54fa2b822c'::uuid,
  '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid,
  'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cc65615b-4ad9-57a7-9a94-000357de0655'::uuid,
  '3f969c53-3570-55b6-8660-5e54fa2b822c'::uuid,
  'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid,
  '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bd80431c-5567-588e-a4f2-96457ad16dd8'::uuid, '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f5987e67-9542-5bab-8c73-23dfd03e4695'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cee676eb-94d4-569f-8541-ea53f638f9cb'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3aeb8ed1-981e-50a4-a598-aac0991cd00c'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9b88411-29a1-57b3-9e67-e5d85650b978'::uuid, '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bc0fe72c-0786-5ad1-b564-8114fd86ad95'::uuid, '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'af58675e-9e26-56e3-a7a6-d309f0630644'::uuid,
  'bc0fe72c-0786-5ad1-b564-8114fd86ad95'::uuid,
  'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid,
  '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f19819c5-16f3-5a7a-ab88-edb875af401b'::uuid,
  'bc0fe72c-0786-5ad1-b564-8114fd86ad95'::uuid,
  '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid,
  'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('599896ad-1e7d-52c1-bd40-6f3d3859741d'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58476a3d-537a-5607-90c0-786464fc2ff3'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ae84af88-b596-5caf-98f6-c348557d734e'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a13dafb9-23de-5dc3-aafb-a00ccab3bb64'::uuid, '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid, '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('73c110e0-4a7e-59dc-a6d8-0276fccf13e5'::uuid, '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid, '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5020bc31-6f04-54f8-bb1d-286c35024dec'::uuid, '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid, '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd4fef9d2-958f-5737-914a-ada0339cbd18'::uuid,
  '5020bc31-6f04-54f8-bb1d-286c35024dec'::uuid,
  '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid,
  '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4e78f797-1324-5a0e-904d-fac9c17b9b6f'::uuid,
  '5020bc31-6f04-54f8-bb1d-286c35024dec'::uuid,
  '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid,
  '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e5aafbb-662b-5078-b9ca-1b3f409912e5'::uuid, '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid, 'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f64705cd-bd26-5b47-8496-205ca9e0ac1a'::uuid, 'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid, '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8872d861-a37f-5e64-bde7-f1f947845e62'::uuid, '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid, 'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('46f11852-872e-5dac-aab1-6747986b9185'::uuid, '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid, '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5160e6ef-0b07-52e0-92e0-ac4bd09e1ec0'::uuid, '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid, '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('74ef4b96-d7c1-5902-8933-f9c1b43ba645'::uuid, '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid, '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dc337e20-4f9a-5494-864a-4a1f63c2f628'::uuid,
  '74ef4b96-d7c1-5902-8933-f9c1b43ba645'::uuid,
  '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid,
  '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2d19a744-f3ee-53da-8231-765155b82eb2'::uuid,
  '74ef4b96-d7c1-5902-8933-f9c1b43ba645'::uuid,
  '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid,
  '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d35ac5b0-ab79-5a5a-9d86-14099e6ba20b'::uuid, '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid, '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('487bb1ab-d045-50df-bfe1-f0d16c0944c8'::uuid, '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid, '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('45279999-57a9-5fe3-9425-1f8066fb0eff'::uuid, '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid, '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5240cb6c-5105-56bb-bc9a-a5128d3dfd37'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, '5a4c8839-4851-5d6e-a7a4-9aa7d280b2b2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a92d48f0-7482-52d7-a0f5-9ac79750b9e7'::uuid, '5a4c8839-4851-5d6e-a7a4-9aa7d280b2b2'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('86338c7b-e2e4-5874-9daf-548673d82832'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, '5a4c8839-4851-5d6e-a7a4-9aa7d280b2b2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8ca8d6e3-b862-5f82-a19b-ff8a0dcf4246'::uuid,
  '86338c7b-e2e4-5874-9daf-548673d82832'::uuid,
  '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid,
  '5a4c8839-4851-5d6e-a7a4-9aa7d280b2b2'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0d601673-235e-5bcd-9918-cd7bf16692b9'::uuid,
  '86338c7b-e2e4-5874-9daf-548673d82832'::uuid,
  '5a4c8839-4851-5d6e-a7a4-9aa7d280b2b2'::uuid,
  '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9e7a4105-8f12-5cd4-9d54-d7dc5f75af9d'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f19a4899-ad08-526c-9f58-8ed042eff743'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('67e17153-10c4-56b9-b243-56c1512d7ac6'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('da9108ef-d58d-572e-96f1-775d22e746f2'::uuid, 'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid, '3885d68d-f126-5f98-897e-f4679395d859'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7ad10a25-95e5-511a-8b8a-dc26f372b304'::uuid, '3885d68d-f126-5f98-897e-f4679395d859'::uuid, 'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('472d404d-72bc-5e32-b676-f129856a3277'::uuid, '3885d68d-f126-5f98-897e-f4679395d859'::uuid, 'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;