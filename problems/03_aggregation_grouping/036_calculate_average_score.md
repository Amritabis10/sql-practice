# Calculate Average Score

[Solution](../../solutions/03_aggregation_grouping/036_calculate_average_score.sql)

## Problem Description

You are given project evaluation data containing scores submitted by team members. A project may receive scores from one or more team members.

## Table: project_data

| Column Name    | Type    |
|----------------|---------|
| project_id     | int     |
| team_member_id | int     |
| score          | numeric |

- `project_id` identifies the project being evaluated.
- `team_member_id` identifies the team member who provided the score.
- `score` is the score provided by that team member.

## Task

Calculate the average score for each project, but include only projects where more than one team member has provided a score.

Output the `project_id` and its `average_score`, rounded to two decimal places.

## Example

### Input

**project_data table:**

| project_id | team_member_id | score |
|------------|----------------|-------|
| 1          | 101            | 80    |
| 1          | 102            | 90    |
| 2          | 103            | 75    |
| 3          | 104            | 88    |
| 3          | 105            | 92    |
| 3          | 106            | 85    |

### Output

| project_id | average_score |
|------------|---------------|
| 1          | 85.00         |
| 3          | 88.33         |

## Explanation

Project `1` received scores from two team members, giving it an average of `(80 + 90) / 2 = 85.00`.

Project `3` received scores from three team members, giving it an average of `(88 + 92 + 85) / 3 = 88.33` when rounded to two decimal places.

Project `2` is excluded because only one team member provided a score.
