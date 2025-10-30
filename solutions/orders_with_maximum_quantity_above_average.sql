-- Write your SQL solution here
WITH order_stats AS (
    SELECT 
        order_id,
        AVG(quantity) AS avg_qty,
        MAX(quantity) AS max_qty
    FROM OrdersDetails
    GROUP BY order_id
),
max_avg AS (
    SELECT MAX(avg_qty) AS highest_avg
    FROM order_stats
)
SELECT o.order_id
FROM order_stats o, max_avg m
WHERE o.max_qty > m.highest_avg;
