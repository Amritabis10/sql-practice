-- Last Person to Fit in the Bus
-- Write your SQL solution here
With cte as ( select *, sum(weight)over(order by turn) as max_wt from Queue)
select person_name from cte where max_wt <= 1000 order by max_wt desc limit 1