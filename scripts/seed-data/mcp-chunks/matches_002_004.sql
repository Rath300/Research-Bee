INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4476aadf-8e2a-5f52-8164-449e9daa1f2e'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ebc829a7-e99e-5dc9-a473-5339866446c2'::uuid,
  '4476aadf-8e2a-5f52-8164-449e9daa1f2e'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '19792d4d-ae1c-55f4-8532-d1834c342a98'::uuid,
  '4476aadf-8e2a-5f52-8164-449e9daa1f2e'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1f04fef7-808f-55fd-a793-6232681b0e11'::uuid, '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c5eb1b37-67fd-54ce-8e60-04d419384060'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4363b1b8-7ee2-5c47-8e50-c02cb0f67dcf'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9d6ed2a5-7b25-5692-9663-456356822ac7'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('af37f68b-9ed1-55f2-8a70-8ffa70109f1a'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0037969e-5141-5db2-8782-d460ac5d1074'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8741d5e0-8a3e-5cd1-bed8-5e4693a096d4'::uuid, '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9310fe4e-18a9-5adc-ad47-9506a19d035a'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cba7d493-934d-5915-973c-55411b97b5dc'::uuid,
  '9310fe4e-18a9-5adc-ad47-9506a19d035a'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b8f13da8-f25f-59f0-9505-c40ee711b9ee'::uuid,
  '9310fe4e-18a9-5adc-ad47-9506a19d035a'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('799ca727-d5cb-511f-9afd-a9a64ab26810'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'f644a779-f61f-50ac-9f62-0022190689d9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a65d7aae-e9f9-58c8-aadd-d4734ba51f23'::uuid, 'f644a779-f61f-50ac-9f62-0022190689d9'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e7e8ea01-65d1-50df-8116-2bdf0bd67523'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'f644a779-f61f-50ac-9f62-0022190689d9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c68c6431-ee51-52da-9c41-1fc38c455127'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f5c08501-b8e8-5750-813f-7bd658e78ee0'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('51e75420-5189-5fd1-b571-3cd92fb42e92'::uuid, '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a009307f-0fbb-5511-8b0a-178fb23f3d6d'::uuid, '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fadbdedd-c3da-5307-9d81-fde0986860c1'::uuid,
  'a009307f-0fbb-5511-8b0a-178fb23f3d6d'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b1ca2ef7-6562-59ae-9bc7-009d60078acf'::uuid,
  'a009307f-0fbb-5511-8b0a-178fb23f3d6d'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d40c5c81-13fb-5c6a-9af4-df93b384b5c9'::uuid, 'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8218aed4-41b6-5ee8-b7bd-e3026b7f66aa'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2da2f81d-4c1a-5106-bfc8-605d289dcd52'::uuid, '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('16aa1266-99a8-5817-aede-acdaa2baad07'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e9338035-f209-576f-994d-98372633871e'::uuid, 'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b033642f-3863-589d-b7ab-60b531de320d'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8c5833a2-eb91-5234-b614-3c4f905c6fb5'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8cb1a973-0507-5dff-bcfa-6a0ab2bf1086'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ae39f93f-f665-5458-afe5-96b5bf651856'::uuid,
  '8cb1a973-0507-5dff-bcfa-6a0ab2bf1086'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9184093b-0c4a-5088-871f-3cba844f1440'::uuid,
  '8cb1a973-0507-5dff-bcfa-6a0ab2bf1086'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c9ef3137-01ee-5843-aa6f-976c828a90fb'::uuid, 'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8848117a-c5f4-5401-a555-50f5d651cf72'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e3bbcf4e-2360-5097-8591-4091170f89b5'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('34c4d31f-7e03-590f-825c-efc876c6caba'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa973081-abcd-5e75-890a-0ffc3db5e877'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('030a34f6-d6dc-5d0d-8780-feb67cc8dffd'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3c98da58-8213-5578-9c54-f7638b8c679a'::uuid, 'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d24e0f43-b0d3-566d-a27d-30ff0619f3fc'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;