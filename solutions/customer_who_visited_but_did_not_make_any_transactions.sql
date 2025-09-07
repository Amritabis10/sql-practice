-- Solution for Customer Who Visited but Did Not Make Any Transactions problem
-- Write your SQL solution here
With cte as 
(Select visit_id, customer_id from Visits where
 visit_id not in(Select visit_id from
Transactions)) 
Select customer_id, count(distinct visit_id) as count_no_trans from
cte  group by customer_id