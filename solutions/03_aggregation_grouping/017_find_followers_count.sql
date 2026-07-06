-- Write your SQL solution here
Select user_id, count(distinct follower_id) as followers_count
from Followers group by user_id order by user_id