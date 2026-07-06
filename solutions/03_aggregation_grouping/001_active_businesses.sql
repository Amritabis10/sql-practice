-- Active Businesses Solution
-- Write your SQL solution here

WITH cte AS (
    SELECT 
        event_type, 
        AVG(occurrences) AS avg_oc 
    FROM Events 
    GROUP BY event_type
),
cte1 AS (
    SELECT 
        e.business_id, 
        e.event_type, 
        e.occurrences, 
        c.avg_oc 
    FROM cte AS c 
    JOIN Events AS e ON e.event_type = c.event_type 
    WHERE e.occurrences > c.avg_oc
)
SELECT business_id 
FROM cte1 
GROUP BY business_id 
HAVING COUNT(event_type) > 1;