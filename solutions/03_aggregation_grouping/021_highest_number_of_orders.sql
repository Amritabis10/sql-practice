SELECT
    cust_id,
    COUNT(*) AS order_count
FROM orders
GROUP BY cust_id
ORDER BY order_count DESC
LIMIT 1;

