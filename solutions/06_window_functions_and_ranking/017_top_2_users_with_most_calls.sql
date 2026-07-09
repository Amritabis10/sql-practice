WITH user_calls AS (
    SELECT
        u.company_id,
        c.user_id,
        COUNT(c.call_id) AS call_count
    FROM rc_calls c
    JOIN rc_users u
        ON c.user_id = u.user_id
    GROUP BY
        u.company_id,
        c.user_id
),
ranked_users AS (
    SELECT
        company_id,
        user_id,
        DENSE_RANK() OVER (
            PARTITION BY company_id
            ORDER BY call_count DESC
        ) AS user_rank
    FROM user_calls
)
SELECT
    company_id,
    user_id,
    user_rank
FROM ranked_users
WHERE user_rank <= 2;