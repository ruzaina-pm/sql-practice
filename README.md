# sql-practice

This repository contains my SQL learning and practice work.

## Topics Covered
- SELECT, WHERE
- AND/OR 
- ORDER BY, LIMIT
- COUNT, SUM, AVG, MAX, MIN
- GROUP BY, HAVING
- JOINS (INNER, LEFT, RIGHT)

## Sample Database
- Employees table
- Departments table

This repository is regularly updated as I learn more SQL.

## Sample Queries

### 1. Employees earning above 40000
```sql
SELECT name, salary
FROM employees
WHERE salary > 40000;
```

### 2. Average Salary by Department
```sql
SELECT department, AVG(salary)
FROM employees
GROUP BY department;
```

### 3. Join Example
```sql
SELECT e.name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;
```
## Skills Demonstrated
- Database Design
- Writing SQL Queries
- Aggregate Functions
- GROUP BY & HAVING
- JOINS (INNER, LEFT, RIGHT)
- Filtering & Sorting Data
