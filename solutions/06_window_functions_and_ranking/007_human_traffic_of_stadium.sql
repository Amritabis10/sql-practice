With cte as (Select * from Stadium where people >=100 ),
cte1 as (select *, id-row_number() over (order by id) as rw_diff from cte)
select id, visit_date, people from cte1 where rw_diff in( select distinct rw_diff from cte1 group by rw_diff HAVING COUNT(*) >= 3
)
ORDER BY visit_date;