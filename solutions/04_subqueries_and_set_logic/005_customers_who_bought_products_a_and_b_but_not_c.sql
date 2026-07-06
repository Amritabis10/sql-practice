-- Customers Who Bought Products A and B but Not C
-- Write your SQL solution here

Select customer_id, customer_name from Customers where customer_id in(Select 
distinct customer_id from Orders where product_name= 'A')
AND customer_id in(Select 
distinct customer_id from Orders where product_name= 'B')
AND customer_id NOT IN (Select 
distinct customer_id from Orders where product_name= 'C')