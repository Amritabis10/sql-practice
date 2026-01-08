WITH ranked AS (
  SELECT
      user_count,
      CONCAT(start_timestamp, ' to ', end_timestamp) AS time_period,
      device_type,
      DENSE_RANK() OVER (
        PARTITION BY device_type
        ORDER BY user_count DESC
      ) AS rnk
  FROM user_activity
)
SELECT
    user_count,
    time_period,
    device_type
FROM ranked
WHERE rnk = 1
ORDER BY device_type, user_count DESC, time_period;