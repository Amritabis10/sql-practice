-- Movie Rating
-- Write your solution here

with cte as(
    SELECT u.name, COUNT(DISTINCT mr.movie_id) AS movie
    FROM Users u
    JOIN MovieRating mr 
        ON u.user_id = mr.user_id
    GROUP BY u.name
    ORDER BY movie DESC, u.name ASC
    LIMIT 1
),
cte2 as (
    SELECT m.title, AVG(mr.rating) AS ratings
    FROM Movies m
    JOIN MovieRating mr 
        ON m.movie_id = mr.movie_id
     WHERE DATE_FORMAT(mr.created_at, '%Y-%m') = '2020-02'
    GROUP BY m.title
    ORDER BY AVG(mr.rating) DESC, m.title ASC
    LIMIT 1
) 
select cte.name  as results from cte 
union all 