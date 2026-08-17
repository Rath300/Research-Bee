INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid,
  'authenticated',
  'authenticated',
  'benjamin.chen.705@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((205) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Benjamin","last_name":"Chen","full_name":"Benjamin Chen"}'::jsonb,
  now() - ((205) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid,
  '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid,
  '{"sub":"4bd8bfe8-2f51-5ceb-9f02-6660db18eef7","email":"benjamin.chen.705@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Benjamin',
  last_name = 'Chen',
  full_name = 'Benjamin Chen',
  email = 'benjamin.chen.705@gmail.com',
  title = 'PhD Candidate',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Caltech working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'weekends',
  availability_hours = 10,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid,
  'authenticated',
  'authenticated',
  'ava.lopez.706@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((206) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ava","last_name":"Lopez","full_name":"Ava Lopez"}'::jsonb,
  now() - ((206) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid,
  '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid,
  '{"sub":"286edd8f-7e51-52d7-b45e-551a9821a1dc","email":"ava.lopez.706@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '286edd8f-7e51-52d7-b45e-551a9821a1dc',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ava',
  last_name = 'Lopez',
  full_name = 'Ava Lopez',
  email = 'ava.lopez.706@outlook.com',
  title = 'Research Scientist',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Cornell University working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'part-time',
  availability_hours = 11,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid,
  'authenticated',
  'authenticated',
  'sebastian.wright.707@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((207) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sebastian","last_name":"Wright","full_name":"Sebastian Wright"}'::jsonb,
  now() - ((207) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid,
  'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid,
  '{"sub":"f923ae2c-4cde-5a0d-b5c1-2b97552165d0","email":"sebastian.wright.707@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f923ae2c-4cde-5a0d-b5c1-2b97552165d0',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sebastian',
  last_name = 'Wright',
  full_name = 'Sebastian Wright',
  email = 'sebastian.wright.707@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Texas at Austin working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'full-time',
  availability_hours = 12,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid,
  'authenticated',
  'authenticated',
  'amina.reed.708@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((208) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Amina","last_name":"Reed","full_name":"Amina Reed"}'::jsonb,
  now() - ((208) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid,
  'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid,
  '{"sub":"b750fae1-8324-5847-b5ff-68ba0292a057","email":"amina.reed.708@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b750fae1-8324-5847-b5ff-68ba0292a057',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Amina',
  last_name = 'Reed',
  full_name = 'Amina Reed',
  email = 'amina.reed.708@yahoo.com',
  title = 'Staff Scientist',
  institution = 'EPFL',
  location = 'Melbourne, AU',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at EPFL working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'weekends',
  availability_hours = 13,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '49fbee97-9df9-5705-9855-5aac175ded93'::uuid,
  'authenticated',
  'authenticated',
  'liam.james.709@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((209) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Liam","last_name":"James","full_name":"Liam James"}'::jsonb,
  now() - ((209) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '49fbee97-9df9-5705-9855-5aac175ded93'::uuid,
  '49fbee97-9df9-5705-9855-5aac175ded93'::uuid,
  '{"sub":"49fbee97-9df9-5705-9855-5aac175ded93","email":"liam.james.709@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '49fbee97-9df9-5705-9855-5aac175ded93',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Liam',
  last_name = 'James',
  full_name = 'Liam James',
  email = 'liam.james.709@proton.me',
  title = 'Visiting Scholar',
  institution = 'UC Berkeley',
  location = 'Cambridge, MA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at UC Berkeley working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'part-time',
  availability_hours = 14,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '49fbee97-9df9-5705-9855-5aac175ded93'::uuid;


