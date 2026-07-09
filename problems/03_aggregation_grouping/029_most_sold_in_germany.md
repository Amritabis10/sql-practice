# Most Sold In Germany

[Solution](../../solutions/03_aggregation_grouping/029_most_sold_in_germany.sql)

**Difficulty:** Easy

## Problem Description

You are given an online retail transactions table.

Find the product that sold the highest total quantity in Germany.

Return the product description and the total quantity sold. If multiple products are tied for the highest quantity, return all tied products.

## Table: online_retail

| Column Name | Type    |
|-------------|---------|
| invoiceno   | varchar |
| stockcode   | varchar |
| description | varchar |
| quantity    | int     |
| invoicedate | datetime |
| unitprice   | float   |
| customerid  | float   |
| country     | varchar |

## Example

**Input:**
online_retail table:

| invoiceno | stockcode | description          | quantity | invoicedate          | unitprice | customerid | country |
|-----------|-----------|----------------------|----------|----------------------|-----------|------------|---------|
| 536527    | 22809     | SET OF 6 T-LIGHTS    | 6        | 2010-12-01 13:04:00  | 2.95      | 12662      | Germany |
| 536527    | 22810     | SET OF 6 T-LIGHTS    | 6        | 2010-12-01 13:04:00  | 2.95      | 12662      | Germany |
| 536527    | 22423     | REGENCY CAKESTAND    | 2        | 2010-12-01 13:04:00  | 12.75     | 12662      | Germany |
| 536840    | 22809     | SET OF 6 T-LIGHTS    | 12       | 2010-12-02 18:27:00  | 2.95      | 12662      | Germany |
| 536840    | 22423     | REGENCY CAKESTAND    | 3        | 2010-12-02 18:27:00  | 12.75     | 12662      | Germany |
| 536841    | 22809     | SET OF 6 T-LIGHTS    | 24       | 2010-12-02 18:27:00  | 2.95      | 12662      | France  |

**Output:**

| description       | total_quantity |
|-------------------|----------------|
| SET OF 6 T-LIGHTS | 24             |

## Explanation

Only rows where `country = 'Germany'` are considered.

- `SET OF 6 T-LIGHTS` sold `6 + 6 + 12 = 24` units in Germany.
- `REGENCY CAKESTAND` sold `2 + 3 = 5` units in Germany.
- The France row is excluded.

`SET OF 6 T-LIGHTS` has the highest total quantity sold in Germany.
