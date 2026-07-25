-- RIGFORGE Driver Name Builder v9.0
-- Supabase SQL Editor에서 한 번만 실행하세요.
-- 기존 estimates 테이블은 그대로 유지됩니다.

create or replace function public.get_estimate_by_no(p_estimate_no text)
returns table (
  estimate_no text,
  builder_type text,
  builder_version text,
  items jsonb,
  total_price integer,
  status text,
  created_at timestamptz
)
language sql
security definer
set search_path = public
as $$
  select
    e.estimate_no,
    e.builder_type,
    e.builder_version,
    e.items,
    e.total_price,
    e.status,
    e.created_at
  from public.estimates e
  where e.estimate_no = upper(trim(p_estimate_no))
  limit 1;
$$;

revoke all on function public.get_estimate_by_no(text) from public;
grant execute on function public.get_estimate_by_no(text) to anon;
grant execute on function public.get_estimate_by_no(text) to authenticated;

-- 고객 견적 저장 권한 유지
grant usage on schema public to anon;
grant insert on table public.estimates to anon;

alter table public.estimates enable row level security;

drop policy if exists "public_insert_estimates" on public.estimates;
create policy "public_insert_estimates"
on public.estimates
for insert
to anon
with check (
  builder_type = 'driver-name'
  and status = 'saved'
  and jsonb_array_length(items) between 1 and 30
  and total_price between 0 and 10000000
);
