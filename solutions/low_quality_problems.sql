With cte as (select problem_id, ((likes)/(likes +dislikes))*100 
as prcntge from Problems group
by problem_id)
Select problem_id from cte where 
prcntge  < 60 order by problem_id