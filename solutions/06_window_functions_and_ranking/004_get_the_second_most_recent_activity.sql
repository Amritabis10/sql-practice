-- Get the Second Most Recent Activity
-- Write your SQL solution here
With cte as( select username, activity, startDate, endDate, dense_rank()over(partition by username order by endDate desc) as
rnk, count(*)over(partition by username) as t_activity from UserActivity)
Select username, activity, startDate, endDate from cte where rnk = 2 or
(t_activity =1 and rnk=1)