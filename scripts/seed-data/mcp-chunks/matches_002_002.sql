INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a2324803-bd9c-5bee-9965-52f1fe7d0bac'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ef24de0-aaec-5e1f-a04f-b49bbba8e597'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b737090-5cef-5b57-8c61-b375e5a0bc15'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f2db3eb1-d073-510d-b3db-2dec535cae6d'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c733ebcc-6e1d-572a-a35e-f97774685335'::uuid,
  'f2db3eb1-d073-510d-b3db-2dec535cae6d'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8366b240-1432-52f9-a722-fea175aa0d02'::uuid,
  'f2db3eb1-d073-510d-b3db-2dec535cae6d'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ac5673bb-1a5a-5d26-aaee-fbfefec927db'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ef6fc32d-40dc-53f1-8df6-106ee06cdf4e'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('90e4f123-248f-5aaa-a4ca-4035ca618187'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('781f5621-7215-513a-b5b6-c70a082e947b'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ce9a03ec-7e16-5d04-91b0-b17a84423024'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3b065d05-791f-5815-9b3f-7549286828d5'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8f3272d8-b8bf-5e83-aced-5e4d910b565a'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '561d99e8-0fd5-5184-b66a-013345f30989'::uuid,
  '8f3272d8-b8bf-5e83-aced-5e4d910b565a'::uuid,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '78f3f22c-260d-51bb-835a-1ef04ba27750'::uuid,
  '8f3272d8-b8bf-5e83-aced-5e4d910b565a'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e9dba24a-a5d6-5015-86f3-2111ea454c96'::uuid, '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('86cf5f83-7ad3-5acb-9467-96606af45485'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2c7b29b8-4593-53f1-a3a1-77cb9e1f1f41'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6b9fa7e2-262b-5bef-82c1-6b0544a696ac'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cbd2fadd-c01a-5251-b71f-fbaefc719464'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5335cdfb-0522-5725-962b-cb9460be2362'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a2914288-6e86-57dd-b802-9787dcd3b229'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7b230538-a4ad-5f5b-8acf-09d680ac6fe6'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b73951be-3e73-5463-bb1b-6257a0924ca0'::uuid,
  '7b230538-a4ad-5f5b-8acf-09d680ac6fe6'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0cc4cf5f-65ac-50e9-af42-20b13df635d1'::uuid,
  '7b230538-a4ad-5f5b-8acf-09d680ac6fe6'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f37cdd84-8e25-565f-b345-bb8713c4df72'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a7121a87-3b5b-5e04-86ca-46240a26f3b1'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a5b2e7db-a907-5add-8236-f1aa43c0334f'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6f67acca-2c84-5358-88a7-fad3b816e43b'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00ac604e-e0dc-5257-a8c4-a8ee8d85a4e5'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c92da2b-c945-5bf1-9eb4-1a8ff2bf9e70'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1aba0329-74b6-5435-9510-86e84d6053cf'::uuid, '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d89b62c4-0271-56c3-b9d2-7e924b267565'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '732536f9-397d-5879-9a7f-443fddec7ac1'::uuid,
  'd89b62c4-0271-56c3-b9d2-7e924b267565'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dc1a076d-fa5a-5b88-9d71-1d3261a60355'::uuid,
  'd89b62c4-0271-56c3-b9d2-7e924b267565'::uuid,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('45cf165c-3acc-5b13-96eb-090bd6490e18'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0594ac20-a5ff-5c81-a00e-94c461ae6b30'::uuid, '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('05120fdc-ed28-5e76-b1d4-21cd3d5cce03'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b2b308b-433b-5b99-a893-f9086bf3816a'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b9ef3eb5-647b-5523-afa2-0cca246d94e1'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;