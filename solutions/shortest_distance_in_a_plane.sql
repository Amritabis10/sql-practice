select round(sqrt(power(t2.x-t1.x, 2)+power(t2.y-t1.y, 2)),2) as 'shortest'
from Point2D t1
cross join Point2D t2
where round(sqrt(power(t2.x-t1.x, 2)+power(t2.y-t1.y, 2)),2) != 0
order by shortest
limit 1