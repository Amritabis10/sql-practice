# sql-practice

A collection of SQL problems and solutions for regular practice, covering a range of topics from basic queries to advanced database concepts. Perfect for improving SQL skills and preparing for interviews.

## Repository Layout

- `problems/`: Markdown files with problem statements.
- `solutions/`: SQL files with one solution per problem.
- `datasets/`: Optional sample data for local testing.

Use the same snake_case name for the problem and solution files.

Example:

- `problems/second_highest_salary.md`
- `solutions/second_highest_salary.sql`

## Add a New Problem From a URL

Use this workflow when adding a question from LeetCode, HackerRank, StrataScratch, DataLemur, or another competitive SQL site.

### Prompt for Codex

Copy this prompt into Codex and replace `<QUESTION_URL>` with the problem link:

```text
I want to add another SQL question under `problems/` following the same format as the other questions in this repository.

Question link: <QUESTION_URL>

Please:
1. Read the existing files in `problems/` and match the repository format.
2. Create a new markdown problem file using a snake_case filename based on the question title.
3. Include the problem title, difficulty if available, table schema, task description, examples, and explanation.
4. Create a matching blank SQL solution file under `solutions/` with the same snake_case name.
5. Do not write the SQL solution yet.
6. Show me the files you created.
```

### Expected Result

For a URL such as:

```text
<QUESTION_URL>
```

Codex should create:

```text
problems/question_title_in_snake_case.md
solutions/question_title_in_snake_case.sql
```

The `.sql` file should be blank so you can solve it later.

## Write the Solution

Open the matching SQL file in `solutions/` and write your query.

Example:

```text
solutions/question_title_in_snake_case.sql
```

### Prompt for Codex Help

Use this prompt if you want Codex to guide you without giving away the full answer:

```text
I am solving `solutions/question_title_in_snake_case.sql`.

Please review the problem in `problems/question_title_in_snake_case.md` and help me reason through the solution step by step. Do not write the final SQL unless I ask for it.
```

Use this prompt if you want Codex to write or fix the solution:

```text
Please solve `problems/question_title_in_snake_case.md` in `solutions/question_title_in_snake_case.sql`.

Follow the style of the existing SQL solution files in this repository, then explain the approach briefly.
```

## Test the Solution

Many competitive SQL platforms validate the query directly on their site. The simplest workflow is:

1. Copy the query from `solutions/question_title_in_snake_case.sql`.
2. Paste it into the original problem page.
3. Run the sample test cases.
4. Submit after the sample output matches.

If you have local sample tables or CSV files in `datasets/`, you can also ask Codex to help create a local test script.

### Prompt for Local Testing

```text
I want to test `solutions/question_title_in_snake_case.sql` locally using the examples in `problems/question_title_in_snake_case.md`.

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
git add problems/question_title_in_snake_case.md solutions/question_title_in_snake_case.sql
```

Create a commit:

```bash
git commit -m "Add question title in snake case"
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
Add question_title_in_snake_case

Before committing:
1. Show me the files that will be included.
2. Do not include unrelated changes.
3. If there are unrelated changes, stop and ask me how to handle them.
```
