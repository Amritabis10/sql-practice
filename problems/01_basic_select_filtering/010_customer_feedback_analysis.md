# Customer Feedback Analysis

[Solution](../../solutions/01_basic_select_filtering/010_customer_feedback_analysis.sql)

**Difficulty:** Medium

## Problem Description

Capital One's marketing team is analyzing customer feedback collected through several channels. Each comment has already been assigned to one of three length categories:

- `short_comments`
- `mid_length_comments`
- `long_comments`

## Table: customer_feedback

| Column Name      | Type    |
|------------------|---------|
| feedback_id      | int     |
| feedback_text    | varchar |
| source_channel   | varchar |
| comment_category | varchar |

- `feedback_id` identifies a feedback response.
- `feedback_text` contains the customer's comment.
- `source_channel` identifies where the feedback originated, such as `email`, `survey`, or `social_media`.
- `comment_category` contains the comment's precomputed length category.

## Task

Find feedback that comes from `social_media` and is not categorized as `short_comments`.

Output the `feedback_id`, `feedback_text`, `source_channel`, and `comment_category`. Include only one row per `feedback_id`.

## Example

### Input

**customer_feedback table:**

| feedback_id | feedback_text                                                     | source_channel | comment_category    |
|-------------|-------------------------------------------------------------------|----------------|---------------------|
| 1           | Great service, but the app crashes occasionally.                  | email          | mid_length_comments |
| 2           | Loved the friendly staff and quick response. Highly recommended.  | social_media   | mid_length_comments |
| 2           | Loved the friendly staff and quick response. Highly recommended.  | social_media   | mid_length_comments |
| 3           | Great app!                                                        | social_media   | short_comments      |
| 4           | The latest update fixed my issues and made everything much faster. | social_media   | long_comments       |
| 5           | Difficult to navigate the website, and customer support is slow.  | survey         | mid_length_comments |

### Output

| feedback_id | feedback_text                                                     | source_channel | comment_category    |
|-------------|-------------------------------------------------------------------|----------------|---------------------|
| 2           | Loved the friendly staff and quick response. Highly recommended.  | social_media   | mid_length_comments |
| 4           | The latest update fixed my issues and made everything much faster. | social_media   | long_comments       |

## Explanation

Feedback `2` and `4` came from social media and belong to categories other than `short_comments`, so they qualify. The duplicate row for feedback `2` appears only once in the result.

Feedback `3` is excluded because it is a short comment. Feedback `1` and `5` are excluded because they came from other channels.
