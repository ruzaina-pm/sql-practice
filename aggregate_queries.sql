-- Count total employees
SELECT COUNT(*) FROM employees;

-- Total salary by department
SELECT department, SUM(salary)
FROM employees
GROUP BY department;

-- Average salary greater than 40000
SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 40000;

-- Maximum salary
SELECT MAX(salary) FROM employees;

-- Minimum salary
SELECT MIN(salary) FROM employees;
