-- Group Sold Products By The Date
-- Write your solution here
Select sell_date, count(distinct product) as num_sold, GROUP_CONCAT( DISTINCT product order by product  asc separator ',') as products from Activities group by sell_date order by sell_date