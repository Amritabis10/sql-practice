-- Write your solution here
With cte as ( select year, Wimbledon as player_id from Championships
Union all 
select year, Fr_open as player_id from Championships
Union all 
select year, US_open as player_id from Championships
Union all 
select year, Au_open as player_id from Championships
)
Select p1.player_id, p2.player_name, count(p1.player_id) as grand_slams_count
from cte as p1 join Players as p2
on p1.player_id = p2.player_id
group by p1.player_id, p2.player_name 