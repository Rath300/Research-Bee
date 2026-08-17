INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c9748083-1ecb-5442-a9db-2f0aa0eb6726'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5fec4bfb-af3f-5191-96d0-885bd5c00569'::uuid,
  'c9748083-1ecb-5442-a9db-2f0aa0eb6726'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ad1eace3-cc1b-5f39-b226-65128a67b2c2'::uuid,
  'c9748083-1ecb-5442-a9db-2f0aa0eb6726'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9026018a-ad1d-5b66-b138-ee35c1a6dcd8'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ac93355b-ec7d-5155-a6ff-e1133fbf6d9a'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('453e4276-b678-5646-9659-70a587965484'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('82d677e1-1714-5780-9009-6f017e48cf09'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('08421acc-63d4-5fbe-b460-78fc433b2357'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7a779aee-7c84-5e49-8768-2810ebd75d07'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e1e2eef6-004d-599e-b7a7-04ce427c694a'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b80c025b-ba18-5e8a-bb0d-70c9f237935f'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '710a689e-c277-563b-ab59-18b5695e0adf'::uuid,
  'b80c025b-ba18-5e8a-bb0d-70c9f237935f'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9b29fbdd-abe0-5072-a0ad-f8cec725a515'::uuid,
  'b80c025b-ba18-5e8a-bb0d-70c9f237935f'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8972005d-d5c4-5dc4-bf70-36232f7a0810'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cbf9fbe7-0818-5442-9f36-64f4b476728d'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cedebf9f-7be2-5c9b-b8a5-b08f09b3b04f'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f831a434-036d-5e85-99bd-ab8513e525d0'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5ec25b4f-f12a-5ad5-b254-6039feab3e4e'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ccae097a-4f40-5822-a265-9236a1180aca'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8173a58c-774b-5797-a03f-f45dfdd111e1'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2ca0dbeb-ae7c-5190-83f2-f877440104f4'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '66f73338-8fe9-5b24-8c54-794896f39ecf'::uuid,
  '2ca0dbeb-ae7c-5190-83f2-f877440104f4'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '08e56d78-e91d-5703-bb61-43a4d1464f38'::uuid,
  '2ca0dbeb-ae7c-5190-83f2-f877440104f4'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('61e6c9a9-2e3e-5cb1-b919-4804b842f731'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9a79d06-0a3e-527a-908b-da136acc810e'::uuid, '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e2861d6f-bfac-5631-8c55-2471b0656bc0'::uuid, '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0259c970-196b-5abc-b28b-938ece1e5bf2'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f1600722-519b-5f66-b917-6d551dba38ff'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('54c94072-b73d-5a7c-a59b-ebc8d0263e33'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('57df297b-9039-580c-a393-d617dde20a1b'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '390499de-d99a-5f6e-ae5d-a418701e069d'::uuid,
  '57df297b-9039-580c-a393-d617dde20a1b'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2386f8cc-1160-5a0c-941e-ff17726565df'::uuid,
  '57df297b-9039-580c-a393-d617dde20a1b'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('61d4f83c-8ccf-5ce7-a15b-ba8587537793'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6a2365f1-f7d8-54c2-91b0-dec5e9688303'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c68840f3-8fbf-5881-9651-bfffec953f63'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ba15d0f1-2201-5267-b3df-106dbc009cc6'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('79a1796c-9ae7-5141-91c9-e684334eae16'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eb8b4584-f6ab-550c-98d1-1bdf6a3a1b5c'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('10c3e818-3f27-562e-b5d5-7419a6f65804'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('00a00f59-9439-5446-9d80-ba5013872f59'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;