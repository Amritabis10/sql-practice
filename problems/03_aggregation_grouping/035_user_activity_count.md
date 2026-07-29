# User Activity Count

[Solution](../../solutions/03_aggregation_grouping/035_user_activity_count.sql)

**Difficulty:** Easy

## Problem Description

You are given a table of user profiles and a log of activities performed by those users. A user may perform the same type of activity more than once, and some users may have no recorded activity.

## Table: user_profiles

| Column Name | Type    |
|-------------|---------|
| user_id     | bigint  |
| email       | text    |
| name        | text    |
| signup_date | date    |

- `user_id` uniquely identifies a user.
- `email` is the user's email address.
- `name` is the user's name.
- `signup_date` is the date the user signed up.

## Table: activity_log

| Column Name        | Type   |
|--------------------|--------|
| activity_timestamp | date   |
| activity_type      | text   |
| user_id            | bigint |

- `activity_timestamp` is the date on which the activity occurred.
- `activity_type` describes the activity, such as `login`, `view_product`, or `purchase`.
- `user_id` identifies the user who performed the activity and corresponds to `user_profiles.user_id`.

## Task

Count the number of unique activity types performed by each user. Include every user from `user_profiles`, even if the user has no entries in `activity_log`.

Output each user's `user_id` and their `activity_count`. Users with no recorded activities must have an activity count of `0`.

## Example

### Input

**user_profiles table:**

| user_id | email                  | name        | signup_date |
|---------|------------------------|-------------|-------------|
| 1       | john.doe@example.com   | John Doe    | 2022-01-01  |
| 2       | jane.smith@example.com | Jane Smith  | 2023-05-15  |
| 3       | bob.jones@example.com  | Bob Jones   | 2021-08-20  |
| 4       | alice.white@example.com| Alice White | 2024-02-10  |

**activity_log table:**

| activity_timestamp | activity_type | user_id |
|--------------------|---------------|---------|
| 2024-11-01         | login         | 1       |
| 2024-11-02         | view_product  | 1       |
| 2024-11-03         | purchase      | 1       |
| 2024-11-01         | login         | 3       |
| 2024-11-02         | purchase      | 3       |
| 2024-11-03         | review        | 3       |

### Output

| user_id | activity_count |
|---------|----------------|
| 1       | 3              |
| 2       | 0              |
| 3       | 3              |
| 4       | 0              |

## Explanation

User `1` performed three different activity types: `login`, `view_product`, and `purchase`. User `3` also performed three different activity types: `login`, `purchase`, and `review`.

Users `2` and `4` have no rows in `activity_log`, but they are still included with an `activity_count` of `0`. If a user performs the same activity type multiple times, that type contributes only once to the user's count.
