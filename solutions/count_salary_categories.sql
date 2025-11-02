Select 'Low Salary' as category , count(*) as accounts_count
from  Accounts where  income < 20000
 
union all
 Select 'Average Salary' as category , count(*) as accounts_count from Accounts
WHERE income >= 20000 AND income <= 50000

 and income <=  50000
 union all
  Select 'High Salary' as category , count(*) as accounts_count
from  Accounts where  income >  50000