-- Hopper Company Queries I
-- Write your solution here
WITH months AS (
    SELECT 1 AS month_num, DATE '2020-01-31' AS month_end
    UNION ALL SELECT 2, DATE '2020-02-29'
    UNION ALL SELECT 3, DATE '2020-03-31'
    UNION ALL SELECT 4, DATE '2020-04-30'
    UNION ALL SELECT 5, DATE '2020-05-31'
    UNION ALL SELECT 6, DATE '2020-06-30'
    UNION ALL SELECT 7, DATE '2020-07-31'
    UNION ALL SELECT 8, DATE '2020-08-31'
    UNION ALL SELECT 9, DATE '2020-09-30'
    UNION ALL SELECT 10, DATE '2020-10-31'
    UNION ALL SELECT 11, DATE '2020-11-30'
    UNION ALL SELECT 12, DATE '2020-12-31'
)
SELECT 
    m.month_num AS month,
    COUNT(DISTINCT d.driver_id) AS active_drivers,
    COUNT(DISTINCT ar.ride_id) AS accepted_rides
FROM months m
LEFT JOIN Drivers d
  ON d.join_date <= m.month_end
LEFT JOIN Rides r
  ON EXTRACT(YEAR FROM r.requested_at) = 2020
 AND EXTRACT(MONTH FROM r.requested_at) = m.month_num
LEFT JOIN AcceptedRides ar
  ON ar.ride_id = r.ride_id
GROUP BY m.month_num
ORDER BY m.month_num;
