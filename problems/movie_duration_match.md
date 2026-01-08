# Movie Duration Match

**Difficulty:** Easy

## Problem Description

Table: entertainment_catalog

```
+----------+--------+
| Column   | Type   |
+----------+--------+
| movie_id | bigint |
| title    | text   |
| duration | bigint |
+----------+--------+
```

Table: flight_schedule

```
+-----------------+--------+
| Column          | Type   |
+-----------------+--------+
| flight_id       | bigint |
| flight_duration | bigint |
| flight_date     | date   |
+-----------------+--------+
```

- `duration` and `flight_duration` are in minutes.

## Task

For flight 101, find movies whose runtime is less than or equal to the flight's duration.

The output should list suggested movies for the flight, including `flight_id`, `movie_id`, and `movie_duration`.

Return the result table in any order.

## Sample Data

entertainment_catalog table:
```
+----------+--------------------+----------+
| movie_id | title              | duration |
+----------+--------------------+----------+
| 1        | The Great Adventure| 120      |
| 2        | Space Journey      | 90       |
| 3        | Ocean Mystery      | 60       |
| 4        | The Lost City      | 150      |
| 5        | Mountain Quest     | 110      |
| 6        | Time Travels       | 95       |
| 7        | Desert Mirage      | 100      |
| 8        | Sky High           | 85       |
| 9        | Deep Sea           | 75       |
| 10       | City Lights        | 105      |
+----------+--------------------+----------+
```

flight_schedule table:
```
+-----------+-----------------+------------+
| flight_id | flight_duration | flight_date|
+-----------+-----------------+------------+
| 101       | 240             | 2024-01-01 |
| 102       | 180             | 2024-01-02 |
| 103       | 240             | 2024-01-03 |
| 104       | 150             | 2024-01-04 |
| 105       | 300             | 2024-01-05 |
| 106       | 200             | 2024-01-06 |
| 107       | 180             | 2024-01-07 |
| 108       | 270             | 2024-01-08 |
| 109       | 220             | 2024-01-09 |
| 110       | 190             | 2024-01-10 |
+-----------+-----------------+------------+
```
