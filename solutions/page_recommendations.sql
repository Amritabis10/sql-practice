-- Page Recommendations Solution
-- Write your SQL solution here
select distinct page_id as recommended_page 
from Likes 
where page_id not in( select page_id from Likes where user_id = 1)
 and user_id in( select user2_id from Friendship where user1_id = 1 UNION SELECT user1_id from friendship WHERE user2_id = 1)
