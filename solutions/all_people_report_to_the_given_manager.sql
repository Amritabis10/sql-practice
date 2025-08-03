-- All People Report to the Given Manager Solution
-- Write your SQL solution here
Select distinct e1.employee_id from employees e1
 left join employees e2 on e1.manager_id = e2.employee_id
left join employees e3 on e2.manager_id = e3.employee_id
where
(
    e1.manager_id=1
OR e2.manager_id=1
or e3.manager_id=1)
and e1.employee_id<> 1

