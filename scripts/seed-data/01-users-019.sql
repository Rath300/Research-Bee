-- population users 760..799

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


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid,
  'authenticated',
  'authenticated',
  'sana.henderson.868@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((368) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sana","last_name":"Henderson","full_name":"Sana Henderson"}'::jsonb,
  now() - ((368) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid,
  'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid,
  '{"sub":"bc781f9c-1d1a-53c6-aaec-f25806c05382","email":"sana.henderson.868@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'bc781f9c-1d1a-53c6-aaec-f25806c05382',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sana',
  last_name = 'Henderson',
  full_name = 'Sana Henderson',
  email = 'sana.henderson.868@yahoo.com',
  title = 'Staff Scientist',
  institution = 'University of Texas at Austin',
  location = 'New York, NY',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at University of Texas at Austin working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'part-time',
  availability_hours = 13,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid,
  'authenticated',
  'authenticated',
  'marcus.kim.869@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((369) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Marcus","last_name":"Kim","full_name":"Marcus Kim"}'::jsonb,
  now() - ((369) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid,
  'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid,
  '{"sub":"ba7fc771-ba33-54f2-b75c-bf563b08e7e3","email":"marcus.kim.869@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'ba7fc771-ba33-54f2-b75c-bf563b08e7e3',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Marcus',
  last_name = 'Kim',
  full_name = 'Marcus Kim',
  email = 'marcus.kim.869@proton.me',
  title = 'Visiting Scholar',
  institution = 'EPFL',
  location = 'Chicago, IL',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at EPFL working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'full-time',
  availability_hours = 14,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  'authenticated',
  'authenticated',
  'hana.costa.870@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((370) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Hana","last_name":"Costa","full_name":"Hana Costa"}'::jsonb,
  now() - ((370) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  '{"sub":"50ad2705-6c08-5d3c-a6f7-dd4d59b16af6","email":"hana.costa.870@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Hana',
  last_name = 'Costa',
  full_name = 'Hana Costa',
  email = 'hana.costa.870@gmail.com',
  title = 'PhD Candidate',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at UC Berkeley working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'weekends',
  availability_hours = 15,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid,
  'authenticated',
  'authenticated',
  'maya.clark.871@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((371) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Maya","last_name":"Clark","full_name":"Maya Clark"}'::jsonb,
  now() - ((371) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid,
  'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid,
  '{"sub":"d7da1031-b378-592c-82ed-381c68c0b7ca","email":"maya.clark.871@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'd7da1031-b378-592c-82ed-381c68c0b7ca',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Maya',
  last_name = 'Clark',
  full_name = 'Maya Clark',
  email = 'maya.clark.871@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Washington working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'part-time',
  availability_hours = 16,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '15865a04-1474-5ed2-83c7-7253a44f846b'::uuid,
  'authenticated',
  'authenticated',
  'elena.cox.872@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((372) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Elena","last_name":"Cox","full_name":"Elena Cox"}'::jsonb,
  now() - ((372) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '15865a04-1474-5ed2-83c7-7253a44f846b'::uuid,
  '15865a04-1474-5ed2-83c7-7253a44f846b'::uuid,
  '{"sub":"15865a04-1474-5ed2-83c7-7253a44f846b","email":"elena.cox.872@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '15865a04-1474-5ed2-83c7-7253a44f846b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Elena',
  last_name = 'Cox',
  full_name = 'Elena Cox',
  email = 'elena.cox.872@icloud.com',
  title = 'Associate Professor',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Columbia University working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'full-time',
  availability_hours = 17,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '15865a04-1474-5ed2-83c7-7253a44f846b'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'aa885fbb-6de3-5ab0-85fd-6ea5a6800fb4'::uuid,
  'authenticated',
  'authenticated',
  'rohan.price.873@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((373) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Rohan","last_name":"Price","full_name":"Rohan Price"}'::jsonb,
  now() - ((373) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'aa885fbb-6de3-5ab0-85fd-6ea5a6800fb4'::uuid,
  'aa885fbb-6de3-5ab0-85fd-6ea5a6800fb4'::uuid,
  '{"sub":"aa885fbb-6de3-5ab0-85fd-6ea5a6800fb4","email":"rohan.price.873@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'aa885fbb-6de3-5ab0-85fd-6ea5a6800fb4',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Rohan',
  last_name = 'Price',
  full_name = 'Rohan Price',
  email = 'rohan.price.873@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Caltech working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'weekends',
  availability_hours = 18,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'aa885fbb-6de3-5ab0-85fd-6ea5a6800fb4'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '7bb33105-f9a4-5ba2-b9bc-caaf0a756d2b'::uuid,
  'authenticated',
  'authenticated',
  'fatima.patterson.874@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((374) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Fatima","last_name":"Patterson","full_name":"Fatima Patterson"}'::jsonb,
  now() - ((374) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '7bb33105-f9a4-5ba2-b9bc-caaf0a756d2b'::uuid,
  '7bb33105-f9a4-5ba2-b9bc-caaf0a756d2b'::uuid,
  '{"sub":"7bb33105-f9a4-5ba2-b9bc-caaf0a756d2b","email":"fatima.patterson.874@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '7bb33105-f9a4-5ba2-b9bc-caaf0a756d2b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Fatima',
  last_name = 'Patterson',
  full_name = 'Fatima Patterson',
  email = 'fatima.patterson.874@proton.me',
  title = 'Visiting Scholar',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Cornell University working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'part-time',
  availability_hours = 19,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '7bb33105-f9a4-5ba2-b9bc-caaf0a756d2b'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
  'authenticated',
  'authenticated',
  'samir.park.875@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((375) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Samir","last_name":"Park","full_name":"Samir Park"}'::jsonb,
  now() - ((375) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
  '{"sub":"2c5eb884-3405-5789-9702-6108c737ec7e","email":"samir.park.875@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '2c5eb884-3405-5789-9702-6108c737ec7e',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Samir',
  last_name = 'Park',
  full_name = 'Samir Park',
  email = 'samir.park.875@gmail.com',
  title = 'PhD Candidate',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at University of Texas at Austin working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'full-time',
  availability_hours = 20,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  'authenticated',
  'authenticated',
  'camila.lee.876@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((376) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Camila","last_name":"Lee","full_name":"Camila Lee"}'::jsonb,
  now() - ((376) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  '{"sub":"ca6e036a-10af-55b8-92da-f460eafa38a5","email":"camila.lee.876@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'ca6e036a-10af-55b8-92da-f460eafa38a5',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Camila',
  last_name = 'Lee',
  full_name = 'Camila Lee',
  email = 'camila.lee.876@outlook.com',
  title = 'Research Scientist',
  institution = 'EPFL',
  location = 'Melbourne, AU',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at EPFL working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'weekends',
  availability_hours = 21,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid,
  'authenticated',
  'authenticated',
  'daniel.brooks.877@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((377) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Daniel","last_name":"Brooks","full_name":"Daniel Brooks"}'::jsonb,
  now() - ((377) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid,
  '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid,
  '{"sub":"89aa91c4-b9ae-510d-a439-dabca78c14c8","email":"daniel.brooks.877@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '89aa91c4-b9ae-510d-a439-dabca78c14c8',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Daniel',
  last_name = 'Brooks',
  full_name = 'Daniel Brooks',
  email = 'daniel.brooks.877@icloud.com',
  title = 'Associate Professor',
  institution = 'UC Berkeley',
  location = 'Cambridge, MA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at UC Berkeley working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'part-time',
  availability_hours = 22,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid,
  'authenticated',
  'authenticated',
  'nina.ramirez.878@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((378) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nina","last_name":"Ramirez","full_name":"Nina Ramirez"}'::jsonb,
  now() - ((378) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid,
  '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid,
  '{"sub":"85a88a42-7b3b-5fdb-a22a-99a60988005b","email":"nina.ramirez.878@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '85a88a42-7b3b-5fdb-a22a-99a60988005b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nina',
  last_name = 'Ramirez',
  full_name = 'Nina Ramirez',
  email = 'nina.ramirez.878@yahoo.com',
  title = 'Staff Scientist',
  institution = 'University of Washington',
  location = 'Palo Alto, CA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at University of Washington working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'full-time',
  availability_hours = 23,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '4f80ee7a-7c51-5b23-b65f-24dd7396e442'::uuid,
  'authenticated',
  'authenticated',
  'oliver.coleman.879@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((379) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Oliver","last_name":"Coleman","full_name":"Oliver Coleman"}'::jsonb,
  now() - ((379) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '4f80ee7a-7c51-5b23-b65f-24dd7396e442'::uuid,
  '4f80ee7a-7c51-5b23-b65f-24dd7396e442'::uuid,
  '{"sub":"4f80ee7a-7c51-5b23-b65f-24dd7396e442","email":"oliver.coleman.879@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '4f80ee7a-7c51-5b23-b65f-24dd7396e442',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Oliver',
  last_name = 'Coleman',
  full_name = 'Oliver Coleman',
  email = 'oliver.coleman.879@proton.me',
  title = 'Visiting Scholar',
  institution = 'Columbia University',
  location = 'Berkeley, CA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Columbia University working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'weekends',
  availability_hours = 24,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '4f80ee7a-7c51-5b23-b65f-24dd7396e442'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid,
  'authenticated',
  'authenticated',
  'sofia.ali.880@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((380) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sofia","last_name":"Ali","full_name":"Sofia Ali"}'::jsonb,
  now() - ((380) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid,
  'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid,
  '{"sub":"f8dca6c4-5135-5cbf-80f9-431d980d2860","email":"sofia.ali.880@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f8dca6c4-5135-5cbf-80f9-431d980d2860',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sofia',
  last_name = 'Ali',
  full_name = 'Sofia Ali',
  email = 'sofia.ali.880@gmail.com',
  title = 'PhD Candidate',
  institution = 'Caltech',
  location = 'Boston, MA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Caltech working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'part-time',
  availability_hours = 5,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid,
  'authenticated',
  'authenticated',
  'kenji.miller.881@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((381) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Kenji","last_name":"Miller","full_name":"Kenji Miller"}'::jsonb,
  now() - ((381) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid,
  'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid,
  '{"sub":"b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909","email":"kenji.miller.881@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Kenji',
  last_name = 'Miller',
  full_name = 'Kenji Miller',
  email = 'kenji.miller.881@outlook.com',
  title = 'Research Scientist',
  institution = 'Cornell University',
  location = 'Toronto, ON',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Cornell University working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'full-time',
  availability_hours = 6,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  'authenticated',
  'authenticated',
  'zara.yamamoto.882@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((382) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Zara","last_name":"Yamamoto","full_name":"Zara Yamamoto"}'::jsonb,
  now() - ((382) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  '{"sub":"a48a8fca-41f2-5981-aa66-87c58fba332d","email":"zara.yamamoto.882@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'a48a8fca-41f2-5981-aa66-87c58fba332d',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Zara',
  last_name = 'Yamamoto',
  full_name = 'Zara Yamamoto',
  email = 'zara.yamamoto.882@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Texas at Austin',
  location = 'Zurich, CH',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Texas at Austin working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'weekends',
  availability_hours = 7,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  'authenticated',
  'authenticated',
  'kai.howard.883@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((383) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Kai","last_name":"Howard","full_name":"Kai Howard"}'::jsonb,
  now() - ((383) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  '{"sub":"3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b","email":"kai.howard.883@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Kai',
  last_name = 'Howard',
  full_name = 'Kai Howard',
  email = 'kai.howard.883@yahoo.com',
  title = 'Staff Scientist',
  institution = 'EPFL',
  location = 'London, UK',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at EPFL working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'part-time',
  availability_hours = 8,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid,
  'authenticated',
  'authenticated',
  'ananya.bennett.884@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((384) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ananya","last_name":"Bennett","full_name":"Ananya Bennett"}'::jsonb,
  now() - ((384) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid,
  '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid,
  '{"sub":"1930b2bd-9292-5ae1-8aa8-87ba01cf39b3","email":"ananya.bennett.884@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ananya',
  last_name = 'Bennett',
  full_name = 'Ananya Bennett',
  email = 'ananya.bennett.884@proton.me',
  title = 'Visiting Scholar',
  institution = 'UC Berkeley',
  location = 'Seattle, WA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at UC Berkeley working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'full-time',
  availability_hours = 9,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid,
  'authenticated',
  'authenticated',
  'benjamin.chen.885@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((385) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Benjamin","last_name":"Chen","full_name":"Benjamin Chen"}'::jsonb,
  now() - ((385) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid,
  '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid,
  '{"sub":"113d16a0-5709-5fb9-8d07-e289327584ed","email":"benjamin.chen.885@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '113d16a0-5709-5fb9-8d07-e289327584ed',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Benjamin',
  last_name = 'Chen',
  full_name = 'Benjamin Chen',
  email = 'benjamin.chen.885@gmail.com',
  title = 'PhD Candidate',
  institution = 'University of Washington',
  location = 'Pittsburgh, PA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at University of Washington working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'weekends',
  availability_hours = 10,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid,
  'authenticated',
  'authenticated',
  'ava.lopez.886@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((386) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ava","last_name":"Lopez","full_name":"Ava Lopez"}'::jsonb,
  now() - ((386) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid,
  'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid,
  '{"sub":"ed19adb5-3942-532c-aeef-104ad492eab3","email":"ava.lopez.886@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'ed19adb5-3942-532c-aeef-104ad492eab3',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ava',
  last_name = 'Lopez',
  full_name = 'Ava Lopez',
  email = 'ava.lopez.886@outlook.com',
  title = 'Research Scientist',
  institution = 'Columbia University',
  location = 'Atlanta, GA',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Columbia University working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'part-time',
  availability_hours = 11,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid,
  'authenticated',
  'authenticated',
  'sebastian.wright.887@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((387) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sebastian","last_name":"Wright","full_name":"Sebastian Wright"}'::jsonb,
  now() - ((387) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid,
  'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid,
  '{"sub":"d708a5b4-b620-51f1-80dc-cab1cf1aba19","email":"sebastian.wright.887@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'd708a5b4-b620-51f1-80dc-cab1cf1aba19',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sebastian',
  last_name = 'Wright',
  full_name = 'Sebastian Wright',
  email = 'sebastian.wright.887@icloud.com',
  title = 'Associate Professor',
  institution = 'Caltech',
  location = 'Ann Arbor, MI',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Caltech working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'full-time',
  availability_hours = 12,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid,
  'authenticated',
  'authenticated',
  'amina.reed.888@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((388) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Amina","last_name":"Reed","full_name":"Amina Reed"}'::jsonb,
  now() - ((388) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid,
  '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid,
  '{"sub":"13eeb55e-7dde-51bb-b7f5-3db2c62e28e7","email":"amina.reed.888@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Amina',
  last_name = 'Reed',
  full_name = 'Amina Reed',
  email = 'amina.reed.888@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Cornell University',
  location = 'Los Angeles, CA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Cornell University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'weekends',
  availability_hours = 13,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid,
  'authenticated',
  'authenticated',
  'liam.james.889@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((389) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Liam","last_name":"James","full_name":"Liam James"}'::jsonb,
  now() - ((389) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid,
  '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid,
  '{"sub":"32c996f0-f86e-5230-9f69-860c68c2a67c","email":"liam.james.889@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '32c996f0-f86e-5230-9f69-860c68c2a67c',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Liam',
  last_name = 'James',
  full_name = 'Liam James',
  email = 'liam.james.889@proton.me',
  title = 'Visiting Scholar',
  institution = 'University of Texas at Austin',
  location = 'New York, NY',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at University of Texas at Austin working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'part-time',
  availability_hours = 14,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  'authenticated',
  'authenticated',
  'hannah.jenkins.890@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((390) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Hannah","last_name":"Jenkins","full_name":"Hannah Jenkins"}'::jsonb,
  now() - ((390) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  '{"sub":"09f6f046-2d8f-58d1-be5f-2a968e9c243e","email":"hannah.jenkins.890@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Hannah',
  last_name = 'Jenkins',
  full_name = 'Hannah Jenkins',
  email = 'hannah.jenkins.890@gmail.com',
  title = 'PhD Candidate',
  institution = 'EPFL',
  location = 'Chicago, IL',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at EPFL working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'full-time',
  availability_hours = 15,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid,
  'authenticated',
  'authenticated',
  'julian.johnson.891@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((391) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Julian","last_name":"Johnson","full_name":"Julian Johnson"}'::jsonb,
  now() - ((391) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid,
  '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid,
  '{"sub":"3ded6ddb-d842-54f0-abf2-3e272b3178be","email":"julian.johnson.891@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '3ded6ddb-d842-54f0-abf2-3e272b3178be',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Julian',
  last_name = 'Johnson',
  full_name = 'Julian Johnson',
  email = 'julian.johnson.891@outlook.com',
  title = 'Research Scientist',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at UC Berkeley working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'weekends',
  availability_hours = 16,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid,
  'authenticated',
  'authenticated',
  'nora.hassan.892@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((392) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nora","last_name":"Hassan","full_name":"Nora Hassan"}'::jsonb,
  now() - ((392) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid,
  'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid,
  '{"sub":"b8aa1b83-3c0a-53f5-a401-eacdd52c5a59","email":"nora.hassan.892@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nora',
  last_name = 'Hassan',
  full_name = 'Nora Hassan',
  email = 'nora.hassan.892@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Washington working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'part-time',
  availability_hours = 17,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b2898457-57d2-5375-845d-3da865e52c68'::uuid,
  'authenticated',
  'authenticated',
  'isaac.evans.893@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((393) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Isaac","last_name":"Evans","full_name":"Isaac Evans"}'::jsonb,
  now() - ((393) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b2898457-57d2-5375-845d-3da865e52c68'::uuid,
  'b2898457-57d2-5375-845d-3da865e52c68'::uuid,
  '{"sub":"b2898457-57d2-5375-845d-3da865e52c68","email":"isaac.evans.893@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b2898457-57d2-5375-845d-3da865e52c68',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Isaac',
  last_name = 'Evans',
  full_name = 'Isaac Evans',
  email = 'isaac.evans.893@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Columbia University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'full-time',
  availability_hours = 18,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'b2898457-57d2-5375-845d-3da865e52c68'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid,
  'authenticated',
  'authenticated',
  'ines.ward.894@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((394) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ines","last_name":"Ward","full_name":"Ines Ward"}'::jsonb,
  now() - ((394) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid,
  '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid,
  '{"sub":"90318e9c-7673-5d60-8f47-d5f4fd26dbd6","email":"ines.ward.894@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '90318e9c-7673-5d60-8f47-d5f4fd26dbd6',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ines',
  last_name = 'Ward',
  full_name = 'Ines Ward',
  email = 'ines.ward.894@proton.me',
  title = 'Visiting Scholar',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Caltech working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'weekends',
  availability_hours = 19,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid,
  'authenticated',
  'authenticated',
  'felix.wood.895@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((395) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Felix","last_name":"Wood","full_name":"Felix Wood"}'::jsonb,
  now() - ((395) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid,
  '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid,
  '{"sub":"90c6682a-8f8a-58a6-852c-1f4842a5def5","email":"felix.wood.895@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '90c6682a-8f8a-58a6-852c-1f4842a5def5',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Felix',
  last_name = 'Wood',
  full_name = 'Felix Wood',
  email = 'felix.wood.895@gmail.com',
  title = 'PhD Candidate',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Cornell University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'part-time',
  availability_hours = 20,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid,
  'authenticated',
  'authenticated',
  'sara.patel.896@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((396) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sara","last_name":"Patel","full_name":"Sara Patel"}'::jsonb,
  now() - ((396) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid,
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid,
  '{"sub":"5cd17e21-fe4e-5ed4-b394-0f20f92ff70b","email":"sara.patel.896@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sara',
  last_name = 'Patel',
  full_name = 'Sara Patel',
  email = 'sara.patel.896@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Texas at Austin working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'full-time',
  availability_hours = 21,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid,
  'authenticated',
  'authenticated',
  'james.martinez.897@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((397) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"James","last_name":"Martinez","full_name":"James Martinez"}'::jsonb,
  now() - ((397) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid,
  '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid,
  '{"sub":"3d8d5666-d328-525f-af6f-5d62770e273a","email":"james.martinez.897@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '3d8d5666-d328-525f-af6f-5d62770e273a',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'James',
  last_name = 'Martinez',
  full_name = 'James Martinez',
  email = 'james.martinez.897@icloud.com',
  title = 'Associate Professor',
  institution = 'EPFL',
  location = 'Melbourne, AU',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at EPFL working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'weekends',
  availability_hours = 22,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  'authenticated',
  'authenticated',
  'grace.ahmed.898@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((398) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Grace","last_name":"Ahmed","full_name":"Grace Ahmed"}'::jsonb,
  now() - ((398) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  '{"sub":"eab6b3ab-8b1a-55f2-98e3-08e308d55581","email":"grace.ahmed.898@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Grace',
  last_name = 'Ahmed',
  full_name = 'Grace Ahmed',
  email = 'grace.ahmed.898@yahoo.com',
  title = 'Staff Scientist',
  institution = 'UC Berkeley',
  location = 'Cambridge, MA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at UC Berkeley working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'part-time',
  availability_hours = 23,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '909cb930-459e-5e27-b948-adfab9f63565'::uuid,
  'authenticated',
  'authenticated',
  'mateo.bailey.899@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((399) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Mateo","last_name":"Bailey","full_name":"Mateo Bailey"}'::jsonb,
  now() - ((399) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '909cb930-459e-5e27-b948-adfab9f63565'::uuid,
  '909cb930-459e-5e27-b948-adfab9f63565'::uuid,
  '{"sub":"909cb930-459e-5e27-b948-adfab9f63565","email":"mateo.bailey.899@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '909cb930-459e-5e27-b948-adfab9f63565',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Mateo',
  last_name = 'Bailey',
  full_name = 'Mateo Bailey',
  email = 'mateo.bailey.899@proton.me',
  title = 'Visiting Scholar',
  institution = 'University of Washington',
  location = 'Palo Alto, CA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at University of Washington working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'full-time',
  availability_hours = 24,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '909cb930-459e-5e27-b948-adfab9f63565'::uuid;
