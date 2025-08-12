-- Solution for: Find the Start and End Number of Continuous Ranges
-- Write your SQL solution here


With cte as ( select log_id, rank() over(order by log_id) as rk from Logs)
Select min(log_id) as start_id, max(log_id) as end_id from cte group by  log_id-rk