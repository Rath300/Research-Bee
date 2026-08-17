INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ce7418e1-988c-542a-9e82-3c7409094a28'::uuid,
  '8910fb25-174b-53a7-89a3-f8e1c0e1b39b'::uuid,
  '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid,
  'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '68b7e526-ed69-5ad9-a8fc-6e39c84b1730'::uuid,
  '8910fb25-174b-53a7-89a3-f8e1c0e1b39b'::uuid,
  'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid,
  '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89269fe1-36e2-5282-82d2-912f18e7387f'::uuid, '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid, '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('94ecaac8-bc78-565d-bc88-5d74ea1d005d'::uuid, '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid, '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bb8b10e1-adb1-5fa6-9988-d13a435fa72e'::uuid, '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid, '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30afd822-7a98-59ab-bf45-59ba7037b6a6'::uuid, 'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('92653891-6aac-55de-b25c-88a64ee2eea0'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3aecfe27-4b69-5566-8c29-9230bb30b6e6'::uuid, 'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '47ba347b-c8fc-58b1-99b1-60087eb1c7ae'::uuid,
  '3aecfe27-4b69-5566-8c29-9230bb30b6e6'::uuid,
  'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid,
  'e58b467c-3b92-5318-aac0-d48d03143307'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3a8fd9b5-1ac0-54ab-bbf5-413324f1656b'::uuid,
  '3aecfe27-4b69-5566-8c29-9230bb30b6e6'::uuid,
  'e58b467c-3b92-5318-aac0-d48d03143307'::uuid,
  'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e6daa96-982e-5358-a0cf-c288f6824536'::uuid, 'dc822c01-3afa-540d-8c64-273165534be4'::uuid, '6967920a-06a3-5d3b-9991-777798ca8208'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9a0de346-8d7d-5abb-899a-069996850407'::uuid, '6967920a-06a3-5d3b-9991-777798ca8208'::uuid, 'dc822c01-3afa-540d-8c64-273165534be4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c5f63641-59f0-566d-a480-abd2e3d51cb9'::uuid, '6967920a-06a3-5d3b-9991-777798ca8208'::uuid, 'dc822c01-3afa-540d-8c64-273165534be4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('22623ad6-ab81-57e6-9ca5-53fc0eaa2180'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('07a38b0f-7146-5996-b409-88bf428fc4bf'::uuid, '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bebd5660-ae20-5a84-a27c-e5835645d371'::uuid, '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dd7c3f28-e45d-59b1-82f2-2e97da3d8f8a'::uuid,
  'bebd5660-ae20-5a84-a27c-e5835645d371'::uuid,
  '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid,
  '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b6c86248-7e69-5c6c-9eca-95e34e24fe1c'::uuid,
  'bebd5660-ae20-5a84-a27c-e5835645d371'::uuid,
  '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid,
  '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d5196507-c017-5f4c-84e7-53b6ef43ab9c'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, 'da781818-221e-5433-8ed5-0d93efc9d299'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6892325d-07b8-55b1-bcd4-a0e766c74380'::uuid, 'da781818-221e-5433-8ed5-0d93efc9d299'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('eb74d170-939d-5941-8f88-5a2370cc9a55'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, 'da781818-221e-5433-8ed5-0d93efc9d299'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e2dc4095-6707-52b6-884e-376987e6df1f'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, '7af7f811-5976-5178-bda2-880a5acb1093'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ebabaaa9-f374-53ae-a5b0-a6e6994c5ddb'::uuid, '7af7f811-5976-5178-bda2-880a5acb1093'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4fa4194e-e935-51b7-ab8d-91b06391ce31'::uuid, '7af7f811-5976-5178-bda2-880a5acb1093'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7b68cb1b-349a-5511-b3d8-608ab0a7639e'::uuid,
  '4fa4194e-e935-51b7-ab8d-91b06391ce31'::uuid,
  '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid,
  '7af7f811-5976-5178-bda2-880a5acb1093'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4c6350ba-051a-5c7a-8264-8196cbf0d649'::uuid,
  '4fa4194e-e935-51b7-ab8d-91b06391ce31'::uuid,
  '7af7f811-5976-5178-bda2-880a5acb1093'::uuid,
  '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c2f93ad7-8854-546c-9dc9-1c48bbe0383b'::uuid, '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid, '02ed9420-1ec1-5ff8-a431-c0a1e337809f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('113d70f2-4dce-5b0d-a365-7eef46261411'::uuid, '02ed9420-1ec1-5ff8-a431-c0a1e337809f'::uuid, '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c5edaee9-d02c-54a4-8624-36fe9b8e4829'::uuid, '02ed9420-1ec1-5ff8-a431-c0a1e337809f'::uuid, '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('18f791ba-880b-5a43-9d5e-ea1626dde3a5'::uuid, 'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c2508719-9077-5d16-aaa0-118588d4d421'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, 'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1e546125-5029-5bfd-81cc-dc431a63570d'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, 'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '46ad94c6-ace8-5e4a-8d92-6eb7097286a2'::uuid,
  '1e546125-5029-5bfd-81cc-dc431a63570d'::uuid,
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e296fdbf-cbe2-5dbb-8112-3145fb55a860'::uuid,
  '1e546125-5029-5bfd-81cc-dc431a63570d'::uuid,
  '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid,
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('37eca072-2341-587b-82c3-77df475ebb8c'::uuid, 'b4ad0744-0326-5be3-98a2-fbc91bf8e8d2'::uuid, '28443b95-67f6-5761-846b-913b1661ecc8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e6434f7f-ce62-5343-b8ee-d4dcab9197ee'::uuid, '28443b95-67f6-5761-846b-913b1661ecc8'::uuid, 'b4ad0744-0326-5be3-98a2-fbc91bf8e8d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('11a9e89b-42b1-59ac-9aec-87ab94270f34'::uuid, '28443b95-67f6-5761-846b-913b1661ecc8'::uuid, 'b4ad0744-0326-5be3-98a2-fbc91bf8e8d2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4c3464ef-5e5c-5397-8426-e4e245648bdc'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ce7f8cb3-9094-5fd3-91be-106f37b2d574'::uuid, '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8cb0e8ea-225a-54ca-9b7a-f1eb9d90e852'::uuid, '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;