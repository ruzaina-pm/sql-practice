-- Basic SELECT: get all employees
SELECT * 
FROM employees;

-- Select specific columns
SELECT name, salary
FROM employees;

-- WHERE condition
SELECT name, salary
FROM employees
WHERE salary > 40000;

-- AND condition
SELECT name, salary
FROM employees
WHERE department_id = 1 AND salary >= 45000;

-- OR condition
SELECT name, salary
FROM employees
WHERE salary >= 50000 OR department_id = 2;

-- ORDER BY salary (highest first)
SELECT name, salary
FROM employees
ORDER BY salary DESC;

-- INNER JOIN: employees with their department names
SELECT e.name, e.salary, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.dept_id;

-- LEFT JOIN: all employees even if department is NULL
SELECT e.name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.dept_id;

-- RIGHT JOIN: all departments even if no employees
SELECT e.name, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.dept_id;
