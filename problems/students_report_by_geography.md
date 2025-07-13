# Problem: Students Report By Geography

## Table: Student

| Column Name | Type    |
|-------------|---------|
| name        | varchar |
| continent   | varchar |

- This table may contain duplicate rows.
- Each row indicates the name of a student and the continent they came from.

A school has students from Asia, Europe, and America.

## Task
Write a solution to pivot the continent column in the Student table so that each name is sorted alphabetically and displayed underneath its corresponding continent. The output headers should be America, Asia, and Europe, respectively.

The test cases are generated so that the student number from America is not less than either Asia or Europe.

## Example

### Input
Student table:

| name   | continent |
|--------|-----------|
| Jane   | America   |
| Pascal | Europe    |
| Xi     | Asia      |
| Jack   | America   |

### Output
| America | Asia | Europe |
|---------|------|--------|
| Jack    | Xi   | Pascal |
| Jane    | null | null   |
