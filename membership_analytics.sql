select name
, extract(month from start_date) as mnth
, sum(total_paid) as total_revenue
from membership m
join membership_type mt on mt.id = m.membership_type_id
group by name, mnth
order by name, mnth;

select name
, null as mnth
, sum(total_paid) as total_revenue
from membership m
join membership_type mt on mt.id = m.membership_type_id
group by name
order by name;

select null as name
, null as mnth
, sum(total_paid) as total_revenue
from membership m
join membership_type mt on mt.id = m.membership_type_id
group by mnth;

