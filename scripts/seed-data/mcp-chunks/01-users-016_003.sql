INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid,
  'authenticated',
  'authenticated',
  'ananya.bennett.764@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((264) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ananya","last_name":"Bennett","full_name":"Ananya Bennett"}'::jsonb,
  now() - ((264) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid,
  '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid,
  '{"sub":"8cb57f2a-fbde-564a-a07f-982bb2361506","email":"ananya.bennett.764@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '8cb57f2a-fbde-564a-a07f-982bb2361506',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ananya',
  last_name = 'Bennett',
  full_name = 'Ananya Bennett',
  email = 'ananya.bennett.764@proton.me',
  title = 'Visiting Scholar',
  institution = 'EPFL',
  location = 'Chicago, IL',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at EPFL working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  'authenticated',
  'authenticated',
  'benjamin.chen.765@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((265) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Benjamin","last_name":"Chen","full_name":"Benjamin Chen"}'::jsonb,
  now() - ((265) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  '{"sub":"f657d03a-29c5-553e-a103-2e7bae1435e9","email":"benjamin.chen.765@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f657d03a-29c5-553e-a103-2e7bae1435e9',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Benjamin',
  last_name = 'Chen',
  full_name = 'Benjamin Chen',
  email = 'benjamin.chen.765@gmail.com',
  title = 'PhD Candidate',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at UC Berkeley working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid,
  'authenticated',
  'authenticated',
  'ava.lopez.766@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((266) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ava","last_name":"Lopez","full_name":"Ava Lopez"}'::jsonb,
  now() - ((266) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid,
  '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid,
  '{"sub":"0d9585a1-cb90-50ae-b41c-a594e5492606","email":"ava.lopez.766@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '0d9585a1-cb90-50ae-b41c-a594e5492606',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ava',
  last_name = 'Lopez',
  full_name = 'Ava Lopez',
  email = 'ava.lopez.766@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Washington working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid,
  'authenticated',
  'authenticated',
  'sebastian.wright.767@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((267) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sebastian","last_name":"Wright","full_name":"Sebastian Wright"}'::jsonb,
  now() - ((267) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid,
  '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid,
  '{"sub":"6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea","email":"sebastian.wright.767@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sebastian',
  last_name = 'Wright',
  full_name = 'Sebastian Wright',
  email = 'sebastian.wright.767@icloud.com',
  title = 'Associate Professor',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Columbia University working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid,
  'authenticated',
  'authenticated',
  'amina.reed.768@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((268) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Amina","last_name":"Reed","full_name":"Amina Reed"}'::jsonb,
  now() - ((268) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid,
  '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid,
  '{"sub":"64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7","email":"amina.reed.768@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Amina',
  last_name = 'Reed',
  full_name = 'Amina Reed',
  email = 'amina.reed.768@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Caltech working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = '64d3d69a-f87f-5cfa-98dd-ee0f6298eeb7'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '82910639-3add-56af-a2cb-692bff954f43'::uuid,
  'authenticated',
  'authenticated',
  'liam.james.769@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((269) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Liam","last_name":"James","full_name":"Liam James"}'::jsonb,
  now() - ((269) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '82910639-3add-56af-a2cb-692bff954f43'::uuid,
  '82910639-3add-56af-a2cb-692bff954f43'::uuid,
  '{"sub":"82910639-3add-56af-a2cb-692bff954f43","email":"liam.james.769@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '82910639-3add-56af-a2cb-692bff954f43',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Liam',
  last_name = 'James',
  full_name = 'Liam James',
  email = 'liam.james.769@proton.me',
  title = 'Visiting Scholar',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Cornell University working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = '82910639-3add-56af-a2cb-692bff954f43'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
  'authenticated',
  'authenticated',
  'hannah.jenkins.770@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((270) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Hannah","last_name":"Jenkins","full_name":"Hannah Jenkins"}'::jsonb,
  now() - ((270) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid,
  '{"sub":"55faa67c-32cf-52c5-b10e-c03e4d7d9f64","email":"hannah.jenkins.770@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '55faa67c-32cf-52c5-b10e-c03e4d7d9f64',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Hannah',
  last_name = 'Jenkins',
  full_name = 'Hannah Jenkins',
  email = 'hannah.jenkins.770@gmail.com',
  title = 'PhD Candidate',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at University of Texas at Austin working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = '55faa67c-32cf-52c5-b10e-c03e4d7d9f64'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid,
  'authenticated',
  'authenticated',
  'julian.johnson.771@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((271) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Julian","last_name":"Johnson","full_name":"Julian Johnson"}'::jsonb,
  now() - ((271) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid,
  '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid,
  '{"sub":"1214a067-a9ee-501b-98f3-80c931d735d4","email":"julian.johnson.771@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '1214a067-a9ee-501b-98f3-80c931d735d4',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Julian',
  last_name = 'Johnson',
  full_name = 'Julian Johnson',
  email = 'julian.johnson.771@outlook.com',
  title = 'Research Scientist',
  institution = 'EPFL',
  location = 'Melbourne, AU',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at EPFL working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid;