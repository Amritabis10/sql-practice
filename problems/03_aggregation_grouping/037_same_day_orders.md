# Same-Day Orders

[Solution](../../solutions/03_aggregation_grouping/037_same_day_orders.sql)

**Difficulty:** Hard

## Problem Description

You are given records of user sessions and a summary of orders placed by users. A user may place multiple orders on a day when they also started a session.

## Table: sessions

| Column Name  | Type     |
|--------------|----------|
| session_id   | int      |
| user_id      | int      |
| session_date | datetime |

- `session_id` uniquely identifies a session.
- `user_id` identifies the user who started the session.
- `session_date` is the date on which the session started.

## Table: order_summary

| Column Name | Type     |
|-------------|----------|
| order_id    | int      |
| user_id     | int      |
| order_value | int      |
| order_date  | datetime |

- `order_id` uniquely identifies an order.
- `user_id` identifies the user who placed the order.
- `order_value` is the value of the order.
- `order_date` is the date on which the order was placed.

## Task

Identify users who started a session and placed at least one order on the same day.

For each qualifying user and session date, return the `user_id`, `session_date`, total number of orders placed on that day, and total order value for that day.

## Example

### Input

**sessions table:**

| session_id | user_id | session_date        |
|------------|---------|---------------------|
| 1          | 1       | 2024-01-01 00:00:00 |
| 2          | 2       | 2024-01-02 00:00:00 |
| 3          | 3       | 2024-01-05 00:00:00 |
| 4          | 4       | 2024-01-03 00:00:00 |

**order_summary table:**

| order_id | user_id | order_value | order_date          |
|----------|---------|-------------|---------------------|
| 1        | 1       | 152         | 2024-01-01 00:00:00 |
| 2        | 2       | 485         | 2024-01-04 00:00:00 |
| 3        | 3       | 398         | 2024-01-05 00:00:00 |
| 4        | 3       | 320         | 2024-01-05 00:00:00 |
| 5        | 4       | 156         | 2024-01-03 00:00:00 |
| 6        | 4       | 121         | 2024-01-03 00:00:00 |

### Output

| user_id | session_date        | total_num_orders | total_order_value |
|---------|---------------------|------------------|-------------------|
| 1       | 2024-01-01 00:00:00 | 1                | 152               |
| 3       | 2024-01-05 00:00:00 | 2                | 718               |
| 4       | 2024-01-03 00:00:00 | 2                | 277               |

## Explanation

Users `1`, `3`, and `4` each started a session and placed one or more orders on the same date. User `3` placed two qualifying orders worth `398` and `320`, for a total value of `718`. User `4` also placed two qualifying orders, worth `277` in total.

User `2` is excluded because their session and order occurred on different dates.
