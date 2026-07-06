-- Find the Team Size
-- Write your solution here

Select employee_id, count(*) over (partition by team_id) as team_size
 from Employee order by employee_id