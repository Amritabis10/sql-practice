# Top 2 Users With Most Calls

[Solution](../../solutions/06_window_functions_and_ranking/017_top_2_users_with_most_calls.sql)

**Difficulty:** Easy

## Problem Description

You are given tables containing users and their call activity.

Find the top 2 users with the highest number of calls.

Return the user ID, first name, last name, and total number of calls. Rank users by total calls in descending order. If multiple users are tied within the top 2 ranks, include all tied users.

## Table: rc_calls

| Column Name | Type      |
|-------------|-----------|
| user_id     | int       |
| call_id     | int       |
| date        | timestamp |

## Table: rc_users

| Column Name | Type    |
|-------------|---------|
| user_id     | int     |
| first_name  | varchar |
| last_name   | varchar |
| company_id  | int     |

## Example

**Input:**
rc_calls table:

| user_id | call_id | date                |
|---------|---------|---------------------|
| 1       | 101     | 2020-01-01 10:00:00 |
| 1       | 102     | 2020-01-01 10:05:00 |
| 2       | 103     | 2020-01-01 10:10:00 |
| 2       | 104     | 2020-01-01 10:15:00 |
| 2       | 105     | 2020-01-01 10:20:00 |
| 3       | 106     | 2020-01-01 10:25:00 |
| 3       | 107     | 2020-01-01 10:30:00 |
| 4       | 108     | 2020-01-01 10:35:00 |

rc_users table:

| user_id | first_name | last_name | company_id |
|---------|------------|-----------|------------|
| 1       | James      | Smith     | 10         |
| 2       | Maria      | Garcia    | 10         |
| 3       | Robert     | Johnson   | 20         |
| 4       | Linda      | Brown     | 20         |

**Output:**

| user_id | first_name | last_name | total_calls |
|---------|------------|-----------|-------------|
| 2       | Maria      | Garcia    | 3           |
| 1       | James      | Smith     | 2           |
| 3       | Robert     | Johnson   | 2           |

## Explanation

Count the calls made by each user:

- User 2 made 3 calls.
- Users 1 and 3 each made 2 calls.
- User 4 made 1 call.

User 2 has the highest call count. Users 1 and 3 are tied for the second-highest call count, so both are included.
