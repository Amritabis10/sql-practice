WITH salary_groups AS (
    SELECT 
        salary,
        COUNT(*) AS cnt
    FROM Employees
    GROUP BY salary
    HAVING COUNT(*) >= 2
),
team_rank AS (
    SELECT
        salary,
        DENSE_RANK() OVER (ORDER BY salary) AS team_id
    FROM salary_groups
)
SELECT 
    e.employee_id,
    e.name,
    e.salary,
    t.team_id
FROM Employees e
JOIN team_rank t
    ON e.salary = t.salary
ORDER BY 
    t.team_id,
    e.employee_id;