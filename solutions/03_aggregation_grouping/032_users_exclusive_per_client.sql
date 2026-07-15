With cte as (select user_id, count (distinct client_id) as ct from fact_events
group by user_id
having count (distinct client_id) = 1)
Select f.client_id, count (distinct c.user_id) as exclusive_users
from cte as c left join fact_events as f
on c.user_id = f.user_id
group by f.client_id