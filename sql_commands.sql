--DDL
--Create and use database
CREATE DATABASE dml_practice;
USE dml_practice;

-- Create tables and indexes
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept VARCHAR(50),
    salary DECIMAL(10,2)
);

--Inserting the values
INSERT INTO employees (emp_id, emp_name, dept, salary) VALUES
(1, 'Alice', 'Engineering', 70000.00),
(2, 'Bob', 'HR', 50000.00),
(3, 'Charlie', 'Sales', 60000.00);

-- View all data (SELECT)
SELECT * FROM employees;

--ALTER - Add a new column for email
ALTER TABLE employees ADD email VARCHAR(100)

-- View the changes
SELECT * FROM employees;

--DML 
--Update salary of Bob
UPDATE employees SET salary = 55000 WHERE emp_name = 'Bob';

--View data after update
SELECT * FROM employees;

--Delete Charlie from table (DELETE)
DELETE FROM employees WHERE emp_name = 'Charlie';

--View data after delete
SELECT * FROM employees;

--Truncate
TRUNCATE TABLE employees;

--View data after delete
SELECT * FROM employees;