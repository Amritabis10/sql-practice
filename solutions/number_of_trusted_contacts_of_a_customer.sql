-- Write your solution here

WITH cte AS (
    -- Count all contacts per user
    SELECT 
        c.user_id,
        COUNT(DISTINCT c.contact_email) AS contacts_cnt
    FROM Contacts c
    GROUP BY c.user_id
),
cte1 AS (
    -- Count only trusted contacts (contacts who are also customers)
    SELECT 
        c.user_id,
        COUNT(DISTINCT c.contact_email) AS trusted_contacts_cnt
    FROM Contacts c
    JOIN Customers cu
        ON c.contact_email = cu.email
    GROUP BY c.user_id
),
cte2 AS (
    -- Combine both counts
    SELECT 
        cu.customer_id AS user_id,
        cu.customer_name,
        IFNULL(cte.contacts_cnt, 0) AS contacts_cnt,
        IFNULL(cte1.trusted_contacts_cnt, 0) AS trusted_contacts_cnt
    FROM Customers cu
    LEFT JOIN cte
        ON cu.customer_id = cte.user_id
    LEFT JOIN cte1
        ON cu.customer_id = cte1.user_id
)
SELECT 
    i.invoice_id,
    cte2.customer_name,
    i.price,
    cte2.contacts_cnt,
    cte2.trusted_contacts_cnt
FROM Invoices i
JOIN cte2
    ON i.user_id = cte2.user_id
ORDER BY i.invoice_id;

