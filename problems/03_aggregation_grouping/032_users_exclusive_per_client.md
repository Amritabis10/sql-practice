# Users Exclusive Per Client

[Solution](../../solutions/03_aggregation_grouping/032_users_exclusive_per_client.sql)

**Difficulty:** Medium

## Problem Description

You are given event data that records the client platform used for each user interaction.

## Table: fact_events

| Column Name | Type     |
|-------------|----------|
| id          | int      |
| time_id     | datetime |
| user_id     | varchar  |
| customer_id | varchar  |
| client_id   | varchar  |
| event_type  | varchar  |
| event_id    | int      |

- `id` uniquely identifies an event record.
- `time_id` is the date or time of the event.
- `user_id` identifies the user who generated the event.
- `customer_id` identifies the company associated with the event.
- `client_id` identifies the platform used for the event, such as `desktop` or `mobile`.
- `event_type` describes the event.
- `event_id` identifies the event type.

## Task

Find the number of users who are exclusive to each client. A user is exclusive when all of that user's events were performed through only one distinct `client_id`.

Output the `client_id` and the number of exclusive users associated with it. Count each qualifying user only once per client, even if that user generated multiple events.

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
| 6  | 2020-03-15 | 7892-POOKP | Connectix   | desktop   | message sent        | 3        |

### Output

| client_id | exclusive_users |
|-----------|-----------------|
| desktop   | 3               |

## Explanation

Users `3668-QPYBK`, `9763-GRSKD`, and `9237-HQITU` used only the desktop client, so all three are exclusive desktop users. User `9763-GRSKD` is counted once even though that user generated multiple desktop events.

User `7892-POOKP` used both mobile and desktop, so that user is not exclusive to either client and is excluded from the result.
