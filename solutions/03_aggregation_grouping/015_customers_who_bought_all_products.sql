WITH cte AS (
    SELECT 
        customer_id, 
        COUNT(DISTINCT product_key) AS cn 
    FROM 
        customer 
    GROUP BY 
        customer_id
    HAVING 
        COUNT(DISTINCT product_key) = (SELECT COUNT(distinct product_key) FROM product)
)
SELECT 
    customer_id 
FROM 
    cte