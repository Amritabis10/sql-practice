# Aggregate Listening Data

**Difficulty:** Easy

## Problem Description

Table: listening_habits

```
+-----------------+--------+
| Column Name     | Type   |
+-----------------+--------+
| user_id         | bigint |
| song_id         | bigint |
| listen_duration | double |
+-----------------+--------+
```

- Each row represents a user listening to a song.
- `listen_duration` is in seconds.

## Task

For each user, calculate the total listening time and the count of unique songs they have listened to.

Round the total listening duration to the nearest whole minute.

The output should contain three columns: `user_id`, `total_listen_duration`, and `unique_song_count`.

Return the result table in any order.

## Sample Data

listening_habits table:
```
+---------+---------+----------------+
| user_id | song_id | listen_duration|
+---------+---------+----------------+
| 101     | 5001    | 240            |
| 101     | 5002    | 0              |
| 102     | 5001    | 300            |
| 102     | 5003    | 0              |
| 101     | 5001    | 240            |
| 103     | 5004    | 180            |
| 104     | 5005    | 360            |
| 104     | 5006    | 0              |
| 105     | 5007    | 210            |
| 103     | 5004    | 180            |
| 106     | 5008    | 200            |
| 107     | 5009    | 220            |
| 108     | 5010    | 250            |
| 108     | 5006    | 260            |
| 109     | 5011    | 0              |
+---------+---------+----------------+
```
