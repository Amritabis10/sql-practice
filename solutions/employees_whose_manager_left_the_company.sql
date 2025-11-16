Select employee_id, from Employees where salary < 30000 and manager_id is not NULL and manager_id
 NOT IN ( select employee_id from employees)
order by employee_id