# Problem: Actors and Directors Who Cooperated At Least Three Times

## Table: ActorDirector

| Column Name | Type |
|-------------|------|
| actor_id    | int  |
| director_id | int  |
| timestamp   | int  |

- `timestamp` is the primary key for this table.

## Task
Write a solution to find all the pairs (actor_id, director_id) where the actor has cooperated with the director at least three times.

Return the result table in any order.

## Example

### Input
ActorDirector table:

| actor_id | director_id | timestamp |
|----------|-------------|-----------|
| 1        | 1           | 0         |
| 1        | 1           | 1         |
| 1        | 1           | 2         |
| 1        | 2           | 3         |
| 1        | 2           | 4         |
| 2        | 1           | 5         |
| 2        | 1           | 6         |

### Output
| actor_id | director_id |
|----------|-------------|
| 1        | 1           |

### Explanation
The only pair is (1, 1) where they cooperated exactly 3 times.
