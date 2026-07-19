# New Products

[Solution](../../solutions/03_aggregation_grouping/033_new_products.sql)

**Difficulty:** Medium

## Problem Description

You are given a table of product launches by company and year.

## Table: car_launches

| Column Name  | Type    |
|--------------|---------|
| year         | int     |
| company_name | varchar |
| product_name | varchar |

- `year` is the year in which the product was launched.
- `company_name` is the name of the company that launched the product.
- `product_name` is the name of the launched product.

## Task

Calculate the net change in the number of products launched by each company in 2020 compared with 2019.

The net difference is defined as:

`number of products launched in 2020 - number of products launched in 2019`

Output each `company_name` and its net difference.

## Example

### Input

**Sample rows from the car_launches table:**

| year | company_name | product_name |
|------|--------------|--------------|
| 2019 | Toyota       | Avalon       |
| 2019 | Toyota       | Camry        |
| 2020 | Toyota       | Corolla      |
| 2019 | Honda        | Accord       |
| 2019 | Honda        | Passport     |

### Output

| company_name | net_products |
|--------------|--------------|
| Chevrolet    | 2            |
| Ford         | -1           |
| Honda        | -3           |
| Jeep         | 1            |
| Toyota       | -1           |

## Explanation

For each company, count the products launched in 2020 and subtract the number launched in 2019. A positive result means the company launched more products in 2020, while a negative result means it launched fewer.

For example, Toyota's net difference is `-1`, so Toyota launched one fewer product in 2020 than in 2019. Chevrolet's net difference is `2`, so Chevrolet launched two more products in 2020 than in 2019.
