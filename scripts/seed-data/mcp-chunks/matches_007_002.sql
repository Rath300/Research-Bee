INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4de69e60-30e6-587d-bcc9-7465b0446aa2'::uuid, '02ed9420-1ec1-5ff8-a431-c0a1e337809f'::uuid, '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('efe8fee4-6c22-500d-84a1-1e0525066118'::uuid, '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid, '02ed9420-1ec1-5ff8-a431-c0a1e337809f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b3b62058-a0a9-5413-b9c3-aca3888631ce'::uuid, '02ed9420-1ec1-5ff8-a431-c0a1e337809f'::uuid, '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b4b278d6-6231-5e89-905e-e45e9355fa89'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, '68b3764d-cec2-57d1-bc8b-48f263aaed8c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4e170b93-7569-5fa4-920d-c2473c258ad6'::uuid, '68b3764d-cec2-57d1-bc8b-48f263aaed8c'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6a87630c-d0e3-51d0-9e9d-a2d45586c211'::uuid, '68b3764d-cec2-57d1-bc8b-48f263aaed8c'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '63438732-4921-50b7-90bf-82a5814476e9'::uuid,
  '6a87630c-d0e3-51d0-9e9d-a2d45586c211'::uuid,
  '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid,
  '68b3764d-cec2-57d1-bc8b-48f263aaed8c'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '61ccff99-9a9e-539d-9c4e-1839e76ecb38'::uuid,
  '6a87630c-d0e3-51d0-9e9d-a2d45586c211'::uuid,
  '68b3764d-cec2-57d1-bc8b-48f263aaed8c'::uuid,
  '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0f08c029-66c2-5ee0-833f-c39d696b4772'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a71bc7c8-dd61-598a-9705-b471ebcf6013'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('daf97901-60f1-5338-9141-01bc2136bbde'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('068be712-103e-5d1e-9763-5b1e4cbc6a7e'::uuid, '28443b95-67f6-5761-846b-913b1661ecc8'::uuid, '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2c702ed1-dd15-59b3-8e21-cabb8f65df87'::uuid, '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid, '28443b95-67f6-5761-846b-913b1661ecc8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('72d451a6-5c22-5737-82c6-6905ddf41317'::uuid, '28443b95-67f6-5761-846b-913b1661ecc8'::uuid, '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cf91bb00-ed75-585e-a517-adac11d379c8'::uuid,
  '72d451a6-5c22-5737-82c6-6905ddf41317'::uuid,
  '28443b95-67f6-5761-846b-913b1661ecc8'::uuid,
  '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd326e8ba-5f46-5142-89c0-4baa6794e1d2'::uuid,
  '72d451a6-5c22-5737-82c6-6905ddf41317'::uuid,
  '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid,
  '28443b95-67f6-5761-846b-913b1661ecc8'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f494a8b4-334a-50e0-b17a-5e37bcbd819b'::uuid, '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid, 'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('621c2f22-1a1f-5861-ad8c-f83f6f77568d'::uuid, 'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid, '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('65ca3f30-9211-5e76-b8b4-1e425f505dea'::uuid, '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid, 'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f82423bd-f489-57bd-b578-654cc4acb5f5'::uuid, 'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid, '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('10f3f4b4-f120-5d13-8334-161acfb8bed4'::uuid, '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid, 'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('59d8c8a4-a107-5cd8-89da-93009d731fd1'::uuid, '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid, 'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c68bf5b3-30c1-5d89-aafc-c8c42d66f7fd'::uuid,
  '59d8c8a4-a107-5cd8-89da-93009d731fd1'::uuid,
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bf7aed16-45ec-5e68-a759-9e86338b87f7'::uuid,
  '59d8c8a4-a107-5cd8-89da-93009d731fd1'::uuid,
  '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid,
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3121978f-11fc-5759-b8e9-90d5d9f72310'::uuid, 'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8adf3e90-1b71-5d58-8679-04f70fb84a28'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, 'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0cb20542-fd86-5ec7-9a51-f0adafd1dbaf'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, 'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('482fcaa5-f26a-5522-a87d-68609cfffc3f'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ffb5247a-ff46-58b5-b98c-d6abcb27bb6d'::uuid, '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('718ee0ad-918b-5c64-a5e5-b46c65705a79'::uuid, '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e80b7d04-cf0e-5623-8183-fa2ae90a8b08'::uuid,
  '718ee0ad-918b-5c64-a5e5-b46c65705a79'::uuid,
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid,
  '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '909bfa4e-56e1-5bef-bcae-7f850aa8c7f3'::uuid,
  '718ee0ad-918b-5c64-a5e5-b46c65705a79'::uuid,
  '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid,
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0736c41d-567c-566d-a04a-7c41cb772397'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1a5ce1fc-fbdc-56c4-b60a-ab32a59897ed'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('37d95acf-4f4a-5d3f-873a-4e08743d0def'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3f683750-f6c4-5fa4-862e-a214dd183397'::uuid, 'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid, '11da8f2c-7470-5582-a044-f03903e3992c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6ca4a17e-b8f3-56e5-a641-7e7041d039c8'::uuid, '11da8f2c-7470-5582-a044-f03903e3992c'::uuid, 'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('635b6018-18fe-54dd-a89a-9e68d2195f3f'::uuid, '11da8f2c-7470-5582-a044-f03903e3992c'::uuid, 'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '64157222-62cd-578d-a719-46ce197b1e56'::uuid,
  '635b6018-18fe-54dd-a89a-9e68d2195f3f'::uuid,
  'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid,
  '11da8f2c-7470-5582-a044-f03903e3992c'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9c4fe923-cd8f-5778-8b90-4913bc8aed69'::uuid,
  '635b6018-18fe-54dd-a89a-9e68d2195f3f'::uuid,
  '11da8f2c-7470-5582-a044-f03903e3992c'::uuid,
  'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;