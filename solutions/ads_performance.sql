-- Ads Performance
-- Write your solution here
Select ad_id, IFNULL(round((sum(case when action='clicked' then 1 else 0 end )/ sum(case when action='clicked' or action='viewed' then 1 else 0 end ))*100, 2), 0) as ctr 
from Ads group by ad_id order by ctr desc, ad_id asc