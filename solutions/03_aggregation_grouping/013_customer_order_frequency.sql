-- Customer Order Frequency
-- Write your solution here
SELECT customer_id, name
FROM Customers
WHERE customer_id IN (
    SELECT o.customer_id
    FROM Orders o
    JOIN Product p ON o.product_id = p.product_id
    WHERE DATE_FORMAT(o.order_date, '%Y-%m') = '2020-06'
    GROUP BY o.customer_id
    HAVING SUM(o.quantity * p.price) >= 100
)
AND customer_id IN (
    SELECT o.customer_id
    FROM Orders o
    JOIN Product p ON o.product_id = p.product_id
    WHERE DATE_FORMAT(o.order_date, '%Y-%m') = '2020-07'
    GROUP BY o.customer_id
    HAVING SUM(o.quantity * p.price) >= 100
);
