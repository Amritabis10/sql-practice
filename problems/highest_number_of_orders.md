# Highest Number Of Orders

**Difficulty:** Easy

## Problem Description

Table: Orders

```
+------------------+---------+
| Column Name      | Type    |
+------------------+---------+
| id               | int     |
| cust_id          | int     |
| order_date       | date    |
| order_details    | varchar |
| total_order_cost | int     |
+------------------+---------+
```

Write a query to find the customer who has placed the highest number of orders. Output the customer's id along with their total number of orders.

## Example

### Example 1

**Input:**

Orders table:
```
+----+---------+------------+---------------+-----------------+
| id | cust_id | order_date | order_details | total_order_cost|
+----+---------+------------+---------------+-----------------+
| 1  | 3       | 2019-03-04 | Coat          | 100             |
| 2  | 3       | 2019-03-01 | Shoes         | 80              |
| 3  | 3       | 2019-03-07 | Skirt         | 30              |
| 4  | 7       | 2019-02-01 | Coat          | 25              |
| 5  | 7       | 2019-03-10 | Shoes         | 80              |
+----+---------+------------+---------------+-----------------+
```

**Output:**
```
+---------+--------------+
| cust_id | order_count  |
+---------+--------------+
| 3       | 3            |
+---------+--------------+
```

**Explanation:**
Customer 3 placed three orders, which is more than customer 7's two orders.
