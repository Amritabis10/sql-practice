-- Activity Participants
-- Find the names of all the activities with neither the maximum nor the minimum number of participants.
With cte as ( select activity, count(distinct id) as cnt from Friends group by activity)
Select activity from cte where cnt not in( select max(cnt) from cte
union all
select min(cnt) from cte
)