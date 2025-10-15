-- Write your solution here
With cte as (Select emp_id, event_day, (out_time-in_time) as t_time from Employees)
Select  event_day as day,emp_id, sum(t_time) as total_time from cte group by emp_id,
event_day order by day