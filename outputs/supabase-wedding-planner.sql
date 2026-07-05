create table if not exists public.wedding_planner_state (
  id text primary key,
  payload jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.wedding_planner_state enable row level security;

drop policy if exists "wedding planner public read" on public.wedding_planner_state;
drop policy if exists "wedding planner public upsert" on public.wedding_planner_state;

create policy "wedding planner public read"
on public.wedding_planner_state
for select
to anon
using (true);

create policy "wedding planner public upsert"
on public.wedding_planner_state
for all
to anon
using (true)
with check (true);
