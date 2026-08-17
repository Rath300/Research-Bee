INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'd03250de-48b2-59ba-9295-19028affe265'::uuid,
  'authenticated',
  'authenticated',
  'tara.fernandez.860@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((360) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Tara","last_name":"Fernandez","full_name":"Tara Fernandez"}'::jsonb,
  now() - ((360) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'd03250de-48b2-59ba-9295-19028affe265'::uuid,
  'd03250de-48b2-59ba-9295-19028affe265'::uuid,
  '{"sub":"d03250de-48b2-59ba-9295-19028affe265","email":"tara.fernandez.860@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'd03250de-48b2-59ba-9295-19028affe265',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Tara',
  last_name = 'Fernandez',
  full_name = 'Tara Fernandez',
  email = 'tara.fernandez.860@gmail.com',
  title = 'PhD Candidate',
  institution = 'Cornell University',
  location = 'Toronto, ON',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Cornell University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = 'd03250de-48b2-59ba-9295-19028affe265'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'a6390256-0979-5984-bd9a-7a836b35c744'::uuid,
  'authenticated',
  'authenticated',
  'aaron.richardson.861@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((361) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Aaron","last_name":"Richardson","full_name":"Aaron Richardson"}'::jsonb,
  now() - ((361) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'a6390256-0979-5984-bd9a-7a836b35c744'::uuid,
  'a6390256-0979-5984-bd9a-7a836b35c744'::uuid,
  '{"sub":"a6390256-0979-5984-bd9a-7a836b35c744","email":"aaron.richardson.861@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'a6390256-0979-5984-bd9a-7a836b35c744',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Aaron',
  last_name = 'Richardson',
  full_name = 'Aaron Richardson',
  email = 'aaron.richardson.861@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Texas at Austin',
  location = 'Zurich, CH',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Texas at Austin working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = 'a6390256-0979-5984-bd9a-7a836b35c744'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid,
  'authenticated',
  'authenticated',
  'imani.sanders.862@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((362) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Imani","last_name":"Sanders","full_name":"Imani Sanders"}'::jsonb,
  now() - ((362) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid,
  'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid,
  '{"sub":"ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d","email":"imani.sanders.862@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Imani',
  last_name = 'Sanders',
  full_name = 'Imani Sanders',
  email = 'imani.sanders.862@icloud.com',
  title = 'Associate Professor',
  institution = 'EPFL',
  location = 'London, UK',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at EPFL working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = 'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  'authenticated',
  'authenticated',
  'noah.long.863@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((363) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Noah","last_name":"Long","full_name":"Noah Long"}'::jsonb,
  now() - ((363) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  '{"sub":"5cf4ccea-92d5-5091-acda-a50401fee6e4","email":"noah.long.863@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '5cf4ccea-92d5-5091-acda-a50401fee6e4',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Noah',
  last_name = 'Long',
  full_name = 'Noah Long',
  email = 'noah.long.863@yahoo.com',
  title = 'Staff Scientist',
  institution = 'UC Berkeley',
  location = 'Seattle, WA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at UC Berkeley working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '5de1fcbf-1f68-51c0-af75-2ad3cc81bc14'::uuid,
  'authenticated',
  'authenticated',
  'amelia.khan.864@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((364) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Amelia","last_name":"Khan","full_name":"Amelia Khan"}'::jsonb,
  now() - ((364) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '5de1fcbf-1f68-51c0-af75-2ad3cc81bc14'::uuid,
  '5de1fcbf-1f68-51c0-af75-2ad3cc81bc14'::uuid,
  '{"sub":"5de1fcbf-1f68-51c0-af75-2ad3cc81bc14","email":"amelia.khan.864@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '5de1fcbf-1f68-51c0-af75-2ad3cc81bc14',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Amelia',
  last_name = 'Khan',
  full_name = 'Amelia Khan',
  email = 'amelia.khan.864@proton.me',
  title = 'Visiting Scholar',
  institution = 'University of Washington',
  location = 'Pittsburgh, PA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at University of Washington working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = '5de1fcbf-1f68-51c0-af75-2ad3cc81bc14'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid,
  'authenticated',
  'authenticated',
  'ethan.rodriguez.865@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((365) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ethan","last_name":"Rodriguez","full_name":"Ethan Rodriguez"}'::jsonb,
  now() - ((365) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid,
  'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid,
  '{"sub":"b6490efa-6d6a-5491-af21-1ed30bf639f0","email":"ethan.rodriguez.865@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b6490efa-6d6a-5491-af21-1ed30bf639f0',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ethan',
  last_name = 'Rodriguez',
  full_name = 'Ethan Rodriguez',
  email = 'ethan.rodriguez.865@gmail.com',
  title = 'PhD Candidate',
  institution = 'Columbia University',
  location = 'Atlanta, GA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Columbia University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = 'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid,
  'authenticated',
  'authenticated',
  'leila.turner.866@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((366) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Leila","last_name":"Turner","full_name":"Leila Turner"}'::jsonb,
  now() - ((366) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid,
  'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid,
  '{"sub":"fc5ffa00-9523-5cbc-b75c-9624baeb1992","email":"leila.turner.866@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'fc5ffa00-9523-5cbc-b75c-9624baeb1992',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Leila',
  last_name = 'Turner',
  full_name = 'Leila Turner',
  email = 'leila.turner.866@outlook.com',
  title = 'Research Scientist',
  institution = 'Caltech',
  location = 'Ann Arbor, MI',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Caltech working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = 'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b81754bd-ca00-5b38-b9dd-84e4572e645e'::uuid,
  'authenticated',
  'authenticated',
  'caleb.gray.867@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((367) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Caleb","last_name":"Gray","full_name":"Caleb Gray"}'::jsonb,
  now() - ((367) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b81754bd-ca00-5b38-b9dd-84e4572e645e'::uuid,
  'b81754bd-ca00-5b38-b9dd-84e4572e645e'::uuid,
  '{"sub":"b81754bd-ca00-5b38-b9dd-84e4572e645e","email":"caleb.gray.867@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b81754bd-ca00-5b38-b9dd-84e4572e645e',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Caleb',
  last_name = 'Gray',
  full_name = 'Caleb Gray',
  email = 'caleb.gray.867@icloud.com',
  title = 'Associate Professor',
  institution = 'Cornell University',
  location = 'Los Angeles, CA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Cornell University working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = 'b81754bd-ca00-5b38-b9dd-84e4572e645e'::uuid;