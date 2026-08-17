INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  'authenticated',
  'authenticated',
  'amina.reed.828@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((328) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Amina","last_name":"Reed","full_name":"Amina Reed"}'::jsonb,
  now() - ((328) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  '{"sub":"fcf09069-b03f-594a-a134-7c45d7478589","email":"amina.reed.828@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'fcf09069-b03f-594a-a134-7c45d7478589',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Amina',
  last_name = 'Reed',
  full_name = 'Amina Reed',
  email = 'amina.reed.828@yahoo.com',
  title = 'Staff Scientist',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at UC Berkeley working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = 'fcf09069-b03f-594a-a134-7c45d7478589'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '03507a6f-20a9-5023-b188-401053301f7b'::uuid,
  'authenticated',
  'authenticated',
  'liam.james.829@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((329) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Liam","last_name":"James","full_name":"Liam James"}'::jsonb,
  now() - ((329) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '03507a6f-20a9-5023-b188-401053301f7b'::uuid,
  '03507a6f-20a9-5023-b188-401053301f7b'::uuid,
  '{"sub":"03507a6f-20a9-5023-b188-401053301f7b","email":"liam.james.829@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '03507a6f-20a9-5023-b188-401053301f7b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Liam',
  last_name = 'James',
  full_name = 'Liam James',
  email = 'liam.james.829@proton.me',
  title = 'Visiting Scholar',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at University of Washington working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = '03507a6f-20a9-5023-b188-401053301f7b'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '4affe376-3337-5316-8b8e-7c109b527c78'::uuid,
  'authenticated',
  'authenticated',
  'hannah.jenkins.830@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((330) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Hannah","last_name":"Jenkins","full_name":"Hannah Jenkins"}'::jsonb,
  now() - ((330) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '4affe376-3337-5316-8b8e-7c109b527c78'::uuid,
  '4affe376-3337-5316-8b8e-7c109b527c78'::uuid,
  '{"sub":"4affe376-3337-5316-8b8e-7c109b527c78","email":"hannah.jenkins.830@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '4affe376-3337-5316-8b8e-7c109b527c78',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Hannah',
  last_name = 'Jenkins',
  full_name = 'Hannah Jenkins',
  email = 'hannah.jenkins.830@gmail.com',
  title = 'PhD Candidate',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Columbia University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'full-time',
  availability_hours = 15,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '4affe376-3337-5316-8b8e-7c109b527c78'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid,
  'authenticated',
  'authenticated',
  'julian.johnson.831@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((331) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Julian","last_name":"Johnson","full_name":"Julian Johnson"}'::jsonb,
  now() - ((331) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid,
  '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid,
  '{"sub":"1ee18835-3c30-5bc7-a404-37cb54a05c4c","email":"julian.johnson.831@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '1ee18835-3c30-5bc7-a404-37cb54a05c4c',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Julian',
  last_name = 'Johnson',
  full_name = 'Julian Johnson',
  email = 'julian.johnson.831@outlook.com',
  title = 'Research Scientist',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Caltech working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'weekends',
  availability_hours = 16,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '07e78528-7a32-5945-9289-b917095c02bc'::uuid,
  'authenticated',
  'authenticated',
  'nora.hassan.832@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((332) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nora","last_name":"Hassan","full_name":"Nora Hassan"}'::jsonb,
  now() - ((332) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '07e78528-7a32-5945-9289-b917095c02bc'::uuid,
  '07e78528-7a32-5945-9289-b917095c02bc'::uuid,
  '{"sub":"07e78528-7a32-5945-9289-b917095c02bc","email":"nora.hassan.832@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '07e78528-7a32-5945-9289-b917095c02bc',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nora',
  last_name = 'Hassan',
  full_name = 'Nora Hassan',
  email = 'nora.hassan.832@icloud.com',
  title = 'Associate Professor',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Cornell University working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'part-time',
  availability_hours = 17,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '07e78528-7a32-5945-9289-b917095c02bc'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f86df400-9392-5e5e-b646-34ad46c78283'::uuid,
  'authenticated',
  'authenticated',
  'isaac.evans.833@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((333) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Isaac","last_name":"Evans","full_name":"Isaac Evans"}'::jsonb,
  now() - ((333) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f86df400-9392-5e5e-b646-34ad46c78283'::uuid,
  'f86df400-9392-5e5e-b646-34ad46c78283'::uuid,
  '{"sub":"f86df400-9392-5e5e-b646-34ad46c78283","email":"isaac.evans.833@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f86df400-9392-5e5e-b646-34ad46c78283',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Isaac',
  last_name = 'Evans',
  full_name = 'Isaac Evans',
  email = 'isaac.evans.833@yahoo.com',
  title = 'Staff Scientist',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at University of Texas at Austin working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'full-time',
  availability_hours = 18,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'f86df400-9392-5e5e-b646-34ad46c78283'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid,
  'authenticated',
  'authenticated',
  'ines.ward.834@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((334) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ines","last_name":"Ward","full_name":"Ines Ward"}'::jsonb,
  now() - ((334) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid,
  'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid,
  '{"sub":"f7b3b033-ebce-5a30-8f09-ab76dc00d493","email":"ines.ward.834@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f7b3b033-ebce-5a30-8f09-ab76dc00d493',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ines',
  last_name = 'Ward',
  full_name = 'Ines Ward',
  email = 'ines.ward.834@proton.me',
  title = 'Visiting Scholar',
  institution = 'EPFL',
  location = 'Melbourne, AU',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at EPFL working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'weekends',
  availability_hours = 19,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid,
  'authenticated',
  'authenticated',
  'felix.wood.835@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((335) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Felix","last_name":"Wood","full_name":"Felix Wood"}'::jsonb,
  now() - ((335) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid,
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid,
  '{"sub":"d0de6fe9-23df-58bc-9fa3-45f2bcfa9210","email":"felix.wood.835@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Felix',
  last_name = 'Wood',
  full_name = 'Felix Wood',
  email = 'felix.wood.835@gmail.com',
  title = 'PhD Candidate',
  institution = 'UC Berkeley',
  location = 'Cambridge, MA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at UC Berkeley working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'part-time',
  availability_hours = 20,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid;