# Problem: Shortest Distance in a Plane

## Table: Point2D

| Column Name | Type |
|-------------|------|
| x           | int  |
| y           | int  |

- (x, y) is the primary key column for this table.
- Each row indicates the position of a point on the X-Y plane.

## Task
The distance between two points p1(x1, y1) and p2(x2, y2) is sqrt((x2 - x1)^2 + (y2 - y1)^2).

Write a solution to report the shortest distance between any two points from the Point2D table. Round the distance to two decimal points.

## Example

### Input
Point2D table:

| x  | y  |
|----|----|
| -1 | -1 |
| 0  | 0  |
| -1 | -2 |

### Output
| shortest |
|----------|
| 1.00     |

### Explanation
The shortest distance is 1.00 from point (-1, -1) to (-1, -2).
