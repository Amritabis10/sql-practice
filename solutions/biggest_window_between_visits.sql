-- Write your solution here
with cte1 as
(select user_id, abs(DATEDIFF(visit_date,visit_date1)) as date_diff
from (
select user_id, visit_date,
ifnull(lead(visit_date,1) over (partition by user_id order by visit_date asc),'2021-1-1') as visit_date1
from UserVisits) as temp)

select user_id, max(date_diff) as biggest_window
from cte1
group by user_id order by user_id