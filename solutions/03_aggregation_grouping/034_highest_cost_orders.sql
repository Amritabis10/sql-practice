With cte as (select cust_id, order_date, sum(total_order_cost) as max_cost, dense_rank() over 
(partition by order_date order by sum(total_order_cost) desc) as rnk from orders where order_date >= '2019-02-01'
and order_date <= '2019-05-01'
 group by cust_id, order_date)
 Select c.first_name, ct.order_date, ct.max_cost
 from customers as c join cte as ct on
 ct.cust_id = c.id
 where rnk = 1
 