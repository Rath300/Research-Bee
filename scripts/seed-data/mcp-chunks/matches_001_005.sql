INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9860636a-3705-5ff8-a81d-75a81f22d26a'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5a0ad170-87a5-5c3e-8cc4-c805afecaee3'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('73d74a67-a5d2-5aed-9c6e-211c6627c4c8'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('889db3bc-f59a-5e43-b783-625f03c58b1e'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8231c56c-6a04-5368-9a60-d11b07ffc8a6'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5a321676-91c4-551e-9718-0a5937101370'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d479fe61-645c-5c99-a892-bf981b8e6847'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd0d29e06-96f8-5570-a73e-f30d50344074'::uuid,
  'd479fe61-645c-5c99-a892-bf981b8e6847'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '394c7878-6301-529a-94d3-1c7344756bfe'::uuid,
  'd479fe61-645c-5c99-a892-bf981b8e6847'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e95aeff-1e55-5a22-a157-3be7d1148b6e'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('056bda07-63b7-5b95-b8c2-dfc92361897c'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fc56db4a-ff1c-5555-a9fa-ed6f6376979e'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3fb437be-5048-56fe-a707-936bad02dbd4'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('04b52596-fc95-5183-9b41-415181d2b2da'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('32ba8a64-b908-5355-a31a-7f043dd9a881'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('371f4fcb-6940-569f-acf7-de9b06f40dc4'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('63fd6d8b-54a1-5482-b046-87cb717170a7'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '68579901-4a05-52e8-8a15-a6117b008d15'::uuid,
  '63fd6d8b-54a1-5482-b046-87cb717170a7'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '44bfb17c-412a-5c6e-af81-67f18d803992'::uuid,
  '63fd6d8b-54a1-5482-b046-87cb717170a7'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c3c9f26e-7b36-5619-a561-737181c48bea'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa8e5cf7-b61b-515e-a1c8-06f1a73c6686'::uuid, '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('06c8a0fe-2b6f-5ac5-8b9a-de4ea8d64f5a'::uuid, '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('98b24a53-9045-5fc0-9c71-447c44d24506'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0214a37c-bbc1-5737-af82-57f032752897'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('09ea35e5-aa7b-584d-8e3a-879a5e794e20'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8b39906f-f25d-575c-a4cb-1dc37f78bf8a'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5b41f402-2e98-5b20-95ad-d24f548e53fc'::uuid,
  '8b39906f-f25d-575c-a4cb-1dc37f78bf8a'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd758af0c-6fa8-5609-9938-71c371e8ea16'::uuid,
  '8b39906f-f25d-575c-a4cb-1dc37f78bf8a'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b54a7cc-b23c-5463-89bf-afc80d93aa66'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('290280bf-032f-5a0e-9598-0b0609006f9d'::uuid, '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e4cc360-a614-5f77-b6bf-1e305592df1e'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a57083a6-cc69-5db8-a89d-a533e966080c'::uuid, '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a747f72b-bca5-5ce1-923c-9357713acd23'::uuid, 'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid, '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4d3dbfa3-9b3f-54d9-9452-554702cbe74a'::uuid, '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('baf03452-dfb3-533a-b1a1-9054514633a5'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a39ddad6-85fd-5cab-8b16-fce9e5235e2e'::uuid, '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '432cc5a5-a9fc-5db6-80e7-ce2136918459'::uuid,
  'a39ddad6-85fd-5cab-8b16-fce9e5235e2e'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3353f089-edc8-5c1e-95f1-ec35ed6c21a0'::uuid,
  'a39ddad6-85fd-5cab-8b16-fce9e5235e2e'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bcccc39e-067c-5d3a-ac9d-7d3f37586beb'::uuid, '0c89279c-761b-5955-a37f-d11d903a5859'::uuid, '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fbc46e63-e062-5ef9-a89f-5babe4b5d98c'::uuid, '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;