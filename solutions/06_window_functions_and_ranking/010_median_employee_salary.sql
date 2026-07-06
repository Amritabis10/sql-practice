-- Solution for Median Employee Salary problem
-- Write your SQL solution here
select Id, Company, Salary
from (select id, company, salary, 
			 row_number() over(partition by company order by salary) salaryrank, 
			 count(*) over(partition by company) tte 
	  from employee) as foo
where salaryrank >= tte/2 and salaryrank <= tte/2+1