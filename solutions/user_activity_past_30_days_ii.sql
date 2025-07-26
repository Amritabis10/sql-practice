-- User Activity for the Past 30 Days II
-- Write your solution here
WITH CTE AS (
    SELECT 
        user_id, 
        COUNT(DISTINCT session_id) AS cnt
    FROM Activity
    WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
    GROUP BY user_id
)
SELECT 
     COALESCE(ROUND(SUM(cnt) * 1.0 / COUNT(*), 2), 0) AS average_sessions_per_user
FROM CTE;
