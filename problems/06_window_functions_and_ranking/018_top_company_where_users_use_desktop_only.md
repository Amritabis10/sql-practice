# Top Company Where Users Use Desktop Only

[Solution](../../solutions/06_window_functions_and_ranking/018_top_company_where_users_use_desktop_only.sql)

**Difficulty:** Medium

## Problem Description

**Table: fact_events**

| Column Name | Type |
|-------------|------|
| id          | int  |
| time_id     | date |
| user_id     | varchar |
| customer_id | varchar |
| client_id   | varchar |
| event_type  | varchar |
| event_id    | int  |

- `id` identifies a row in the event data.
- `time_id` is the date on which the event occurred.
- `user_id` identifies the user who generated the event.
- `customer_id` identifies the company associated with the event.
- `client_id` identifies the platform used for the event, such as `desktop` or `mobile`.
- `event_type` describes the event.
- `event_id` identifies the event type.

## Task

Write a query that returns the `customer_id` of the company with the highest number of users who have exclusively used desktop.

Ignore any user who has used mobile or another non-desktop client at any point. A company may still qualify even if it has other users who use mobile.

If multiple companies tie for the highest number of qualifying users, return all of them.

## Example

### Input

**fact_events table:**

| id | time_id   | user_id   | customer_id | client_id | event_type          | event_id |
|----|-----------|-----------|-------------|-----------|---------------------|----------|
| 1  | 2020-02-28 | 3668-QPYBK | Sendit      | desktop   | message sent        | 3        |
| 2  | 2020-02-28 | 7892-POOKP | Connectix   | mobile    | file received       | 2        |
| 3  | 2020-04-03 | 9763-GRSKD | Zoomit      | desktop   | video call received | 7        |
| 4  | 2020-04-02 | 9763-GRSKD | Connectix   | desktop   | video call received | 7        |
| 5  | 2020-02-06 | 9237-HQITU | Sendit      | desktop   | video call received | 7        |

### Output

| customer_id |
|-------------|
| Sendit      |

### Explanation

Users `3668-QPYBK`, `9763-GRSKD`, and `9237-HQITU` used desktop exclusively, while `7892-POOKP` is excluded because that user used mobile. Sendit is associated with two qualifying users, while Zoomit and Connectix are each associated with one. Therefore, Sendit has the highest number of desktop-only users.
