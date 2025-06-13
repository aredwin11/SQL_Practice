create database sales;
use sales;

CREATE TABLE sales_data (
    sales_id INT PRIMARY KEY,
    salesperson_name VARCHAR(100),
    region VARCHAR(50),
    sale_amount DECIMAL(10, 2),
    sale_date DATE
);

INSERT INTO sales_data VALUES
(1, 'Amit', 'North', 5000.00, '2024-01-01'),
(2, 'Amit', 'North', 7000.00, '2024-01-05'),
(3, 'Anjali', 'South', 4000.00, '2024-01-03'),
(4, 'Rahul', 'East', 6500.00, '2024-01-04'),
(5, 'Anjali', 'South', 4000.00, '2024-01-06');
select * from sales_data;


--window functions
--1. Row Number():
select salesperson_name,region,sale_amount,
ROW_NUMBER() OVER(PARTITION BY region ORDER BY sale_amount DESC) AS GrpNum
from sales_data;

--Rank():
select salesperson_name,sale_amount,
RANK() OVER (ORDER BY sale_amount DESC) as ranking
from sales_data;

--DenseRank():
select salesperson_name,sale_amount,
DENSE_RANK() OVER (ORDER BY sale_amount DESC) as ranking
from sales_data;

--PERCENT_RANK():,
select salesperson_name,sale_amount
PERCENT_RANK() OVER (ORDER BY sale_amount DESC) PERCENTAGE
from sales_data;

