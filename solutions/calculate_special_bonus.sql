-- Write your SQL solution here
Select employee_id, case when employee_id %2 <> 0 and name  not like 'M%' THEN salary else
0 end as bonus from  Employees order by employee_id