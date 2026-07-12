# Find the Average Rating of Movie Stars

[Solution](../../solutions/02_joins_and_relationships/015_find_the_average_rating_of_movie_stars.sql)

**Difficulty:** Medium

## Problem Description

Find the average movie rating for each movie star, along with the star's name and birthday.

Use the `name` columns as the keys when joining the two tables. Sort the results by `birthday` in ascending order.

## Table: nominee_filmography

| Column Name  | Type    |
|--------------|---------|
| name         | varchar |
| amg_movie_id | varchar |
| movie_title  | varchar |
| role_type    | varchar |
| rating       | float   |
| year         | int     |
| id           | int     |

Each row represents one movie credit for a star and includes the movie's rating.

## Table: nominee_information

| Column Name   | Type     |
|---------------|----------|
| Unnamed: 0    | int      |
| name          | varchar  |
| amg_person_id | varchar  |
| top_genre     | varchar  |
| birthday      | datetime |
| id            | int      |

Each row contains biographical information about a nominee.

## Example

**Input:**

nominee_filmography table:

| name           | amg_movie_id | movie_title       | role_type     | rating | year | id |
|----------------|--------------|-------------------|---------------|--------|------|----|
| Alice Morgan   | V 1001       | Northern Lights   | Normal Acting | 8.0    | 2018 | 1  |
| Alice Morgan   | V 1002       | Summer Road       | Normal Acting | 6.0    | 2020 | 2  |
| Benjamin Stone | V 1003       | The Last Harbor   | Normal Acting | 7.0    | 2019 | 3  |
| Benjamin Stone | V 1004       | Silent City       | Normal Acting | 9.0    | 2021 | 4  |
| Clara Hayes    | V 1005       | Open Skies        | Normal Acting | 8.5    | 2022 | 5  |

nominee_information table:

| Unnamed: 0 | name           | amg_person_id | top_genre | birthday            | id  |
|------------|----------------|---------------|-----------|---------------------|-----|
| 0          | Alice Morgan   | P 2001        | Drama     | 1975-04-12 00:00:00 | 101 |
| 1          | Benjamin Stone | P 2002        | Thriller  | 1968-09-03 00:00:00 | 102 |
| 2          | Clara Hayes    | P 2003        | Comedy    | 1982-01-25 00:00:00 | 103 |

**Output:**

| name           | birthday            | average_star_rating |
|----------------|---------------------|---------------------|
| Benjamin Stone | 1968-09-03 00:00:00 | 8.0                 |
| Alice Morgan   | 1975-04-12 00:00:00 | 7.0                 |
| Clara Hayes    | 1982-01-25 00:00:00 | 8.5                 |

## Explanation

The tables are matched using each star's `name`.

- Benjamin Stone's average rating is `(7.0 + 9.0) / 2 = 8.0`.
- Alice Morgan's average rating is `(8.0 + 6.0) / 2 = 7.0`.
- Clara Hayes has one rating, so her average is `8.5`.

The results are ordered from the earliest birthday to the latest.
