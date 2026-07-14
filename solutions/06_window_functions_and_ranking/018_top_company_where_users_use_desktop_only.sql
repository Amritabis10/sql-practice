WITH desktop_only_users AS (
    SELECT user_id
    FROM fact_events
    GROUP BY user_id
    HAVING SUM(CASE WHEN client_id = 'mobile' THEN 1 ELSE 0 END) = 0
),
company_counts AS (
    SELECT
        f.customer_id,
        COUNT(DISTINCT f.user_id) AS desktop_user_count
    FROM fact_events AS f
    INNER JOIN desktop_only_users AS d
        ON f.user_id = d.user_id
    WHERE f.client_id = 'desktop'
    GROUP BY f.customer_id
),
ranked_companies AS (
    SELECT
        customer_id,
        RANK() OVER (
            ORDER BY desktop_user_count DESC
        ) AS company_rank
    FROM company_counts
)
SELECT customer_id
FROM ranked_companies
WHERE company_rank = 1;