SELECT customer_number from orders group by customer_number 
ORDER BY count(customer_number) desc LIMIT 1;