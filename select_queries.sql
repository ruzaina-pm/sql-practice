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

-- Count total number of employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- Find average salary of all employees
SELECT AVG(salary) AS average_salary
FROM employees;

-- Find maximum salary
SELECT MAX(salary) AS max_salary
FROM employees;

-- Find minimum salary
SELECT MIN(salary) AS min_salary
FROM employees;

-- Total salary paid to all employees
SELECT SUM(salary) AS total_salary
FROM employees;

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

-- Average salary department-wise
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.dept_id
GROUP BY d.dept_name;

-- Count employees in each department
SELECT d.dept_name, COUNT(e.id) AS employee_count
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.dept_id
GROUP BY d.dept_name;

-- Departments having more than 1 employee
SELECT d.dept_name, COUNT(e.id) AS employee_count
FROM employees e
INNER JOIN departments d
ON e.department_id = d.dept_id
GROUP BY d.dept_name
HAVING COUNT(e.id) > 1;
