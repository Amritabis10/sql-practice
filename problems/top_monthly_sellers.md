# Top Monthly Sellers

## Problem Description

You are provided with an already aggregated dataset from Amazon that contains detailed information about sales across different products and marketplaces. Your task is to list the top 3 sellers in each product category for January. In case of ties, rank them the same and include all sellers tied for that position.

The output should contain seller_id, total_sales, product_category, market_place, and sales_date.

## Table: sales_data

| Column Name      | Type   |
|------------------|--------|
| seller_id        | text   |
| total_sales      | double |
| product_category | text   |
| market_place     | text   |
| sales_date       | date   |

## Expected Output

All required columns and the first 5 rows of the solution are shown.

| product_category | seller_id | total_sales | market_place | sales_date |
|------------------|-----------|-------------|--------------|------------|
| books            | s728      | 29158.51    | us           | 2024-01-01 |
| books            | s918      | 24286.4     | uk           | 2024-01-01 |
| books            | s217      | 23481.03    | in           | 2024-01-01 |
| clothing         | s483      | 49361.62    | uk           | 2024-01-01 |
| clothing         | s790      | 31050.13    | in           | 2024-01-01 |
