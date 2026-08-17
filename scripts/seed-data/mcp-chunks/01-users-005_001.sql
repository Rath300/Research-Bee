INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  'authenticated',
  'authenticated',
  'nadia.singh.308@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((208) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nadia","last_name":"Singh","full_name":"Nadia Singh"}'::jsonb,
  now() - ((208) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  '{"sub":"370327fd-3558-57cf-8945-bc80d916c857","email":"nadia.singh.308@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '370327fd-3558-57cf-8945-bc80d916c857',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nadia',
  last_name = 'Singh',
  full_name = 'Nadia Singh',
  email = 'nadia.singh.308@yahoo.com',
  title = 'Staff Scientist',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at University of Texas at Austin working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = '370327fd-3558-57cf-8945-bc80d916c857'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  'authenticated',
  'authenticated',
  'adrian.davis.309@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((209) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Adrian","last_name":"Davis","full_name":"Adrian Davis"}'::jsonb,
  now() - ((209) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  '{"sub":"ede28df5-d66a-5de1-b3d0-5a6905607b18","email":"adrian.davis.309@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'ede28df5-d66a-5de1-b3d0-5a6905607b18',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Adrian',
  last_name = 'Davis',
  full_name = 'Adrian Davis',
  email = 'adrian.davis.309@proton.me',
  title = 'Visiting Scholar',
  institution = 'EPFL',
  location = 'Melbourne, AU',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at EPFL working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = 'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'authenticated',
  'authenticated',
  'mei.cooper.310@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((210) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Mei","last_name":"Cooper","full_name":"Mei Cooper"}'::jsonb,
  now() - ((210) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  '{"sub":"a9c303e2-1035-5ce0-84f9-c6e3951e28e5","email":"mei.cooper.310@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Mei',
  last_name = 'Cooper',
  full_name = 'Mei Cooper',
  email = 'mei.cooper.310@gmail.com',
  title = 'PhD Candidate',
  institution = 'UC Berkeley',
  location = 'Cambridge, MA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at UC Berkeley working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid,
  'authenticated',
  'authenticated',
  'henry.brooks.311@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((211) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Henry","last_name":"Brooks","full_name":"Henry Brooks"}'::jsonb,
  now() - ((211) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid,
  'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid,
  '{"sub":"f5dc3012-e809-5818-9e73-bf363bc87587","email":"henry.brooks.311@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f5dc3012-e809-5818-9e73-bf363bc87587',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Henry',
  last_name = 'Brooks',
  full_name = 'Henry Brooks',
  email = 'henry.brooks.311@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Washington',
  location = 'Palo Alto, CA',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Washington working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid,
  'authenticated',
  'authenticated',
  'riya.powell.312@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((212) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Riya","last_name":"Powell","full_name":"Riya Powell"}'::jsonb,
  now() - ((212) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid,
  'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid,
  '{"sub":"f72fcbef-f134-582a-b53f-f217bb5d6d55","email":"riya.powell.312@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f72fcbef-f134-582a-b53f-f217bb5d6d55',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Riya',
  last_name = 'Powell',
  full_name = 'Riya Powell',
  email = 'riya.powell.312@icloud.com',
  title = 'Associate Professor',
  institution = 'Columbia University',
  location = 'Berkeley, CA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Columbia University working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = 'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid,
  'authenticated',
  'authenticated',
  'nathan.brown.313@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((213) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nathan","last_name":"Brown","full_name":"Nathan Brown"}'::jsonb,
  now() - ((213) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid,
  'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid,
  '{"sub":"b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0","email":"nathan.brown.313@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nathan',
  last_name = 'Brown',
  full_name = 'Nathan Brown',
  email = 'nathan.brown.313@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Caltech',
  location = 'Boston, MA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Caltech working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = 'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid,
  'authenticated',
  'authenticated',
  'priya.sato.314@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((214) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Priya","last_name":"Sato","full_name":"Priya Sato"}'::jsonb,
  now() - ((214) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid,
  '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid,
  '{"sub":"75f6df30-5d8f-5dd3-917e-2cb576513e61","email":"priya.sato.314@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '75f6df30-5d8f-5dd3-917e-2cb576513e61',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Priya',
  last_name = 'Sato',
  full_name = 'Priya Sato',
  email = 'priya.sato.314@proton.me',
  title = 'Visiting Scholar',
  institution = 'Cornell University',
  location = 'Toronto, ON',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Cornell University working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
  'authenticated',
  'authenticated',
  'omar.ibrahim.315@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((215) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Omar","last_name":"Ibrahim","full_name":"Omar Ibrahim"}'::jsonb,
  now() - ((215) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
  '{"sub":"e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac","email":"omar.ibrahim.315@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Omar',
  last_name = 'Ibrahim',
  full_name = 'Omar Ibrahim',
  email = 'omar.ibrahim.315@gmail.com',
  title = 'PhD Candidate',
  institution = 'University of Texas at Austin',
  location = 'Zurich, CH',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at University of Texas at Austin working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = 'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid;