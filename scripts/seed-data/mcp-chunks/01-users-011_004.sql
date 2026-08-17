INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '2e17579b-6b8b-5000-b30d-a2dde2efb47d'::uuid,
  'authenticated',
  'authenticated',
  'elena.cox.572@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((72) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Elena","last_name":"Cox","full_name":"Elena Cox"}'::jsonb,
  now() - ((72) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '2e17579b-6b8b-5000-b30d-a2dde2efb47d'::uuid,
  '2e17579b-6b8b-5000-b30d-a2dde2efb47d'::uuid,
  '{"sub":"2e17579b-6b8b-5000-b30d-a2dde2efb47d","email":"elena.cox.572@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '2e17579b-6b8b-5000-b30d-a2dde2efb47d',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Elena',
  last_name = 'Cox',
  full_name = 'Elena Cox',
  email = 'elena.cox.572@icloud.com',
  title = 'Associate Professor',
  institution = 'Caltech',
  location = 'Ann Arbor, MI',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Caltech working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'full-time',
  availability_hours = 17,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '2e17579b-6b8b-5000-b30d-a2dde2efb47d'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid,
  'authenticated',
  'authenticated',
  'rohan.price.573@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((73) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Rohan","last_name":"Price","full_name":"Rohan Price"}'::jsonb,
  now() - ((73) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid,
  '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid,
  '{"sub":"91c678b4-6d1b-543c-ab3e-c298a0d3b8e5","email":"rohan.price.573@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Rohan',
  last_name = 'Price',
  full_name = 'Rohan Price',
  email = 'rohan.price.573@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Cornell University',
  location = 'Los Angeles, CA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Cornell University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'weekends',
  availability_hours = 18,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid,
  'authenticated',
  'authenticated',
  'fatima.patterson.574@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((74) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Fatima","last_name":"Patterson","full_name":"Fatima Patterson"}'::jsonb,
  now() - ((74) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid,
  '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid,
  '{"sub":"882ce91f-dd4d-5798-9c92-ceb3be3c526c","email":"fatima.patterson.574@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '882ce91f-dd4d-5798-9c92-ceb3be3c526c',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Fatima',
  last_name = 'Patterson',
  full_name = 'Fatima Patterson',
  email = 'fatima.patterson.574@proton.me',
  title = 'Visiting Scholar',
  institution = 'University of Texas at Austin',
  location = 'New York, NY',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at University of Texas at Austin working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'part-time',
  availability_hours = 19,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid,
  'authenticated',
  'authenticated',
  'samir.park.575@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((75) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Samir","last_name":"Park","full_name":"Samir Park"}'::jsonb,
  now() - ((75) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid,
  'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid,
  '{"sub":"f31489f0-dc57-5438-85f8-5bbf509b95a9","email":"samir.park.575@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f31489f0-dc57-5438-85f8-5bbf509b95a9',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Samir',
  last_name = 'Park',
  full_name = 'Samir Park',
  email = 'samir.park.575@gmail.com',
  title = 'PhD Candidate',
  institution = 'EPFL',
  location = 'Chicago, IL',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at EPFL working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'full-time',
  availability_hours = 20,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid,
  'authenticated',
  'authenticated',
  'camila.lee.576@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((76) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Camila","last_name":"Lee","full_name":"Camila Lee"}'::jsonb,
  now() - ((76) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid,
  '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid,
  '{"sub":"9fb50165-a8eb-59fc-a02a-980426bca98e","email":"camila.lee.576@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '9fb50165-a8eb-59fc-a02a-980426bca98e',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Camila',
  last_name = 'Lee',
  full_name = 'Camila Lee',
  email = 'camila.lee.576@outlook.com',
  title = 'Research Scientist',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at UC Berkeley working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'weekends',
  availability_hours = 21,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid,
  'authenticated',
  'authenticated',
  'daniel.brooks.577@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((77) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Daniel","last_name":"Brooks","full_name":"Daniel Brooks"}'::jsonb,
  now() - ((77) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid,
  '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid,
  '{"sub":"51cba535-121a-5cfc-b614-ab625cdd313b","email":"daniel.brooks.577@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '51cba535-121a-5cfc-b614-ab625cdd313b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Daniel',
  last_name = 'Brooks',
  full_name = 'Daniel Brooks',
  email = 'daniel.brooks.577@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Washington working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'part-time',
  availability_hours = 22,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid,
  'authenticated',
  'authenticated',
  'nina.ramirez.578@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((78) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nina","last_name":"Ramirez","full_name":"Nina Ramirez"}'::jsonb,
  now() - ((78) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid,
  '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid,
  '{"sub":"4499d8b5-c21e-5f7f-ac58-d210e2423913","email":"nina.ramirez.578@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '4499d8b5-c21e-5f7f-ac58-d210e2423913',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nina',
  last_name = 'Ramirez',
  full_name = 'Nina Ramirez',
  email = 'nina.ramirez.578@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Columbia University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'full-time',
  availability_hours = 23,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '02513dbb-0dc9-5a45-aaa5-3fd7c0d8c871'::uuid,
  'authenticated',
  'authenticated',
  'oliver.coleman.579@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((79) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Oliver","last_name":"Coleman","full_name":"Oliver Coleman"}'::jsonb,
  now() - ((79) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '02513dbb-0dc9-5a45-aaa5-3fd7c0d8c871'::uuid,
  '02513dbb-0dc9-5a45-aaa5-3fd7c0d8c871'::uuid,
  '{"sub":"02513dbb-0dc9-5a45-aaa5-3fd7c0d8c871","email":"oliver.coleman.579@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '02513dbb-0dc9-5a45-aaa5-3fd7c0d8c871',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Oliver',
  last_name = 'Coleman',
  full_name = 'Oliver Coleman',
  email = 'oliver.coleman.579@proton.me',
  title = 'Visiting Scholar',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Caltech working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'weekends',
  availability_hours = 24,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '02513dbb-0dc9-5a45-aaa5-3fd7c0d8c871'::uuid;