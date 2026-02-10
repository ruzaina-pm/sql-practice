-- Create departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    dept_id INT
);

-- Insert data into departments
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

-- Insert data into employees
INSERT INTO employees VALUES
(1, 'Asha', 50000, 1),
(2, 'Ravi', 45000, 2),
(3, 'Aman', 40000, NULL);
