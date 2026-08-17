INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  'authenticated',
  'authenticated',
  'tara.fernandez.260@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((160) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Tara","last_name":"Fernandez","full_name":"Tara Fernandez"}'::jsonb,
  now() - ((160) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  '{"sub":"79883a6b-e9c7-5f22-a98f-8d636b320410","email":"tara.fernandez.260@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '79883a6b-e9c7-5f22-a98f-8d636b320410',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Tara',
  last_name = 'Fernandez',
  full_name = 'Tara Fernandez',
  email = 'tara.fernandez.260@gmail.com',
  title = 'PhD Candidate',
  institution = 'EPFL',
  location = 'Chicago, IL',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at EPFL working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'full-time',
  availability_hours = 5,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'authenticated',
  'authenticated',
  'aaron.richardson.261@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((161) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Aaron","last_name":"Richardson","full_name":"Aaron Richardson"}'::jsonb,
  now() - ((161) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  '{"sub":"d4d6e180-4554-5046-b730-9f17ed97b918","email":"aaron.richardson.261@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'd4d6e180-4554-5046-b730-9f17ed97b918',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Aaron',
  last_name = 'Richardson',
  full_name = 'Aaron Richardson',
  email = 'aaron.richardson.261@outlook.com',
  title = 'Research Scientist',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at UC Berkeley working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'weekends',
  availability_hours = 6,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  'authenticated',
  'authenticated',
  'imani.sanders.262@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((162) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Imani","last_name":"Sanders","full_name":"Imani Sanders"}'::jsonb,
  now() - ((162) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  '{"sub":"43e41d82-f25d-529d-8b80-2b46f9cbb827","email":"imani.sanders.262@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '43e41d82-f25d-529d-8b80-2b46f9cbb827',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Imani',
  last_name = 'Sanders',
  full_name = 'Imani Sanders',
  email = 'imani.sanders.262@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Washington working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'part-time',
  availability_hours = 7,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  'authenticated',
  'authenticated',
  'noah.long.263@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((163) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Noah","last_name":"Long","full_name":"Noah Long"}'::jsonb,
  now() - ((163) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  '{"sub":"90417be3-0d6e-57da-a1d1-19707b745db1","email":"noah.long.263@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '90417be3-0d6e-57da-a1d1-19707b745db1',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Noah',
  last_name = 'Long',
  full_name = 'Noah Long',
  email = 'noah.long.263@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Columbia University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'full-time',
  availability_hours = 8,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  'authenticated',
  'authenticated',
  'amelia.khan.264@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((164) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Amelia","last_name":"Khan","full_name":"Amelia Khan"}'::jsonb,
  now() - ((164) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  '{"sub":"bf27d27b-b8a0-5585-b4d7-53f3c05d1d98","email":"amelia.khan.264@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Amelia',
  last_name = 'Khan',
  full_name = 'Amelia Khan',
  email = 'amelia.khan.264@proton.me',
  title = 'Visiting Scholar',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Caltech working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'weekends',
  availability_hours = 9,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  'authenticated',
  'authenticated',
  'ethan.rodriguez.265@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((165) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ethan","last_name":"Rodriguez","full_name":"Ethan Rodriguez"}'::jsonb,
  now() - ((165) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  '{"sub":"7d423b06-d535-5871-ace9-41c2e74afcf3","email":"ethan.rodriguez.265@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '7d423b06-d535-5871-ace9-41c2e74afcf3',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ethan',
  last_name = 'Rodriguez',
  full_name = 'Ethan Rodriguez',
  email = 'ethan.rodriguez.265@gmail.com',
  title = 'PhD Candidate',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Cornell University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'part-time',
  availability_hours = 10,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  'authenticated',
  'authenticated',
  'leila.turner.266@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((166) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Leila","last_name":"Turner","full_name":"Leila Turner"}'::jsonb,
  now() - ((166) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  '{"sub":"0bbe96ba-9491-5ed6-b11e-242435627659","email":"leila.turner.266@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '0bbe96ba-9491-5ed6-b11e-242435627659',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Leila',
  last_name = 'Turner',
  full_name = 'Leila Turner',
  email = 'leila.turner.266@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Texas at Austin working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'full-time',
  availability_hours = 11,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  'authenticated',
  'authenticated',
  'caleb.gray.267@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((167) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Caleb","last_name":"Gray","full_name":"Caleb Gray"}'::jsonb,
  now() - ((167) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  '{"sub":"d15aeece-2666-53ef-84fa-796fcea941ac","email":"caleb.gray.267@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'd15aeece-2666-53ef-84fa-796fcea941ac',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Caleb',
  last_name = 'Gray',
  full_name = 'Caleb Gray',
  email = 'caleb.gray.267@icloud.com',
  title = 'Associate Professor',
  institution = 'EPFL',
  location = 'Melbourne, AU',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at EPFL working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'weekends',
  availability_hours = 12,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid;