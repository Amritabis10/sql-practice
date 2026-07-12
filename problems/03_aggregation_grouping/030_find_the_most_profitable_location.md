# Find The Most Profitable Location

[Solution](../../solutions/03_aggregation_grouping/030_find_the_most_profitable_location.sql)

**Difficulty:** Hard

## Problem Description

You are given signup and transaction data.

Find the most profitable locations by calculating the average signup duration and the average transaction amount for each location, then comparing the two measures using this ratio:

```text
average transaction amount / average signup duration
```

Return the location, average signup duration in days, average transaction amount, and profitability ratio. Sort the results by profitability ratio in descending order.

## Table: signups

| Column Name       | Type     |
|-------------------|----------|
| signup_id         | int      |
| signup_start_date | datetime |
| signup_stop_date  | datetime |
| plan_id           | int      |
| location          | varchar  |

## Table: transactions

| Column Name            | Type     |
|------------------------|----------|
| transaction_id         | int      |
| signup_id              | int      |
| transaction_start_date | datetime |
| amt                    | float    |

## Example

**Input:**
signups table:

| signup_id | signup_start_date  | signup_stop_date   | plan_id | location      |
|-----------|--------------------|--------------------|---------|---------------|
| 1         | 2020-01-01 10:00:00 | 2020-01-01 12:00:00 | 101     | New York      |
| 2         | 2020-01-02 11:00:00 | 2020-01-02 13:00:00 | 102     | Los Angeles   |
| 3         | 2020-01-03 10:00:00 | 2020-01-03 14:00:00 | 103     | Chicago       |
| 4         | 2020-01-04 09:00:00 | 2020-01-04 10:30:00 | 101     | San Francisco |
| 5         | 2020-01-05 08:00:00 | 2020-01-05 11:00:00 | 102     | New York      |

transactions table:

| transaction_id | signup_id | transaction_start_date | amt    |
|----------------|-----------|------------------------|--------|
| 1              | 1         | 2020-01-01 10:30:00    | 50.00  |
| 2              | 1         | 2020-01-01 11:00:00    | 30.00  |
| 3              | 2         | 2020-01-02 11:30:00    | 100.00 |
| 4              | 2         | 2020-01-02 12:00:00    | 75.00  |
| 5              | 3         | 2020-01-03 10:30:00    | 120.00 |
| 6              | 4         | 2020-01-04 09:15:00    | 80.00  |
| 7              | 5         | 2020-01-05 08:30:00    | 90.00  |

**Output:**

| location      | avg_duration_days | avg_transaction_amount | ratio   |
|---------------|-------------------|------------------------|---------|
| San Francisco | 0.0625            | 80.00                  | 1280.00 |
| Los Angeles   | 0.0833            | 87.50                  | 1050.00 |
| Chicago       | 0.1667            | 120.00                 | 720.00  |
| New York      | 0.1042            | 56.67                  | 544.00  |

## Explanation

First calculate each signup duration as the difference between `signup_stop_date` and `signup_start_date`, expressed in days.

Then average those signup durations by `location`. Separately, join transactions to signups by `signup_id` and calculate each location's average transaction amount.

Finally, divide the average transaction amount by the average signup duration for each location and sort by the ratio from highest to lowest. San Francisco has the highest ratio in the example because its average transaction amount is high relative to its short average signup duration.
