WITH subs_2021 AS (
    SELECT account_id
    FROM Subscriptions
    WHERE start_date <= '2021-12-31'
      AND end_date   >= '2021-01-01'
)
SELECT COUNT(DISTINCT s.account_id) AS accounts_count
FROM subs_2021 s
LEFT JOIN Streams st
  ON st.account_id = s.account_id
 AND st.stream_date >= '2021-01-01'
 AND st.stream_date <  '2022-01-01'
WHERE st.account_id IS NULL;
