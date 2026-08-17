INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('850660fd-a44a-5831-b02c-ea6d69dbb8f3'::uuid, '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid, '4ae3110b-2758-5a34-9e95-e052815cda96'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ce03b12d-2987-53ae-95a8-5c991e8f551c'::uuid, '4ae3110b-2758-5a34-9e95-e052815cda96'::uuid, '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('af73d143-c8be-5090-b966-5e27bbbfbf50'::uuid, '4ae3110b-2758-5a34-9e95-e052815cda96'::uuid, '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c54baf74-80d8-5708-9e3b-5e842a7f87ab'::uuid, '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid, '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d50e1e4e-4a7f-5710-ba2b-7c7b7295e5a6'::uuid, '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid, '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2a32d4a2-1f81-5a3c-8e4a-3fac0cdee2ab'::uuid, '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid, '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5ea0cad0-1596-5805-b09e-3363363aad93'::uuid,
  '2a32d4a2-1f81-5a3c-8e4a-3fac0cdee2ab'::uuid,
  '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid,
  '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f5eed798-011c-5e98-b8c6-9f24989e579b'::uuid,
  '2a32d4a2-1f81-5a3c-8e4a-3fac0cdee2ab'::uuid,
  '3f477799-5b35-59e3-ae52-e6df068bb52b'::uuid,
  '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c586c7ba-b224-55b0-ad4c-b738382f9d81'::uuid, 'b0180410-8061-5081-8509-d15823d3c0a5'::uuid, '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4cfa6afa-f5e6-51f4-9f70-81e9a8a80251'::uuid, '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid, 'b0180410-8061-5081-8509-d15823d3c0a5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b3971d4f-8dba-5dff-b646-8f9fdde70bdd'::uuid, '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid, 'b0180410-8061-5081-8509-d15823d3c0a5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('07fcb75a-4b8e-5951-833a-14c968b45b1f'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('525d8e99-150d-5619-b4d7-352cea0b8ace'::uuid, '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('36f34ead-6430-51e2-8c1a-0361dd6502b9'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '38669477-4309-577a-ac7f-31e4db937e37'::uuid,
  '36f34ead-6430-51e2-8c1a-0361dd6502b9'::uuid,
  '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid,
  '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1f2bee31-5598-56b2-b572-7d508b2fa9d2'::uuid,
  '36f34ead-6430-51e2-8c1a-0361dd6502b9'::uuid,
  '2d092167-62ff-5336-9d84-4f60ec75abe6'::uuid,
  '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c98334a0-a365-5bf6-92a1-51c46acc1d43'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('977cfef7-12e9-5bf7-bf78-c6e7a81c166b'::uuid, '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ef10e19a-4cb3-5ac4-8a84-4b445965eb20'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('436175ca-80d8-5ae6-a262-681f0d99ce52'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, 'c18237ec-ff4a-5cc3-a383-cb6f58e13ea2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e56fd93d-bbfe-542d-ad9d-ed027f1e5a84'::uuid, 'c18237ec-ff4a-5cc3-a383-cb6f58e13ea2'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('255d65f2-e90a-547c-b5dc-dc2b9ce55b04'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, 'c18237ec-ff4a-5cc3-a383-cb6f58e13ea2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f601c0fd-1eae-578d-957d-ddc452eaf272'::uuid,
  '255d65f2-e90a-547c-b5dc-dc2b9ce55b04'::uuid,
  '56361163-593b-5f6a-8eb2-5269671702e2'::uuid,
  'c18237ec-ff4a-5cc3-a383-cb6f58e13ea2'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cb01bbbb-4e1b-5140-9951-23a4953aed04'::uuid,
  '255d65f2-e90a-547c-b5dc-dc2b9ce55b04'::uuid,
  'c18237ec-ff4a-5cc3-a383-cb6f58e13ea2'::uuid,
  '56361163-593b-5f6a-8eb2-5269671702e2'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3d86da5f-7792-5abf-84ac-357ab267a370'::uuid, '57922f55-9cea-510b-8329-299c51dd6d47'::uuid, '617208a8-08ea-5f2c-b293-4093cd3d2775'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d64b0ca3-268d-537d-ba82-d1d40fdf8461'::uuid, '617208a8-08ea-5f2c-b293-4093cd3d2775'::uuid, '57922f55-9cea-510b-8329-299c51dd6d47'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8a5e61a4-dc87-5e73-818c-da6fe973216b'::uuid, '57922f55-9cea-510b-8329-299c51dd6d47'::uuid, '617208a8-08ea-5f2c-b293-4093cd3d2775'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b8642e8-ae1b-5396-863c-f001482d28d0'::uuid, '778bb832-28a2-5667-a854-30ded635eb52'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9617c67e-0f34-5ae3-84fc-4b00d9a4ad3c'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, '778bb832-28a2-5667-a854-30ded635eb52'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6be47624-885b-54e2-8641-c135f912357b'::uuid, '778bb832-28a2-5667-a854-30ded635eb52'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '477a41f2-7533-58b2-96d9-a34d20835bd4'::uuid,
  '6be47624-885b-54e2-8641-c135f912357b'::uuid,
  '778bb832-28a2-5667-a854-30ded635eb52'::uuid,
  '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2f267fcf-c399-571e-a5e4-ed455f7a29b2'::uuid,
  '6be47624-885b-54e2-8641-c135f912357b'::uuid,
  '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid,
  '778bb832-28a2-5667-a854-30ded635eb52'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e49953f7-e5a1-5c7a-b789-e90fcdb999ea'::uuid, 'f5c6f747-5297-5e24-87be-fd7df457b835'::uuid, 'a169404e-faf7-5071-b788-07d72b750c2c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('af291ba5-07c6-5608-a32d-a17259ad8e3b'::uuid, 'a169404e-faf7-5071-b788-07d72b750c2c'::uuid, 'f5c6f747-5297-5e24-87be-fd7df457b835'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('42aed88c-7fd3-5c8b-bec8-8ae455125575'::uuid, 'a169404e-faf7-5071-b788-07d72b750c2c'::uuid, 'f5c6f747-5297-5e24-87be-fd7df457b835'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('81741834-7338-5a2e-b552-dae2ae4f461d'::uuid, '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid, '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9aa27f49-6d3f-51c2-9510-5d6734a423e7'::uuid, '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid, '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b1f93616-1828-5fc1-9fcf-3f1bf1a4c03d'::uuid, '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid, '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ac2ee4e7-9705-51bc-9df9-c51b8407daee'::uuid,
  'b1f93616-1828-5fc1-9fcf-3f1bf1a4c03d'::uuid,
  '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid,
  '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'eacf5aab-c877-521f-b99c-124091de9cca'::uuid,
  'b1f93616-1828-5fc1-9fcf-3f1bf1a4c03d'::uuid,
  '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid,
  '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;