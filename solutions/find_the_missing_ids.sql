-- Find the Missing IDs
-- Write your solution here

#1. 
WITH RECURSIVE cte AS (
    SELECT MAX(customer_id) AS max_id 
    FROM Customers
),
cte1 AS (
    SELECT 1 AS id
    UNION ALL
    SELECT id + 1
    FROM cte1, cte
    WHERE id < cte.max_id
)
SELECT id AS ids
FROM cte1
WHERE id NOT IN (SELECT customer_id FROM Customers)
ORDER BY id;


#2.
WITH RECURSIVE nums AS (
    SELECT 1 AS id
    UNION ALL
    SELECT id + 1
    FROM nums, (SELECT MAX(customer_id) AS max_id FROM Customers) m
    WHERE id < m.max_id
)
SELECT id
FROM nums
WHERE id NOT IN (SELECT customer_id FROM Customers)
ORDER BY id;
