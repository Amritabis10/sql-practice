# Highest Cost Orders

[Solution](../../solutions/03_aggregation_grouping/034_highest_cost_orders.sql)

**Difficulty:** Medium

## Problem Description

You are given customer information and order records. A customer may place more than one order on the same day.

## Table: customers

| Column Name  | Type    |
|--------------|---------|
| id           | int     |
| first_name   | varchar |
| last_name    | varchar |
| city         | varchar |
| address      | varchar |
| phone_number | varchar |

- `id` uniquely identifies a customer.
- `first_name` and `last_name` contain the customer's name.
- `city`, `address`, and `phone_number` contain the customer's contact information.
- Every `first_name` in the dataset can be assumed to be unique.

## Table: orders

| Column Name      | Type    |
|------------------|---------|
| id               | int     |
| cust_id          | int     |
| order_date       | date    |
| order_details    | varchar |
| total_order_cost | int     |

- `id` uniquely identifies an order.
- `cust_id` identifies the customer who placed the order and corresponds to `customers.id`.
- `order_date` is the date on which the order was placed.
- `order_details` describes the ordered item.
- `total_order_cost` is the cost of the order.

## Task

Find the customer or customers with the highest daily total order cost between `2019-02-01` and `2019-05-01`, inclusive.

If a customer placed multiple orders on the same day, sum those order costs to calculate that customer's daily total. Return all customers tied for the highest daily total.

Output the customer's `first_name`, the daily `total_order_cost`, and the `order_date`.

## Example

### Input

**Sample rows from the customers table:**

| id | first_name | last_name | city          | address | phone_number |
|----|------------|-----------|---------------|---------|--------------|
| 8  | John       | Joseph    | San Francisco |         | 928-386-8164 |
| 7  | Jill       | Michael   | Austin        |         | 813-297-0692 |
| 4  | William    | Daniel    | Denver        |         | 813-368-1200 |
| 5  | Henry      | Jackson   | Miami         |         | 808-601-7513 |
| 13 | Emma       | Isaac     | Miami         |         | 808-690-5201 |

**Sample rows from the orders table:**

| id | cust_id | order_date | order_details | total_order_cost |
|----|---------|------------|---------------|------------------|
| 1  | 3       | 2019-03-04 | Coat          | 100              |
| 2  | 3       | 2019-03-01 | Shoes         | 80               |
| 3  | 3       | 2019-03-07 | Skirt         | 30               |
| 4  | 7       | 2019-02-01 | Coat          | 25               |
| 5  | 7       | 2019-03-10 | Shoes         | 80               |

### Output

| first_name | total_order_cost | order_date |
|------------|------------------|------------|
| Jill       | 275              | 2019-04-19 |
| Mark       | 275              | 2019-04-19 |

## Explanation

First, combine all orders placed by the same customer on the same date to obtain each customer's daily total. Then compare those daily totals for orders within the specified date range.

Jill and Mark each have a daily total of `275` on `2019-04-19`. This is the highest daily total in the period, and both rows are returned because tied customers must be included.
