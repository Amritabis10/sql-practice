# Problem: Triangle Judgement

## Table: Triangle

| Column Name | Type |
|-------------|------|
| x           | int  |
| y           | int  |
| z           | int  |

- In SQL, (x, y, z) is the primary key column for this table.
- Each row contains the lengths of three line segments.

## Task
Report for every three line segments whether they can form a triangle.

Return the result table in any order.

## Example

### Input
Triangle table:

| x  | y  | z  |
|----|----|----|
| 13 | 15 | 30 |
| 10 | 20 | 15 |

### Output
| x  | y  | z  | triangle |
|----|----|----|----------|
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |
