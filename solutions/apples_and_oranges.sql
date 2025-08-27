-- Solution for Apples & Oranges problem
-- Write your SQL solution here
WITH cte AS (
    SELECT 
        sale_date,
        SUM(CASE WHEN fruit = 'apples' THEN sold_num ELSE 0 END) AS apple,
        SUM(CASE WHEN fruit = 'oranges' THEN sold_num ELSE 0 END) AS orange
    FROM Sales
    GROUP BY sale_date
)
SELECT 
    sale_date,
    (apple - orange) AS diff
FROM cte
ORDER BY sale_date;
