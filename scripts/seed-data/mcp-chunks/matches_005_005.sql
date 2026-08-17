INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('aedaaa7e-02e2-5b14-b52e-519d498cf14b'::uuid, 'dc822c01-3afa-540d-8c64-273165534be4'::uuid, 'e97a9de9-ada2-56c8-98fd-109c271f42ab'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d5133605-3623-553a-823e-315535a03fc0'::uuid, '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('937adf3f-9d24-585e-9bc0-d0c0d00cab40'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f56aa3d8-3d0b-55bc-8840-ee1271ebda27'::uuid, '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ab811a9d-1f43-50b6-b55c-1ba7287a670b'::uuid,
  'f56aa3d8-3d0b-55bc-8840-ee1271ebda27'::uuid,
  '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid,
  '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0273a68d-0a79-516a-8736-b7652771d390'::uuid,
  'f56aa3d8-3d0b-55bc-8840-ee1271ebda27'::uuid,
  '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid,
  '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7a8b79b-2b2d-51d5-8ef5-a3353fa9d7fb'::uuid, 'fd521a38-e933-583e-9739-3570f7da8371'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b1ad5859-a4a6-59f3-b0d9-ae0951ba3d0c'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, 'fd521a38-e933-583e-9739-3570f7da8371'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d239e085-207b-5578-b02d-3d27f2bde979'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, 'fd521a38-e933-583e-9739-3570f7da8371'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('15c8d805-239e-5cad-a116-8515accc1975'::uuid, 'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid, '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0fac63a6-6a11-5e58-b1a0-411fb1a43378'::uuid, '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid, 'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('efe049c7-91ee-5bb6-b026-fb63a7570b7a'::uuid, '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid, 'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5e5dcf66-77d3-5784-b2c3-f1d2da36d418'::uuid,
  'efe049c7-91ee-5bb6-b026-fb63a7570b7a'::uuid,
  'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid,
  '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '77d283b8-a890-5b76-8f02-c455076a0f97'::uuid,
  'efe049c7-91ee-5bb6-b026-fb63a7570b7a'::uuid,
  '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid,
  'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e9135a31-34cd-5f20-8e0a-669957208299'::uuid, 'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid, '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('940392f0-5fb4-5e8a-bb78-a08bab9fd47f'::uuid, '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid, 'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('179da1ba-d2c4-5382-9f64-baa69b6eb4f6'::uuid, '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid, 'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('65236145-4c3e-5b31-8cae-615dfa66766c'::uuid, '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid, 'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1cfa4804-c68f-5bc9-a08b-c7fa5494faaa'::uuid, 'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid, '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1be8d3d4-94c4-55ba-8810-48213efaf941'::uuid, '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid, 'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8554ab77-d161-577d-9b2c-16aa1b2eccf4'::uuid,
  '1be8d3d4-94c4-55ba-8810-48213efaf941'::uuid,
  '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid,
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '71d4415d-4c03-5984-a6f8-335e72c71777'::uuid,
  '1be8d3d4-94c4-55ba-8810-48213efaf941'::uuid,
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('961d65fb-6646-5b86-8ef3-be08a99520e0'::uuid, 'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid, 'b4ad0744-0326-5be3-98a2-fbc91bf8e8d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9c722a89-0766-52a3-ad8b-634b86ab9ed8'::uuid, 'b4ad0744-0326-5be3-98a2-fbc91bf8e8d2'::uuid, 'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('777be6a8-6204-5f1d-ab60-9c6accc885af'::uuid, 'b4ad0744-0326-5be3-98a2-fbc91bf8e8d2'::uuid, 'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('83e97aea-00ab-5e00-a6f4-20c5d059e674'::uuid, '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0c5bb3c3-980c-55df-93c0-83d190f269ec'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fad82a0b-e7d3-56bc-b90e-35d62d0b2e0b'::uuid, '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a5efe918-139e-5caa-b086-49dc8eebc6bc'::uuid,
  'fad82a0b-e7d3-56bc-b90e-35d62d0b2e0b'::uuid,
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '35c68acd-ee25-5848-bb8a-9035ae7c7f78'::uuid,
  'fad82a0b-e7d3-56bc-b90e-35d62d0b2e0b'::uuid,
  'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid,
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e00e13d8-4deb-5881-abc9-79729bc9777f'::uuid, '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid, '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('02e785be-3d7f-5749-9d82-2fe9ac46fa61'::uuid, '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid, '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('426c784f-3151-5e26-95e4-b7b8f4302354'::uuid, '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid, '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e056d2b-5940-5a2d-80c7-3f5a1cadd74d'::uuid, '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid, 'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('46d63cdc-5686-5794-a9c1-a76048a54737'::uuid, 'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid, '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('50379eb3-091e-5bca-b3cf-9442b7b927f0'::uuid, '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid, 'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8e04abdd-cf71-532a-8c92-69ef979a3eca'::uuid,
  '50379eb3-091e-5bca-b3cf-9442b7b927f0'::uuid,
  '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid,
  'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6acc8a59-f7ec-5549-9a75-5ec8bf10cca6'::uuid,
  '50379eb3-091e-5bca-b3cf-9442b7b927f0'::uuid,
  'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid,
  '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3f82fc5e-c737-58db-9541-dd2b865a9790'::uuid, '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fe1b1bfd-269a-578f-858d-70b30970093d'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;