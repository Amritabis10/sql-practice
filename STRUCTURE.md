# SQL Practice Repository Structure

The repository is organized by SQL problem type. Problem statements and solutions are mirrored by category and filename.

```text
problems/
  01_basic_select_filtering/
    001_example_problem.md
solutions/
  01_basic_select_filtering/
    001_example_problem.sql
datasets/
```

## Main Folders

- `problems/`: Markdown problem statements grouped by SQL topic.
- `solutions/`: SQL solution files grouped with the same category names and numbered filenames as `problems/`.
- `datasets/`: Optional sample data in CSV or SQL format for local practice.

## Category Folders

- `01_basic_select_filtering`: Simple `SELECT`, `WHERE`, filtering, and basic conditional logic.
- `02_joins_and_relationships`: Joins, foreign-key relationships, missing records, and manager/customer relationships.
- `03_aggregation_grouping`: `GROUP BY`, counts, averages, sums, grouped metrics, and `HAVING`.
- `04_subqueries_and_set_logic`: Subqueries, anti-joins, set-style logic, and multi-step filtering.
- `05_dates_and_time`: Date formatting, rolling windows, monthly activity, and time-based reporting.
- `06_window_functions_and_ranking`: Ranking, running totals, medians, gaps, sequences, and window functions.
- `07_string_and_data_transformation`: String cleanup, pivots/unpivots, `CASE`, reshaping, and table transformations.
- `08_business_reporting`: Product, finance, sports, movie, platform, and business-summary style reports.

## Naming Rules

Use the same numbered snake_case filename in both folders:

```text
problems/<category>/NNN_question_title.md
solutions/<category>/NNN_question_title.sql
```

Example:

```text
problems/04_subqueries_and_set_logic/001_accepted_candidates_from_the_interviews.md
solutions/04_subqueries_and_set_logic/001_accepted_candidates_from_the_interviews.sql
```

Numbers restart inside each category. When adding a new problem, choose the best category and use the next available number in that category.

## Problem File Link

Each problem file should include a solution link directly under the title:

```md
[Solution](../../solutions/<category>/NNN_question_title.sql)
```

This relative path works on GitHub because problem files are one folder below `problems/`.
