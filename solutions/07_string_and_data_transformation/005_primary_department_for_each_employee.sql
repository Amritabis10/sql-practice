-- Write your solution here
#1. SELECT employee_id, department_id
FROM Employee
WHERE primary_flag='Y' OR 
    employee_id in
    (SELECT employee_id
    FROM Employee
    Group by employee_id
    having count(employee_id)=1)



#2. SELECT employee_id, dept_id AS department_id
FROM (
    SELECT *, COUNT(employee_id) OVER (PARTITION BY employee_id) AS cnt,
    CASE 
        WHEN primary_flag = 'Y' THEN department_id
        WHEN primary_flag = 'N' AND COUNT(employee_id) OVER(PARTITION BY employee_id) = 1 THEN department_id
    END AS dept_id
    FROM Employee 
) AS subq
WHERE dept_id IS NOT NULL
;











