-- Solution for: Fix Product Name Format
-- Write your SQL solution here
Select  trim(lower(product_name)) as product_name, left(sale_date, 7) as sale_date,
count(sale_id) as total from Sales group by trim(lower(product_name)), 
left(sale_date, 7) 
order by product_name, sale_date