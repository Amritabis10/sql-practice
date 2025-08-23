-- Replace Employee ID With The Unique Identifier
-- Write your SQL solution here
Select u.unique_id as unique_id, e.name from employees
 as e left join EmployeeUNI as u on
e.id = u.id