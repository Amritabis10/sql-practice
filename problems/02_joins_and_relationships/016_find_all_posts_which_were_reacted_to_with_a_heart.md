# Find All Posts Which Were Reacted to With a Heart

[Solution](../../solutions/02_joins_and_relationships/016_find_all_posts_which_were_reacted_to_with_a_heart.sql)

**Difficulty:** Easy

## Problem Description

You are given one table containing Facebook posts and another containing reactions to those posts.

## Table: facebook_posts

| Column Name   | Type     |
|---------------|----------|
| post_id       | int      |
| poster        | int      |
| post_text     | varchar  |
| post_keywords | varchar  |
| post_date     | datetime |

- `post_id` uniquely identifies a post.
- `poster` identifies the user who created the post.
- `post_text` contains the post's text.
- `post_keywords` contains keywords associated with the post.
- `post_date` is the date on which the post was created.

## Table: facebook_reactions

| Column Name | Type    |
|-------------|---------|
| poster      | int     |
| friend      | int     |
| reaction    | varchar |
| date_day    | int     |
| post_id     | int     |

- `poster` identifies the user who created the post.
- `friend` identifies the user who reacted to the post.
- `reaction` is the type of reaction, such as `like` or `heart`.
- `date_day` represents the day on which the reaction occurred.
- `post_id` identifies the post that received the reaction and corresponds to `facebook_posts.post_id`.

## Task

Find every post that received at least one `heart` reaction.

For each qualifying post, output all columns from the `facebook_posts` table. Each post should appear only once, even if it received multiple heart reactions.

## Example

### Input

**facebook_posts table:**

| post_id | poster | post_text                                    | post_keywords                 | post_date  |
|---------|--------|----------------------------------------------|-------------------------------|------------|
| 0       | 2      | The Lakers game from last night was great.  | [basketball,lakers,nba]       | 2019-01-01 |
| 1       | 1      | Lebron James is top class.                   | [basketball,lebron_james,nba] | 2019-01-02 |
| 2       | 2      | Asparagus tastes OK.                         | [asparagus,food]              | 2019-01-01 |
| 3       | 1      | Spaghetti is an Italian food.                | [spaghetti,food]              | 2019-01-02 |
| 4       | 3      | User 3 is not sharing interests              | [#spam#]                      | 2019-01-01 |

**facebook_reactions table:**

| poster | friend | reaction | date_day | post_id |
|--------|--------|----------|----------|---------|
| 2      | 1      | like     | 1        | 0       |
| 2      | 6      | like     | 1        | 0       |
| 1      | 2      | like     | 1        | 1       |
| 1      | 3      | heart    | 1        | 1       |
| 1      | 4      | like     | 1        | 1       |

### Output

| post_id | poster | post_text                  | post_keywords                 | post_date  |
|---------|--------|----------------------------|-------------------------------|------------|
| 1       | 1      | Lebron James is top class. | [basketball,lebron_james,nba] | 2019-01-02 |

## Explanation

Post `1` has a reaction whose type is `heart`, so all columns for that post are returned. Post `0` received only `like` reactions, while the other sample posts have no matching heart reaction, so they are excluded.
