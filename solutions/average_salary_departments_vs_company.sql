WITH salary_with_month AS (
    SELECT 
        employee_id, 
        amount, 
        DATE_FORMAT(pay_date, '%Y-%m') AS pay_month
    FROM Salary
),
salary_with_dept AS (
    SELECT 
        s.employee_id, 
        e.department_id, 
        s.amount, 
        DATE_FORMAT(s.pay_date, '%Y-%m') AS pay_month
    FROM Salary s
    JOIN Employee e ON s.employee_id = e.employee_id
),
department_avg AS (
    SELECT 
        department_id, 
        pay_month, 
        AVG(amount) AS dept_avg
    FROM salary_with_dept
    GROUP BY department_id, pay_month
),
company_avg AS (
    SELECT 
        pay_month, 
        AVG(amount) AS company_avg
    FROM salary_with_month
    GROUP BY pay_month
)
SELECT 
    d.pay_month, 
    d.department_id,
    CASE 
        WHEN d.dept_avg > c.company_avg THEN 'higher'
        WHEN d.dept_avg < c.company_avg THEN 'lower'
        ELSE 'same'
    END AS comparison
FROM department_avg d
JOIN company_avg c ON d.pay_month = c.pay_month;
