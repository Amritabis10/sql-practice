-- Write your SQL solution here
with cte as(Select transaction_id, date(day) as t_day, 
amount, dense_rank()over(
    partition by date(day) order by amount desc) as rnk from Transactions)
    Select transaction_id from cte where rnk = 1 order by transaction_id