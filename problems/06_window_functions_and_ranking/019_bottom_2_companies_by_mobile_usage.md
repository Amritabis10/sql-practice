# Bottom 2 Companies By Mobile Usage

[Solution](../../solutions/06_window_functions_and_ranking/019_bottom_2_companies_by_mobile_usage.sql)

**Difficulty:** Medium

## Problem Description

You are given event data that records the company, user, client platform, and event type for each event.

## Table: fact_events

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| time_id     | date    |
| user_id     | varchar |
| customer_id | varchar |
| client_id   | varchar |
| event_type  | varchar |
| event_id    | int     |

- `id` identifies a row in the event data.
- `time_id` is the date on which the event occurred.
- `user_id` identifies the user who generated the event.
- `customer_id` identifies the company associated with the event.
- `client_id` identifies the platform used for the event, such as `mobile` or `desktop`.
- `event_type` describes the event.
- `event_id` identifies the event type.

## Task

Return the bottom two companies by mobile usage. A company's mobile usage is the number of its events where `client_id` is `mobile`.

Companies with the same mobile event count share the same rank. Include every company whose count is in either of the two lowest distinct ranks.

Output the `customer_id` and number of mobile events, ordered by the number of events in ascending order.

## Example

### Input

**fact_events table:**

| id | time_id   | user_id | customer_id | client_id | event_type          | event_id |
|----|-----------|---------|-------------|-----------|---------------------|----------|
| 1  | 2020-01-01 | U1      | Alpha       | mobile    | message sent        | 3        |
| 2  | 2020-01-02 | U2      | Beta        | mobile    | file received       | 2        |
| 3  | 2020-01-03 | U3      | Beta        | mobile    | video call received | 7        |
| 4  | 2020-01-04 | U4      | Gamma       | mobile    | message sent        | 3        |
| 5  | 2020-01-05 | U5      | Gamma       | mobile    | file received       | 2        |
| 6  | 2020-01-06 | U6      | Delta       | mobile    | message sent        | 3        |
| 7  | 2020-01-07 | U7      | Delta       | mobile    | file received       | 2        |
| 8  | 2020-01-08 | U8      | Delta       | mobile    | video call sent     | 6        |
| 9  | 2020-01-09 | U9      | Alpha       | desktop   | message sent        | 3        |

### Output

| customer_id | event_count |
|-------------|-------------|
| Alpha       | 1           |
| Beta        | 2           |
| Gamma       | 2           |

## Explanation

Considering only mobile events, Alpha has 1 event, Beta and Gamma each have 2, and Delta has 3. Alpha occupies the lowest rank. Beta and Gamma tie at the second-lowest rank, so both are included. Alpha's desktop event does not count toward mobile usage.
