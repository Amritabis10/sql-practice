with cte as ( select name, continent, dense_rank()over (partition by continent order by name) as rn from Student)
select MAX(case when continent= 'America' then name else Null end) as America,
MAX(case when continent= 'Asia' then name else null end) as Asia,
MAX(case when continent= 'Europe' then name else null end) as Europe from cte
group by rn order by name ;
