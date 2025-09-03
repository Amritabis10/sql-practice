-- Solution for: The Most Recent Three Orders
-- Write your SQL solution here
Select  name as customer_name, customer_id, order_id, order_date from
(Select c.name, o.customer_id, o.order_id, o.order_date, dense_rank() over
(partition by o.customer_id order by o.order_date desc) as rnk 
from orders as o 
join customers as c on o.customer_id=c.customer_id) as t
where rnk <= 3 ORDER BY customer_name, customer_id, order_date DESC;