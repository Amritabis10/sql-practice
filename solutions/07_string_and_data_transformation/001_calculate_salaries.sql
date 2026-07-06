-- Calculate Salaries
-- Write your solution here
WITH max_sal AS (
    SELECT company_id, MAX(salary) AS m_sal
    FROM Salaries
    GROUP BY company_id
)
SELECT 
    s.company_id, 
    s.employee_id, 
    s.employee_name, 
    ROUND(
        CASE 
            WHEN m.m_sal < 1000 
                THEN s.salary
            WHEN m.m_sal BETWEEN 1000 AND 10000
                THEN s.salary - (0.24 * s.salary)
            WHEN m.m_sal > 10000 
                THEN s.salary - (0.49 * s.salary)
            ELSE 0
        END
    ) AS salary
FROM Salaries AS s
JOIN max_sal AS m 
    ON s.company_id = m.company_id
ORDER BY s.company_id;