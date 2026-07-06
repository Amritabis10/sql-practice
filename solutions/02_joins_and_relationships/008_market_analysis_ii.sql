-- Market Analysis II
-- Write your solution here
WITH orders_ranked AS (
  SELECT
    order_id,
    order_date,
    item_id,
    seller_id,
    DENSE_RANK() OVER (PARTITION BY seller_id ORDER BY order_date) AS rk
  FROM Orders
)
SELECT
  u.user_id AS seller_id,
  CASE
    WHEN i.item_brand = u.favorite_brand THEN 'yes'
    ELSE 'no'
  END AS 2nd_item_fav_brand
FROM Users u
LEFT JOIN orders_ranked o
  ON u.user_id = o.seller_id
 AND o.rk = 2
LEFT JOIN Items i
  ON o.item_id = i.item_id;