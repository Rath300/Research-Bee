INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1ca9817d-b9ed-5350-8523-4bcb85fe8409'::uuid, '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8f3780d8-e8e3-56fa-ba64-9044c22359af'::uuid, 'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid, '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cf496777-f15a-5c26-b8f5-9cbdd78f3fe8'::uuid, '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid, 'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('24fce3e7-61df-5745-8aff-5b20f682be8a'::uuid, '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid, 'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6449416d-c5d0-59f3-b76d-2e4e70ba37ee'::uuid,
  '24fce3e7-61df-5745-8aff-5b20f682be8a'::uuid,
  'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid,
  '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2808a9c1-53d2-5ccb-9717-2c530ceb5220'::uuid,
  '24fce3e7-61df-5745-8aff-5b20f682be8a'::uuid,
  '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid,
  'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5f3763b9-fc3b-5e8e-92b2-f019257ef764'::uuid, '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid, '095821f3-70c4-5469-a8ee-b42176e19675'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9fdb5413-800a-5f3f-9420-fb3c8b48ece4'::uuid, '095821f3-70c4-5469-a8ee-b42176e19675'::uuid, '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c7e7ff28-11ca-5f06-82c3-09714d26de4a'::uuid, '095821f3-70c4-5469-a8ee-b42176e19675'::uuid, '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e289fc53-d984-5987-930c-89c56291279e'::uuid, '5356c221-d65a-5f9c-921b-112439242ea1'::uuid, '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c08c0b61-54d9-5607-b102-840ba675a4e4'::uuid, '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid, '5356c221-d65a-5f9c-921b-112439242ea1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('46ea7d15-7686-55c7-a5ed-e6b592199708'::uuid, '5356c221-d65a-5f9c-921b-112439242ea1'::uuid, '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '37fd3137-53fc-55c9-9360-36cac73b59b4'::uuid,
  '46ea7d15-7686-55c7-a5ed-e6b592199708'::uuid,
  '5356c221-d65a-5f9c-921b-112439242ea1'::uuid,
  '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7698869c-6ab6-541b-8654-b943d42e00fe'::uuid,
  '46ea7d15-7686-55c7-a5ed-e6b592199708'::uuid,
  '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid,
  '5356c221-d65a-5f9c-921b-112439242ea1'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4467fea0-1cb2-562c-b070-1d1ae5048507'::uuid, 'fa2365d8-493b-584a-8249-5fdb62f40ca7'::uuid, '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c1b941c-31f2-573f-a727-6bcf2ae6f1b9'::uuid, '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid, 'fa2365d8-493b-584a-8249-5fdb62f40ca7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2cef299f-c321-55e5-9f4c-a3fc464a4bff'::uuid, '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid, 'fa2365d8-493b-584a-8249-5fdb62f40ca7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d79f25b9-e24c-52d7-8af5-d441c86bc992'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8bd5fa2c-11f8-5d3f-abe4-385621908e5c'::uuid, '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c06c78bf-f7c0-5c7c-9e04-404c3a5338f8'::uuid, '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1e60a03c-46cc-56ab-9352-0f6590d37478'::uuid,
  'c06c78bf-f7c0-5c7c-9e04-404c3a5338f8'::uuid,
  'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid,
  '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4a56a758-a9c7-5c61-a4f8-d7fed9310c81'::uuid,
  'c06c78bf-f7c0-5c7c-9e04-404c3a5338f8'::uuid,
  '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid,
  'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bad099b0-1aac-5ba3-9795-d6c710a6cdfb'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('237b74db-0091-539b-bfb0-3a4690ed2677'::uuid, '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('76bc6cd2-86c2-58c5-bd0a-ec07fb7be8a1'::uuid, '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bdf4e2ac-66f8-5983-ba19-77a91902bf5b'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3cd40e78-fd81-513b-834c-5830c88b483e'::uuid, '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('66a552df-3ce7-5a1e-84a3-91604d21f418'::uuid, '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cf91f740-e258-5c6f-977e-1b0244e42a6e'::uuid,
  '66a552df-3ce7-5a1e-84a3-91604d21f418'::uuid,
  '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid,
  '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'afd43dc4-cb6b-5103-8242-1bbbd7b683e9'::uuid,
  '66a552df-3ce7-5a1e-84a3-91604d21f418'::uuid,
  '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid,
  '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4aadc300-c24a-5ffc-8c8f-5cacc29e9f62'::uuid, '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid, '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('585df42f-f1ea-5ac9-ae60-488e35f5b840'::uuid, '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid, '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6cef0d92-6406-5f63-b975-a95e8b0c8b6a'::uuid, '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid, '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b9cbbc84-b45b-5d26-8fc0-2b0379e62f59'::uuid, '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d6b16446-629e-5169-b51a-55f0b962a677'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c7210637-9c18-51c3-b5f7-44b119052600'::uuid, '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5400e035-1e0e-5123-8fcd-4ebd515b8a8e'::uuid,
  'c7210637-9c18-51c3-b5f7-44b119052600'::uuid,
  '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid,
  'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f2aa96c0-e3d1-5ae8-a8f1-f97de163bc46'::uuid,
  'c7210637-9c18-51c3-b5f7-44b119052600'::uuid,
  'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid,
  '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e6c9005d-4af9-50ba-be1b-afa5d4d11c7c'::uuid, 'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid, '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('37b56964-8c5f-5131-b10c-686578eef631'::uuid, '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid, 'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;