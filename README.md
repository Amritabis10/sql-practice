# sql-practice

A collection of SQL problems and solutions for regular practice, covering a range of topics from basic queries to advanced database concepts. Perfect for improving SQL skills and preparing for interviews.

## Repository Layout

Problems and solutions are organized by SQL topic. Each category exists under both `problems/` and `solutions/`, and each problem has a matching solution file with the same numbered filename.

Example:

```text
problems/04_subqueries_and_set_logic/001_accepted_candidates_from_the_interviews.md
solutions/04_subqueries_and_set_logic/001_accepted_candidates_from_the_interviews.sql
```

Every problem file includes a solution link directly under the title:

```md
[Solution](../../solutions/04_subqueries_and_set_logic/001_accepted_candidates_from_the_interviews.sql)
```

## Categories

- `01_basic_select_filtering`: Simple `SELECT`, `WHERE`, filtering, and basic conditional logic.
- `02_joins_and_relationships`: Joins, foreign-key relationships, missing records, and manager/customer relationships.
- `03_aggregation_grouping`: `GROUP BY`, counts, averages, sums, grouped metrics, and `HAVING`.
- `04_subqueries_and_set_logic`: Subqueries, anti-joins, set-style logic, and multi-step filtering.
- `05_dates_and_time`: Date formatting, rolling windows, monthly activity, and time-based reporting.
- `06_window_functions_and_ranking`: Ranking, running totals, medians, gaps, sequences, and window functions.
- `07_string_and_data_transformation`: String cleanup, pivots/unpivots, `CASE`, reshaping, and table transformations.
- `08_business_reporting`: Product, finance, sports, movie, platform, and business-summary style reports.

## Add a New Problem From a URL

Use this workflow when adding a question from LeetCode, HackerRank, StrataScratch, DataLemur, or another competitive SQL site.

### Prompt for Codex

Copy this prompt into Codex and replace `<QUESTION_URL>` with the problem link:

```text
I want to add another SQL question to this repository.

Question link: <QUESTION_URL>

Please:
1. Read `README.md`, `STRUCTURE.md`, and the existing files under `problems/` and `solutions/`.
2. Choose the best existing category for the problem.
3. Create the problem file under `problems/<category>/` using the next sequential number in that category and a snake_case title.
4. Create the matching blank solution file under `solutions/<same_category>/` using the exact same numbered filename.
5. Add a `[Solution](../../solutions/<same_category>/<same_numbered_filename>.sql)` link directly under the problem title.
6. Include the problem title, difficulty if available, table schema, task description, examples, and explanation.
7. Do not write the SQL solution yet.
8. Show me the files you created.
```

### Expected Result

For a URL such as:

```text
<QUESTION_URL>
```

Codex should create matching files like:

```text
problems/03_aggregation_grouping/028_question_title_in_snake_case.md
solutions/03_aggregation_grouping/028_question_title_in_snake_case.sql
```

The `.sql` file should be blank so you can solve it later.

## Write the Solution

Open the matching SQL file in `solutions/<category>/` and write your query.

Example:

```text
solutions/03_aggregation_grouping/028_question_title_in_snake_case.sql
```

### Prompt for Codex Help

Use this prompt if you want Codex to guide you without giving away the full answer:

```text
I am solving `solutions/<category>/<numbered_question_title>.sql`.

Please review the matching problem file in `problems/<category>/` and help me reason through the solution step by step. Do not write the final SQL unless I ask for it.
```

Use this prompt if you want Codex to write or fix the solution:

```text
Please solve `problems/<category>/<numbered_question_title>.md` in `solutions/<category>/<numbered_question_title>.sql`.

Follow the style of the existing SQL solution files in this repository, then explain the approach briefly.
```

## Test the Solution

Many competitive SQL platforms validate the query directly on their site. The simplest workflow is:

1. Copy the query from `solutions/<category>/<numbered_question_title>.sql`.
2. Paste it into the original problem page.
3. Run the sample test cases.
4. Submit after the sample output matches.

If you have local sample tables or CSV files in `datasets/`, you can also ask Codex to help create a local test script.

### Prompt for Local Testing

```text
I want to test `solutions/<category>/<numbered_question_title>.sql` locally using the examples in the matching problem file.

Please create a small local test setup using the simplest tool already available in this repository. Include table creation, sample inserts, query execution, and expected output.
```

## Commit and Push

After the problem file and solution file are ready, check your changes:

```bash
git status
git diff
```

Stage the new or updated files:

```bash
git add problems/<category>/<numbered_question_title>.md solutions/<category>/<numbered_question_title>.sql
```

Create a commit:

```bash
git commit -m "Add question title"
```

Push your branch:

```bash
git push
```

### Prompt for Codex to Commit and Push

Use this prompt if you want Codex to handle the git steps:

```text
Please review the current git changes, then create a commit and push it.

Commit message:
Add question title

Before committing:
1. Show me the files that will be included.
2. Do not include unrelated changes.
3. If there are unrelated changes, stop and ask me how to handle them.
```
