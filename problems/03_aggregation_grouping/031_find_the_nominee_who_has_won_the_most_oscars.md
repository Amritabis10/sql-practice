# Find the Nominee Who Has Won the Most Oscars

[Solution](../../solutions/03_aggregation_grouping/031_find_the_nominee_who_has_won_the_most_oscars.sql)

**Difficulty:** Medium

## Problem Description

Find the nominee who has won the most Oscars.

Count the winning records for each nominee and return the nominee's name alongside the number of times they won. If multiple nominees are tied for the highest number of wins, return all tied nominees.

## Table: oscar_nominees

| Column Name | Type    |
|-------------|---------|
| year        | int     |
| category    | varchar |
| nominee     | varchar |
| movie       | varchar |
| winner      | boolean |
| id          | int     |

Each row represents an Oscar nomination. The `winner` column indicates whether the nominee won that award.

## Example

**Input:**
oscar_nominees table:

| year | category                     | nominee        | movie              | winner | id |
|------|------------------------------|----------------|--------------------|--------|----|
| 2001 | Actress in a Leading Role    | Julia Roberts  | Erin Brockovich    | true   | 1  |
| 2003 | Actress in a Leading Role    | Nicole Kidman  | The Hours          | true   | 2  |
| 2013 | Actress in a Leading Role    | Nicole Kidman  | The Paperboy       | false  | 3  |
| 2017 | Actress in a Supporting Role | Viola Davis    | Fences             | true   | 4  |
| 2021 | Actress in a Leading Role    | Viola Davis    | Ma Rainey's Black Bottom | false | 5 |
| 2022 | Actress in a Leading Role    | Jessica Chastain | The Eyes of Tammy Faye | true | 6 |
| 2023 | Actress in a Supporting Role | Jamie Lee Curtis | Everything Everywhere All at Once | true | 7 |
| 2024 | Best Picture                 | Emma Thomas    | Oppenheimer        | true   | 8  |
| 2025 | Best Picture                 | Emma Thomas    | Example Film       | true   | 9  |
| 2025 | Best Director                | Julia Roberts  | Example Film       | true   | 10 |

**Output:**

| nominee       | n_times_won |
|---------------|-------------|
| Emma Thomas   | 2           |
| Julia Roberts | 2           |

## Explanation

Only rows where `winner` is `true` count as Oscar wins.

- Emma Thomas has two winning records.
- Julia Roberts has two winning records.
- Every other nominee has one winning record or none.

Emma Thomas and Julia Roberts are tied for the highest number of wins, so both are returned.
