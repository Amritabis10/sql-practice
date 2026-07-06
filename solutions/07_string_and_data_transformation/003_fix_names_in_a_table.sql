-- Write your solution here
Select user_id, Concat(UPPER(left(name,1)) , lower(substring(name,2))) as name from Users
order by user_id
