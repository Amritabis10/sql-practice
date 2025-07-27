-- Immediate Food Delivery II
-- Write your solution here
WITH First_Order AS
(
SELECT
delivery_id,customer_id,order_date,customer_pref_delivery_date,
RANK() OVER(Partition by customer_id ORDER BY order_date ASC) as rk
FROM
Delivery
)
SELECT
ROUND((SELECT COUNT(*) FROM First_Order WHERE order_date = customer_pref_delivery_date AND rk =1) * 100 /COUNT(DISTINCT customer_id),2) as immediate_percentage
FROM
Delivery