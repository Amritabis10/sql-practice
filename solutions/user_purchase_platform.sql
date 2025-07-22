-- User Purchase Platform Solution
-- Write your SQL solution here
WITH user_stats AS (
    SELECT
        user_id,
        spend_date,
        CASE WHEN COUNT(DISTINCT platform) = 2 THEN 'both'
             ELSE MAX(platform) 
        END AS platform_type,
        SUM(amount) AS amount
    FROM Spending
    GROUP BY user_id, spend_date
)

SELECT 
    spend_date,
    'desktop' AS platform,
    SUM(CASE WHEN platform_type = 'desktop' THEN amount ELSE 0 END) AS total_amount,
    COUNT(DISTINCT CASE WHEN platform_type = 'desktop' THEN user_id END) AS total_users
FROM user_stats
GROUP BY spend_date

UNION ALL

SELECT 
    spend_date,
    'mobile' AS platform,
    SUM(CASE WHEN platform_type = 'mobile' THEN amount ELSE 0 END) AS total_amount,
    COUNT(DISTINCT CASE WHEN platform_type = 'mobile' THEN user_id END) AS total_users
FROM user_stats
GROUP BY spend_date

UNION ALL

SELECT 
    spend_date,
    'both' AS platform,
    SUM(CASE WHEN platform_type = 'both' THEN amount ELSE 0 END) AS total_amount,
    COUNT(DISTINCT CASE WHEN platform_type = 'both' THEN user_id END) AS total_users
FROM user_stats
GROUP BY spend_date

ORDER BY spend_date, platform;