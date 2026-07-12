Select nominee, n_times_won from (SELECT nominee, count (*) as n_times_won, dense_rank() over (order by count (*) desc) as rnk
FROM oscar_nominees
WHERE winner = 1
group by nominee)t
where rnk = 1;