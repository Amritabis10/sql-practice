WITH platforms AS (
    SELECT 'Android' AS platform
    UNION ALL SELECT 'IOS'
    UNION ALL SELECT 'Web'
),
experiment_names AS (
    SELECT 'Reading' AS experiment_name
    UNION ALL SELECT 'Sports'
    UNION ALL SELECT 'Programming'
),
cte AS (
    SELECT 
        p.platform, 
        e.experiment_name
    FROM platforms p
    CROSS JOIN experiment_names e
),
cte2 AS (
    SELECT 
        cte.platform, 
        cte.experiment_name, 
        d.experiment_id
    FROM cte
    LEFT JOIN Experiments AS d
      ON cte.platform = d.platform
     AND cte.experiment_name = d.experiment_name
)
SELECT 
    cte2.platform,
    cte2.experiment_name,
    COUNT(DISTINCT cte2.experiment_id) AS num_experiments
FROM cte2
GROUP BY 1, 2
ORDER BY 1, 2;
