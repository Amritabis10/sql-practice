-- Solution for New Users Daily Count problem
-- Write your SQL solution here
With cte as (Select user_id, activity_date,
dense_rank() over (partition by user_id order by activity_date) as rnk from Traffic where activity = 'login'),
cte2 as ( select user_id , activity_date from cte where rnk = 1 and activity_date>= DATE_SUB('2019-06-30', INTERVAL 90 DAY))
SELECT 
  activity_date AS login_date,
  COUNT(DISTINCT user_id) AS user_count from cte2 group by activity_date