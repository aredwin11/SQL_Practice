create database practice;
use practice;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName  VARCHAR(50),
    LastName   VARCHAR(50),
    Salary     DECIMAL(10,2),
    Department VARCHAR(50)
);

-- Insert sample data into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Salary, Department)
VALUES
    (1, 'Alice', 'Johnson', 55000.00, 'Sales'),
    (2, 'Bob',   'Smith',   60000.00, 'IT'),
    (3, 'Carol', 'Davis',   52000.00, 'Sales'),
    (4, 'Dave',  'Wilson',  58000.00, 'HR');

select * from Employees

-- Create a view that shows only employees in the Sales department
CREATE VIEW SalesEmployees AS
SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
WHERE Department = 'Sales';

-- Now, you can query the view like a table:
SELECT * FROM SalesEmployees;