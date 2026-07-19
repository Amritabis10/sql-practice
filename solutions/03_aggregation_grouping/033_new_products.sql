1. WITH cnt_2019 AS (
    SELECT
        company_name,
        COUNT(DISTINCT product_name) AS [2019_cnt]
    FROM car_launches
    WHERE year = 2019
    GROUP BY company_name
),
cnt_2020 AS (
    SELECT
        company_name,
        COUNT(DISTINCT product_name) AS [2020_cnt]
    FROM car_launches
    WHERE year = 2020
    GROUP BY company_name
)
SELECT
    COALESCE(c1.company_name, c2.company_name) AS company_name,
    COALESCE(c2.[2020_cnt], 0)
      - COALESCE(c1.[2019_cnt], 0) AS net_products
FROM cnt_2019 AS c1
FULL OUTER JOIN cnt_2020 AS c2
    ON c1.company_name = c2.company_name;
    
    
    
2. SELECT
    company_name,
    COUNT(DISTINCT CASE WHEN year = 2020 THEN product_name END)
    -
    COUNT(DISTINCT CASE WHEN year = 2019 THEN product_name END)
        AS net_products
FROM car_launches
GROUP BY company_name
ORDER BY company_name;