-- Write your solution here

#1
 With cte as ( Select machine_id, process_id,
 max(case when activity_type = 'start' then timestamp end) as start_time, 
 max(case when activity_type = 'end' then timestamp end) as end_time from Activity
  group by machine_id, process_id)
  Select machine_id, round(avg(end_time - start_time), 3) as processing_time from cte group by
  machine_id



  
  #2
  WITH ordered AS (
    SELECT
        machine_id,
        process_id,
        activity_type,
        timestamp,
        LEAD(timestamp) OVER (
            PARTITION BY machine_id, process_id 
            ORDER BY activity_type
        ) AS next_timestamp
    FROM Activity
)
SELECT
    machine_id,
    ROUND(AVG(next_timestamp - timestamp), 3) AS processing_time
FROM ordered
WHERE activity_type = 'start'
GROUP BY machine_id;
