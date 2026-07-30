-- Allow pending status on profile_matches (mutual swipe flow)
alter table public.profile_matches drop constraint if exists profile_matches_status_check;
alter table public.profile_matches add constraint profile_matches_status_check
  check (status = any (array['pending'::text, 'matched'::text, 'rejected'::text]));

-- RLS aligned with pending/matched/rejected
drop policy if exists "Allow matchee_user_id to update status on 'liked' records" on public.profile_matches;
drop policy if exists "Allow matcher_user_id to delete their 'liked' or 'rejected' act" on public.profile_matches;

drop policy if exists "Matchers can update their own swipe rows" on public.profile_matches;
drop policy if exists "Matchees can update rows about them" on public.profile_matches;
drop policy if exists "Matchers can delete their own swipe rows" on public.profile_matches;

create policy "Matchers can update their own swipe rows"
  on public.profile_matches for update
  using (auth.uid() = matcher_user_id)
  with check (auth.uid() = matcher_user_id);

create policy "Matchees can update rows about them"
  on public.profile_matches for update
  using (auth.uid() = matchee_user_id)
  with check (auth.uid() = matchee_user_id);

create policy "Matchers can delete their own swipe rows"
  on public.profile_matches for delete
  using (auth.uid() = matcher_user_id);

drop policy if exists "Users can insert their own notifications" on public.user_notifications;
drop policy if exists "Users can insert notifications they send or own" on public.user_notifications;

create policy "Users can insert notifications they send or own"
  on public.user_notifications for insert
  with check ((auth.uid() = user_id) or (auth.uid() = sender_id));

create unique index if not exists matches_user_pair_unique
  on public.matches (user_id_1, user_id_2);
