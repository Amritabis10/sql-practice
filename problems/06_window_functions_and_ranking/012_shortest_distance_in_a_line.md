# Problem: Shortest Distance in a Line

[Solution](../../solutions/06_window_functions_and_ranking/012_shortest_distance_in_a_line.sql)

## Table: Point

| Column Name | Type |
|-------------|------|
| x           | int  |

- In SQL, x is the primary key column for this table.
- Each row indicates the position of a point on the X-axis.

## Task
Find the shortest distance between any two points from the Point table.

## Example

### Input
Point table:

| x  |
|----|
| -1 |
| 0  |
| 2  |

### Output
| shortest |
|----------|
| 1        |
