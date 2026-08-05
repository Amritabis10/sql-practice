# Find the Number of Unique Properties

[Solution](../../solutions/03_aggregation_grouping/038_find_the_number_of_unique_properties.sql)

**Difficulty:** Easy

## Problem Description

You are given Airbnb search-result data. Each row describes a property listing, including its property type and other listing details.

## Table: airbnb_search_details

| Column Name             | Type    |
|-------------------------|---------|
| id                      | bigint  |
| price                   | numeric |
| property_type           | text    |
| room_type               | text    |
| amenities               | text    |
| accommodates            | int     |
| bathrooms               | int     |
| bed_type                | text    |
| cancellation_policy     | text    |
| cleaning_fee            | boolean |
| city                    | text    |
| host_identity_verified  | text    |
| host_response_rate      | text    |
| host_since              | date    |
| neighbourhood           | text    |
| number_of_reviews       | int     |
| review_scores_rating    | numeric |
| zipcode                 | text    |
| bedrooms                | int     |
| beds                    | int     |

- `id` identifies the property listing.
- `property_type` describes the kind of property, such as an apartment, house, or villa.
- The remaining columns contain pricing, capacity, host, location, and review details for the listing.

## Task

Find the number of unique property types represented in `airbnb_search_details`.

Output a single value containing the number of distinct values in the `property_type` column.

## Example

### Input

**airbnb_search_details table (selected columns):**

| id | property_type | city |
|----|---------------|------|
| 1  | Apartment     | NYC  |
| 2  | House         | SF   |
| 3  | Apartment     | NYC  |
| 4  | Villa         | LA   |
| 5  | House         | Boston |

### Output

| unique_properties |
|-------------------|
| 3                 |

## Explanation

The data contains three distinct property types: `Apartment`, `House`, and `Villa`. Repeated listings of the same property type contribute only once to the unique-property count.
