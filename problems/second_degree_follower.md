# Problem: Second Degree Follower

## Table: Follow

| Column Name | Type    |
|-------------|---------|
| followee    | varchar |
| follower    | varchar |

- (followee, follower) is the primary key for this table.
- Each row indicates that the user follower follows the user followee on a social network.
- There will not be a user following themself.

## Task
A second-degree follower is a user who:
- follows at least one user, and
- is followed by at least one user.

Write a solution to report the second-degree users and the number of their followers.

Return the result table ordered by follower in alphabetical order.

## Example

### Input
Follow table:

| followee | follower |
|----------|----------|
| Alice    | Bob      |
| Bob      | Cena     |
| Bob      | Donald   |
| Donald   | Edward   |

### Output
| follower | num |
|----------|-----|
| Bob      | 2   |
| Donald   | 1   |

### Explanation
User Bob has 2 followers. Bob is a second-degree follower because he follows Alice, so we include him in the result table.
User Donald has 1 follower. Donald is a second-degree follower because he follows Bob, so we include him in the result table.
User Alice has 1 follower. Alice is not a second-degree follower because she does not follow anyone, so we do not include her in the result table.
