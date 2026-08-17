INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid,
  'authenticated',
  'authenticated',
  'chloe.peterson.136@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((136) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Chloe","last_name":"Peterson","full_name":"Chloe Peterson"}'::jsonb,
  now() - ((136) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid,
  'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid,
  '{"sub":"b6d76b9c-c861-5e04-9a0b-242cf40b872e","email":"chloe.peterson.136@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b6d76b9c-c861-5e04-9a0b-242cf40b872e',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Chloe',
  last_name = 'Peterson',
  full_name = 'Chloe Peterson',
  email = 'chloe.peterson.136@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Texas at Austin',
  location = 'New York, NY',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Texas at Austin working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'part-time',
  availability_hours = 21,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '24579fee-fc8d-5280-812e-2f0052792b46'::uuid,
  'authenticated',
  'authenticated',
  'owen.ross.137@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((137) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Owen","last_name":"Ross","full_name":"Owen Ross"}'::jsonb,
  now() - ((137) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '24579fee-fc8d-5280-812e-2f0052792b46'::uuid,
  '24579fee-fc8d-5280-812e-2f0052792b46'::uuid,
  '{"sub":"24579fee-fc8d-5280-812e-2f0052792b46","email":"owen.ross.137@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '24579fee-fc8d-5280-812e-2f0052792b46',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Owen',
  last_name = 'Ross',
  full_name = 'Owen Ross',
  email = 'owen.ross.137@icloud.com',
  title = 'Associate Professor',
  institution = 'EPFL',
  location = 'Chicago, IL',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at EPFL working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'full-time',
  availability_hours = 22,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '24579fee-fc8d-5280-812e-2f0052792b46'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'da7ea795-6302-569b-a337-84672894f4df'::uuid,
  'authenticated',
  'authenticated',
  'violet.garcia.138@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((138) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Violet","last_name":"Garcia","full_name":"Violet Garcia"}'::jsonb,
  now() - ((138) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'da7ea795-6302-569b-a337-84672894f4df'::uuid,
  'da7ea795-6302-569b-a337-84672894f4df'::uuid,
  '{"sub":"da7ea795-6302-569b-a337-84672894f4df","email":"violet.garcia.138@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'da7ea795-6302-569b-a337-84672894f4df',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Violet',
  last_name = 'Garcia',
  full_name = 'Violet Garcia',
  email = 'violet.garcia.138@yahoo.com',
  title = 'Staff Scientist',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at UC Berkeley working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'weekends',
  availability_hours = 23,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'da7ea795-6302-569b-a337-84672894f4df'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'fa80e08b-c8b0-5154-aed5-9cae634d5c58'::uuid,
  'authenticated',
  'authenticated',
  'leo.wang.139@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((139) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Leo","last_name":"Wang","full_name":"Leo Wang"}'::jsonb,
  now() - ((139) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'fa80e08b-c8b0-5154-aed5-9cae634d5c58'::uuid,
  'fa80e08b-c8b0-5154-aed5-9cae634d5c58'::uuid,
  '{"sub":"fa80e08b-c8b0-5154-aed5-9cae634d5c58","email":"leo.wang.139@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'fa80e08b-c8b0-5154-aed5-9cae634d5c58',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Leo',
  last_name = 'Wang',
  full_name = 'Leo Wang',
  email = 'leo.wang.139@proton.me',
  title = 'Visiting Scholar',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at University of Washington working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'part-time',
  availability_hours = 24,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'fa80e08b-c8b0-5154-aed5-9cae634d5c58'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid,
  'authenticated',
  'authenticated',
  'tara.fernandez.140@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((140) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Tara","last_name":"Fernandez","full_name":"Tara Fernandez"}'::jsonb,
  now() - ((140) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid,
  'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid,
  '{"sub":"ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4","email":"tara.fernandez.140@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Tara',
  last_name = 'Fernandez',
  full_name = 'Tara Fernandez',
  email = 'tara.fernandez.140@gmail.com',
  title = 'PhD Candidate',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Columbia University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'full-time',
  availability_hours = 5,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid,
  'authenticated',
  'authenticated',
  'aaron.richardson.141@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((141) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Aaron","last_name":"Richardson","full_name":"Aaron Richardson"}'::jsonb,
  now() - ((141) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid,
  '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid,
  '{"sub":"1502bff0-510c-5a05-84fb-941e5b0b0d0c","email":"aaron.richardson.141@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '1502bff0-510c-5a05-84fb-941e5b0b0d0c',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Aaron',
  last_name = 'Richardson',
  full_name = 'Aaron Richardson',
  email = 'aaron.richardson.141@outlook.com',
  title = 'Research Scientist',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Caltech working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'weekends',
  availability_hours = 6,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid,
  'authenticated',
  'authenticated',
  'imani.sanders.142@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((142) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Imani","last_name":"Sanders","full_name":"Imani Sanders"}'::jsonb,
  now() - ((142) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid,
  '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid,
  '{"sub":"4d52405a-0515-50a4-98bd-aa73b67454c6","email":"imani.sanders.142@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '4d52405a-0515-50a4-98bd-aa73b67454c6',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Imani',
  last_name = 'Sanders',
  full_name = 'Imani Sanders',
  email = 'imani.sanders.142@icloud.com',
  title = 'Associate Professor',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Cornell University working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'part-time',
  availability_hours = 7,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  'authenticated',
  'authenticated',
  'noah.long.143@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((143) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Noah","last_name":"Long","full_name":"Noah Long"}'::jsonb,
  now() - ((143) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  '{"sub":"836980fc-e1b4-537e-960b-d0f74fae417d","email":"noah.long.143@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '836980fc-e1b4-537e-960b-d0f74fae417d',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Noah',
  last_name = 'Long',
  full_name = 'Noah Long',
  email = 'noah.long.143@yahoo.com',
  title = 'Staff Scientist',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at University of Texas at Austin working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'full-time',
  availability_hours = 8,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid;