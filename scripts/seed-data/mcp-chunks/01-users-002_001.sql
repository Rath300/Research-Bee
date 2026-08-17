INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  'authenticated',
  'authenticated',
  'nadia.singh.188@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((88) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nadia","last_name":"Singh","full_name":"Nadia Singh"}'::jsonb,
  now() - ((88) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  '{"sub":"f5939c13-971e-5b2a-b538-c59c5717412e","email":"nadia.singh.188@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f5939c13-971e-5b2a-b538-c59c5717412e',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nadia',
  last_name = 'Singh',
  full_name = 'Nadia Singh',
  email = 'nadia.singh.188@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Cornell University',
  location = 'Toronto, ON',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Cornell University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'full-time',
  availability_hours = 13,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  'authenticated',
  'authenticated',
  'adrian.davis.189@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((89) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Adrian","last_name":"Davis","full_name":"Adrian Davis"}'::jsonb,
  now() - ((89) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  '{"sub":"a6ab7341-b2e9-5fd2-9e89-a68540689827","email":"adrian.davis.189@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Adrian',
  last_name = 'Davis',
  full_name = 'Adrian Davis',
  email = 'adrian.davis.189@proton.me',
  title = 'Visiting Scholar',
  institution = 'University of Texas at Austin',
  location = 'Zurich, CH',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at University of Texas at Austin working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'weekends',
  availability_hours = 14,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  'authenticated',
  'authenticated',
  'mei.cooper.190@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((90) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Mei","last_name":"Cooper","full_name":"Mei Cooper"}'::jsonb,
  now() - ((90) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '{"sub":"5849b0a9-7046-5a1b-afa8-46c7b4f20d3e","email":"mei.cooper.190@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Mei',
  last_name = 'Cooper',
  full_name = 'Mei Cooper',
  email = 'mei.cooper.190@gmail.com',
  title = 'PhD Candidate',
  institution = 'EPFL',
  location = 'London, UK',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at EPFL working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'part-time',
  availability_hours = 15,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'authenticated',
  'authenticated',
  'henry.brooks.191@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((91) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Henry","last_name":"Brooks","full_name":"Henry Brooks"}'::jsonb,
  now() - ((91) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  '{"sub":"b42e0014-ffee-565d-bb75-bc5256bb4798","email":"henry.brooks.191@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b42e0014-ffee-565d-bb75-bc5256bb4798',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Henry',
  last_name = 'Brooks',
  full_name = 'Henry Brooks',
  email = 'henry.brooks.191@outlook.com',
  title = 'Research Scientist',
  institution = 'UC Berkeley',
  location = 'Seattle, WA',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at UC Berkeley working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'full-time',
  availability_hours = 16,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  'authenticated',
  'authenticated',
  'riya.powell.192@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((92) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Riya","last_name":"Powell","full_name":"Riya Powell"}'::jsonb,
  now() - ((92) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  '{"sub":"7cf7e55e-654d-5e79-b232-39768fa55c75","email":"riya.powell.192@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '7cf7e55e-654d-5e79-b232-39768fa55c75',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Riya',
  last_name = 'Powell',
  full_name = 'Riya Powell',
  email = 'riya.powell.192@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Washington',
  location = 'Pittsburgh, PA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Washington working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'weekends',
  availability_hours = 17,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'authenticated',
  'authenticated',
  'nathan.brown.193@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((93) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nathan","last_name":"Brown","full_name":"Nathan Brown"}'::jsonb,
  now() - ((93) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  '{"sub":"d74dc0cb-820b-5f6f-954d-0d679912ed4e","email":"nathan.brown.193@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nathan',
  last_name = 'Brown',
  full_name = 'Nathan Brown',
  email = 'nathan.brown.193@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Columbia University',
  location = 'Atlanta, GA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Columbia University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'part-time',
  availability_hours = 18,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  'authenticated',
  'authenticated',
  'priya.sato.194@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((94) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Priya","last_name":"Sato","full_name":"Priya Sato"}'::jsonb,
  now() - ((94) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  '{"sub":"3e51c6e0-9b46-5e74-b5a1-d55b56ac649a","email":"priya.sato.194@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Priya',
  last_name = 'Sato',
  full_name = 'Priya Sato',
  email = 'priya.sato.194@proton.me',
  title = 'Visiting Scholar',
  institution = 'Caltech',
  location = 'Ann Arbor, MI',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Caltech working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'full-time',
  availability_hours = 19,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'authenticated',
  'authenticated',
  'omar.ibrahim.195@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((95) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Omar","last_name":"Ibrahim","full_name":"Omar Ibrahim"}'::jsonb,
  now() - ((95) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  '{"sub":"a1cfdb84-f2b7-5750-8d60-403618604cff","email":"omar.ibrahim.195@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'a1cfdb84-f2b7-5750-8d60-403618604cff',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Omar',
  last_name = 'Ibrahim',
  full_name = 'Omar Ibrahim',
  email = 'omar.ibrahim.195@gmail.com',
  title = 'PhD Candidate',
  institution = 'Cornell University',
  location = 'Los Angeles, CA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Cornell University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'weekends',
  availability_hours = 20,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid;