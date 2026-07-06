-- Active Users
-- Write your solution here


WITH cte AS (
    SELECT DISTINCT id, login_date
    FROM Logins
),
cte2 AS (
    SELECT 
        id,
        DATEDIFF(
            LEAD(login_date, 4) OVER (PARTITION BY id ORDER BY login_date), 
            login_date
        ) AS gap
    FROM cte
)
SELECT DISTINCT cte2.id, a.name
FROM cte2
JOIN Accounts a ON cte2.id = a.id
WHERE cte2.gap = 4
ORDER BY cte2.id;

