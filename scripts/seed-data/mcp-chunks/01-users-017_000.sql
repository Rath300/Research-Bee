INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid,
  'authenticated',
  'authenticated',
  'isla.watson.780@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((280) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Isla","last_name":"Watson","full_name":"Isla Watson"}'::jsonb,
  now() - ((280) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid,
  'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid,
  '{"sub":"d8cc3e5e-ef63-590b-b6d0-b52e77f37dd2","email":"isla.watson.780@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Isla',
  last_name = 'Watson',
  full_name = 'Isla Watson',
  email = 'isla.watson.780@gmail.com',
  title = 'PhD Candidate',
  institution = 'University of Washington',
  location = 'Pittsburgh, PA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at University of Washington working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'weekends',
  availability_hours = 5,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid,
  'authenticated',
  'authenticated',
  'theo.perry.781@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((281) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Theo","last_name":"Perry","full_name":"Theo Perry"}'::jsonb,
  now() - ((281) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid,
  '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid,
  '{"sub":"40b94d45-a7a1-54c4-ae03-055b85d29b1e","email":"theo.perry.781@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '40b94d45-a7a1-54c4-ae03-055b85d29b1e',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Theo',
  last_name = 'Perry',
  full_name = 'Theo Perry',
  email = 'theo.perry.781@outlook.com',
  title = 'Research Scientist',
  institution = 'Columbia University',
  location = 'Atlanta, GA',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Columbia University working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'part-time',
  availability_hours = 6,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid,
  'authenticated',
  'authenticated',
  'yara.silva.782@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((282) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Yara","last_name":"Silva","full_name":"Yara Silva"}'::jsonb,
  now() - ((282) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid,
  'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid,
  '{"sub":"b17b3a22-936c-5bc8-8fe6-67d411fbe356","email":"yara.silva.782@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b17b3a22-936c-5bc8-8fe6-67d411fbe356',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Yara',
  last_name = 'Silva',
  full_name = 'Yara Silva',
  email = 'yara.silva.782@icloud.com',
  title = 'Associate Professor',
  institution = 'Caltech',
  location = 'Ann Arbor, MI',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Caltech working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'full-time',
  availability_hours = 7,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid,
  'authenticated',
  'authenticated',
  'lucas.thompson.783@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((283) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Lucas","last_name":"Thompson","full_name":"Lucas Thompson"}'::jsonb,
  now() - ((283) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid,
  'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid,
  '{"sub":"bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8","email":"lucas.thompson.783@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Lucas',
  last_name = 'Thompson',
  full_name = 'Lucas Thompson',
  email = 'lucas.thompson.783@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Cornell University',
  location = 'Los Angeles, CA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Cornell University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'weekends',
  availability_hours = 8,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid,
  'authenticated',
  'authenticated',
  'lina.murphy.784@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((284) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Lina","last_name":"Murphy","full_name":"Lina Murphy"}'::jsonb,
  now() - ((284) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid,
  '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid,
  '{"sub":"91758615-29a6-5bd4-b9f9-19886c89343e","email":"lina.murphy.784@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '91758615-29a6-5bd4-b9f9-19886c89343e',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Lina',
  last_name = 'Murphy',
  full_name = 'Lina Murphy',
  email = 'lina.murphy.784@proton.me',
  title = 'Visiting Scholar',
  institution = 'University of Texas at Austin',
  location = 'New York, NY',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at University of Texas at Austin working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'part-time',
  availability_hours = 9,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  'authenticated',
  'authenticated',
  'david.torres.785@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((285) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"David","last_name":"Torres","full_name":"David Torres"}'::jsonb,
  now() - ((285) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  '{"sub":"eceba982-2394-5904-b315-9a2f77d07474","email":"david.torres.785@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'eceba982-2394-5904-b315-9a2f77d07474',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'David',
  last_name = 'Torres',
  full_name = 'David Torres',
  email = 'david.torres.785@gmail.com',
  title = 'PhD Candidate',
  institution = 'EPFL',
  location = 'Chicago, IL',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at EPFL working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'full-time',
  availability_hours = 10,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'eceba982-2394-5904-b315-9a2f77d07474'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid,
  'authenticated',
  'authenticated',
  'aisha.barnes.786@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((286) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Aisha","last_name":"Barnes","full_name":"Aisha Barnes"}'::jsonb,
  now() - ((286) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid,
  '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid,
  '{"sub":"0b8bc984-976f-5d9b-8a58-2fed9283e948","email":"aisha.barnes.786@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '0b8bc984-976f-5d9b-8a58-2fed9283e948',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Aisha',
  last_name = 'Barnes',
  full_name = 'Aisha Barnes',
  email = 'aisha.barnes.786@outlook.com',
  title = 'Research Scientist',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at UC Berkeley working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'weekends',
  availability_hours = 11,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid,
  'authenticated',
  'authenticated',
  'diego.nguyen.787@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((287) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Diego","last_name":"Nguyen","full_name":"Diego Nguyen"}'::jsonb,
  now() - ((287) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid,
  '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid,
  '{"sub":"08411eb2-5b9b-5df1-a3bb-2306f44169f4","email":"diego.nguyen.787@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '08411eb2-5b9b-5df1-a3bb-2306f44169f4',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Diego',
  last_name = 'Nguyen',
  full_name = 'Diego Nguyen',
  email = 'diego.nguyen.787@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Washington working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'part-time',
  availability_hours = 12,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid;