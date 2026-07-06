-- Students With Invalid Departments
-- Write your solution here

Select id, name from students 
where department_id not in (select id from departments)