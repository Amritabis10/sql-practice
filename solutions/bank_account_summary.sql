-- Solution for Bank Account Summary problem
-- Write your SQL solution here

WITH breached AS (
    SELECT 
        u.user_id,
        u.user_name,
        u.credit 
          - COALESCE(t.total_out, 0)
          + COALESCE(t1.total_in, 0) AS credit
    FROM Users AS u
    LEFT JOIN (
        SELECT paid_by AS user_id, SUM(amount) AS total_out
        FROM Transactions
        GROUP BY paid_by
    ) t ON u.user_id = t.user_id
    LEFT JOIN (
        SELECT paid_to AS user_id, SUM(amount) AS total_in
        FROM Transactions
        GROUP BY paid_to
    ) t1 ON u.user_id = t1.user_id
)
SELECT 
    user_id,
    user_name,
    credit,
    CASE WHEN credit >= 0 THEN 'No' ELSE 'Yes' END AS credit_limit_breached
FROM breached;
