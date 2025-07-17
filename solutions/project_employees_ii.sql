WITH cte1 AS (
    SELECT 
        project_id, 
        COUNT(DISTINCT employee_id) AS cnt 
    FROM 
        Project 
    GROUP BY 
        project_id
),
cte2 AS (
    SELECT 
        project_id, 
        cnt, 
        DENSE_RANK() OVER (ORDER BY cnt DESC) AS rk 
    FROM 
        cte1
)
SELECT 
    project_id
FROM 
    cte2
WHERE 
    rk = 1;