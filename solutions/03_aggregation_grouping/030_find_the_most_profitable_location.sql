WITH duration_cte AS (
    SELECT
        location,
        AVG(DATEDIFF(DAY, signup_start_date, signup_stop_date) * 1.0) AS mean_duration
    FROM signups
    GROUP BY location
),
revenue_cte AS (
    SELECT
        s.location,
        AVG(t.amt) AS mean_revenue
    FROM signups AS s
    JOIN transactions AS t
        ON s.signup_id = t.signup_id
    GROUP BY s.location
)
SELECT
    d.location,
    ROUND(d.mean_duration, 2) AS mean_duration,
    ROUND(r.mean_revenue, 2) AS mean_revenue,
    ROUND(r.mean_revenue / NULLIF(d.mean_duration, 0), 2) AS ratio
FROM duration_cte AS d
JOIN revenue_cte AS r
    ON d.location = r.location
ORDER BY ratio DESC;
