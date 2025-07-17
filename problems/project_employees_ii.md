# Problem: Project Employees II

## Table: Project

| Column Name | Type |
|-------------|------|
| project_id  | int  |
| employee_id | int  |

- (project_id, employee_id) is the primary key for this table.
- employee_id is a foreign key to Employee table.
- Each row indicates that the employee with employee_id is working on the project with project_id.

## Table: Employee

| Column Name      | Type    |
|------------------|---------|
| employee_id      | int     |
| name             | varchar |
| experience_years | int     |

- employee_id is the primary key for this table.
- Each row contains information about one employee.

## Task
Write a solution to report all the projects that have the most employees.

Return the result table in any order.

## Example

### Input
Project table:

| project_id  | employee_id |
|-------------|-------------|
| 1           | 1           |
| 1           | 2           |
| 1           | 3           |
| 2           | 1           |
| 2           | 4           |

Employee table:

| employee_id | name   | experience_years |
|-------------|--------|------------------|
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |

### Output
| project_id  |
|-------------|
| 1           |

### Explanation
The first project has 3 employees while the second one has 2.
