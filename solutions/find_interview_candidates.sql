-- Write your SQL solution here
WITH AllMedals AS (
  SELECT contest_id, gold_medal AS user_id FROM Contests
  UNION ALL
  SELECT contest_id, silver_medal FROM Contests
  UNION ALL
  SELECT contest_id, bronze_medal FROM Contests
),
Streaks AS (
  SELECT user_id, contest_id - ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY contest_id) AS grp
  FROM AllMedals
),
StreakCandidates AS (
  SELECT user_id
  FROM Streaks
  GROUP BY user_id, grp
  HAVING COUNT(*) >= 3
),
GoldCandidates AS (
  SELECT gold_medal AS user_id
  FROM Contests
  GROUP BY gold_medal
  HAVING COUNT(*) >= 3
),
AllCandidates AS (
  SELECT user_id FROM StreakCandidates
  UNION
  SELECT user_id FROM GoldCandidates
)
SELECT u.name, u.mail
FROM Users u
JOIN AllCandidates c ON u.user_id = c.user_id;