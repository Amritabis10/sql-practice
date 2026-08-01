# Common Friends Script

[Solution](../../solutions/04_subqueries_and_set_logic/015_common_friends_script.sql)

**Difficulty:** Medium

## Problem Description

You are analyzing a social network dataset containing users and their directed friendship connections. There is exactly one user named Karl and exactly one user named Hans in the dataset.

## Table: users

| Column Name | Type    |
|-------------|---------|
| user_id     | int     |
| user_name   | varchar |

- `user_id` uniquely identifies a user.
- `user_name` is the user's name.

## Table: friends

| Column Name | Type |
|-------------|------|
| user_id     | int  |
| friend_id   | int  |

- `user_id` identifies the source user in a friendship.
- `friend_id` identifies a user whom the source user considers a friend and corresponds to `users.user_id`.
- Each row represents a directed friendship from `user_id` to `friend_id`.

## Task

Find the users who are friends of both Karl and Hans.

Output each common friend's `user_id` and `user_name`.

## Example

### Input

**users table:**

| user_id | user_name |
|---------|-----------|
| 1       | Karl      |
| 2       | Hans      |
| 3       | Emma      |
| 4       | Emma      |
| 5       | Mike      |
| 6       | Lucas     |
| 7       | Sarah     |
| 8       | Lucas     |
| 9       | Anna      |
| 10      | John      |

**friends table:**

| user_id | friend_id |
|---------|-----------|
| 1       | 3         |
| 1       | 5         |
| 2       | 3         |
| 2       | 4         |
| 3       | 1         |
| 3       | 2         |
| 3       | 6         |
| 4       | 7         |
| 5       | 8         |
| 6       | 9         |
| 7       | 10        |
| 8       | 6         |
| 9       | 10        |
| 10      | 7         |
| 10      | 9         |

### Output

| user_id | user_name |
|---------|-----------|
| 3       | Emma      |

## Explanation

Karl has user ID `1` and is friends with users `3` and `5`. Hans has user ID `2` and is friends with users `3` and `4`. User `3`, Emma, is the only user present in both friend lists, so she is the only row returned.
