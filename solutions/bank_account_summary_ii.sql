-- Bank Account Summary II
-- Write your SQL solution here
Select u.name, sum(t.amount) as balance from users as u join transactions as t
on u.account= t.account
group by u.account having sum(t.amount) > 10000