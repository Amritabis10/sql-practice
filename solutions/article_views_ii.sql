-- Article Views II
-- Write your solution here
Select distinct viewer_id as id from Views group by viewer_id, 
view_date having 
count(distinct article_id)>1 order by id asc
