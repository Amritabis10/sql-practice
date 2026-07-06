-- Solution for Sellers With No Sales
-- Write your SQL solution here
Select seller_name as SELLER_NAME from seller where
 seller_id 
not in( select seller_id from Orders where 
LEFT(sale_date, 4) = 2020) 
order by 1