-- The Most Frequently Ordered Products for Each Customer
-- Write your SQL solution here

WITH cte AS (
    SELECT customer_id, product_id, COUNT(*) AS cnt
    FROM Orders
    GROUP BY customer_id, product_id
),
cte1 AS (
    SELECT customer_id, product_id, cnt,
           DENSE_RANK() OVER (PARTITION BY customer_id ORDER BY cnt DESC) AS rnk
    FROM cte
),
cte2 AS (
    SELECT customer_id, product_id
    FROM cte1
    WHERE rnk = 1
)
SELECT cte2.customer_id,
       cte2.product_id,
       p.product_name
FROM cte2
JOIN Products p 
  ON cte2.product_id = p.product_id
ORDER BY cte2.customer_id;
