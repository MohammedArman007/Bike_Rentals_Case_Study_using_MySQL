select * from bike;
select * from customer;
select * from membership;
select * from membership_type;
select * from rental;

select extract(month from start_timestamp) as mnth
, extract(year from start_timestamp) as yrs
, sum(total_paid) as revenue
from rental
group by yrs, mnth
union all
select null as mnth
, extract(year from start_timestamp) as yrs
, sum(total_paid) as revenue
from rental
group by yrs, mnth
union all
select null as mnth
, null as yrs
, sum(total_paid) as revenue
from rental
group by yrs, mnth
order by yrs,mnth;

-- solution 2

select extract(month from start_timestamp) as mnth
, extract(year from start_timestamp) as yrs
, sum(total_paid) as revenue
from rental
group by yrs, mnth;
