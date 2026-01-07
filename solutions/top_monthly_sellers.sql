WITH cte AS (
  SELECT
    seller_id,
    product_category,
    market_place,
    sales_date,
    SUM(total_sales) AS tot_sales
  FROM sales_data
  WHERE sales_date >= DATE '2024-01-01'
    AND sales_date <  DATE '2024-02-01'
  GROUP BY 1,2,3,4
),
cte2 AS (
  SELECT
    seller_id,
    product_category,
    market_place,
    tot_sales,
    sales_date,
    DENSE_RANK() OVER (
      PARTITION BY product_category
      ORDER BY tot_sales DESC
    ) AS rnk
  FROM cte
)
SELECT
  seller_id,
  product_category,
  market_place,
  tot_sales AS total_sales,
  sales_date
FROM cte2
WHERE rnk <= 3
ORDER BY product_category, total_sales DESC;

 