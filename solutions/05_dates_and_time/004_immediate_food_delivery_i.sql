-- Immediate Food Delivery I
-- Write your solution here
With cte as ( select count(delivery_id) as ct from Delivery where order_date=customer_pref_delivery_date),
cte2 as(select count(delivery_id)ct1 from Delivery)
select round((ct/ct1)*100, 2) as immediate_percentage  from cte, cte2