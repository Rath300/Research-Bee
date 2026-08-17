INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ad31acb3-355e-5034-aee2-d9e73b464d09'::uuid, '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid, 'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1fc787e2-b0e9-5cb8-a6df-732485dc6592'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0a4f3b9a-7660-58a3-a774-191820911316'::uuid, '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0fe98d81-7371-5aba-ab30-5dcbf39ef13b'::uuid, '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2edf3208-d8a4-518e-8f00-b6e9c2c24f6b'::uuid,
  '0fe98d81-7371-5aba-ab30-5dcbf39ef13b'::uuid,
  'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid,
  '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8dabc0b3-ba5b-51a3-9d62-c99e51f41580'::uuid,
  '0fe98d81-7371-5aba-ab30-5dcbf39ef13b'::uuid,
  '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid,
  'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a56bcd82-2e1d-57a6-adf1-59519c02b725'::uuid, '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid, '4f80ee7a-7c51-5b23-b65f-24dd7396e442'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4eced756-d330-5b8a-b1a6-2e9fb4819b3f'::uuid, '4f80ee7a-7c51-5b23-b65f-24dd7396e442'::uuid, '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('aaa6bce8-c22d-5e76-9d75-332b6ba63bd5'::uuid, '4f80ee7a-7c51-5b23-b65f-24dd7396e442'::uuid, '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c9d2efd2-f706-5251-901a-5c70d81d644b'::uuid, '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cfed1592-546f-5029-9c3f-145d78ee661f'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('42a46406-5477-5cab-98e7-f72ae7953b01'::uuid, '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3c1b00ff-38c8-5e83-9950-e65ab6c68b02'::uuid,
  '42a46406-5477-5cab-98e7-f72ae7953b01'::uuid,
  '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid,
  'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '32fddaf1-5339-56c0-a66b-3e32185da763'::uuid,
  '42a46406-5477-5cab-98e7-f72ae7953b01'::uuid,
  'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid,
  '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('08d20879-9974-5ca4-beb5-13ecebe9c28e'::uuid, 'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8001edac-5a04-58f2-9eca-ed62e1060c02'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, 'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('903bebcc-86a8-5f8a-9816-a8001c71a399'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, 'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa846450-b76e-5392-8ba3-295f0c95e8a7'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, 'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('acdec470-60bb-5852-8973-fc6e95b97c23'::uuid, 'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('09b9615d-c716-55ce-9392-d5342ba5eb26'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, 'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ca256a6d-cb7e-516c-b501-d702181930a1'::uuid,
  '09b9615d-c716-55ce-9392-d5342ba5eb26'::uuid,
  '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid,
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6ad9695a-67a0-5213-b028-0b9e8ac109b3'::uuid,
  '09b9615d-c716-55ce-9392-d5342ba5eb26'::uuid,
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('31e53a7d-22ec-5ee4-bf62-c328ebc08765'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1f1d341c-c471-5d3e-9b31-a347ce978d14'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6e5e9a7f-39bb-5a11-8fc2-fc7754af4458'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae833364-98a2-58a2-a219-f874920f206d'::uuid, '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid, '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae765dd3-8e7c-5083-b3ee-e543612f97bb'::uuid, '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid, '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0e319963-9283-57b6-ad56-6f12e6588d2b'::uuid, '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid, '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '13b8d22e-0202-580c-82aa-c367fa7e77a2'::uuid,
  '0e319963-9283-57b6-ad56-6f12e6588d2b'::uuid,
  '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid,
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ddfa8082-c0e9-564c-a92a-c12abc3088b8'::uuid,
  '0e319963-9283-57b6-ad56-6f12e6588d2b'::uuid,
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e31fdc81-23e1-5191-b60f-d0febdd8f50e'::uuid, 'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid, '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3d1ba74d-51ac-5941-a689-c7b30f34417b'::uuid, '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid, 'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dd762ab6-1eef-5a4f-83ed-f5ad80cc2e94'::uuid, '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid, 'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('367863f8-9856-5fe1-be30-3ec17b72c277'::uuid, '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid, '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f8409aa1-ad91-5a06-a0e8-d3c816bddf80'::uuid, '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid, '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('645123c8-a518-5118-88f5-671a135dd150'::uuid, '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid, '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7a4a14fd-ccde-5a63-bd87-9a8c60590a74'::uuid,
  '645123c8-a518-5118-88f5-671a135dd150'::uuid,
  '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid,
  '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '248e7b24-440d-572e-a3d8-05ffe81156c1'::uuid,
  '645123c8-a518-5118-88f5-671a135dd150'::uuid,
  '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid,
  '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('19c642e6-573f-589a-be5c-e28bb8281f78'::uuid, '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid, 'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('025f2a08-3e8b-595b-bb94-9c99f1801440'::uuid, 'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid, '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;