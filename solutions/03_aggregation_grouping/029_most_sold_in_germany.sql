WITH product_orders AS (
    SELECT
        d.market_name,
        COUNT(DISTINCT o.order_id) AS order_count
    FROM shopify_orders o
    JOIN shopify_users u
        ON o.user_id = u.id
    JOIN map_product_order mpo
        ON o.order_id = mpo.order_id
    JOIN dim_product d
        ON mpo.product_id = d.prod_sku_id
    WHERE u.country = 'Germany'
    GROUP BY d.market_name
),
ranked_products AS (
    SELECT
        market_name,
        order_count,
        DENSE_RANK() OVER (
            ORDER BY order_count DESC
        ) AS rnk
    FROM product_orders
)
SELECT market_name
FROM ranked_products
WHERE rnk = 1;