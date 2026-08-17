INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd1bf35ef-5862-54df-9e0a-d98489b176aa'::uuid,
  '3adb121b-9753-5d51-8cdc-5d42541ad59a'::uuid,
  'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid,
  '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7a8fd1c3-7b83-547b-bc06-d0e49fcc2b90'::uuid,
  '3adb121b-9753-5d51-8cdc-5d42541ad59a'::uuid,
  '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid,
  'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;