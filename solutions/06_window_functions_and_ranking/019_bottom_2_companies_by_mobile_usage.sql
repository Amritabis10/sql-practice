WITH cte AS (
    SELECT
        customer_id,
        COUNT(*) AS events,
        DENSE_RANK() OVER (ORDER BY COUNT(*) ASC) AS rnk
    FROM fact_events
    WHERE client_id = 'mobile'
    GROUP BY customer_id
)
SELECT
    customer_id,
    events
FROM cte
WHERE rnk <= 2
ORDER BY events ASC;