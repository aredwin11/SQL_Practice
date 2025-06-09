--Aggregate function
create database CustomerTransactions;
use CustomerTransactions;

CREATE TABLE CustomerTransactions (
    id INT PRIMARY KEY,
    login_device VARCHAR(50),
    customer_name VARCHAR(100),
    ip_address VARCHAR(20),
    product VARCHAR(100),
    amount DECIMAL(10, 2),
    is_placed BIT,
    is_viewed BIT,
    transaction_status VARCHAR(20)
);

INSERT INTO CustomerTransactions VALUES
(1, 'Mobile', 'Ravi', '192.168.1.1', 'Laptop', 50000.00, 1, 0, 'Completed'),
(2, 'Desktop', 'Priya', '192.168.1.2', 'Smartphone', 20000.00, 1, 1, 'Completed'),
(3, 'Tablet', 'Arjun', '192.168.1.3', 'Headphones', 1500.00, 0, 1, 'Failed'),
(4, 'Mobile', 'Meena', '192.168.1.4', 'Shoes', 2500.00, 1, 0, 'Completed'),
(5, 'Desktop', 'Karthik', '192.168.1.5', 'Watch', 5000.00, 1, 1, 'Completed'),
(6, 'Mobile', 'Sowmya', '192.168.1.6', 'Tablet', 15000.00, 1, 1, 'Completed'),
(7, 'Tablet', 'Ramesh', '192.168.1.7', 'Smartphone', 25000.00, 0, 1, 'Failed'),
(8, 'Desktop', 'Divya', '192.168.1.8', 'Laptop', 60000.00, 1, 0, 'Completed'),
(9, 'Mobile', 'Arun', '192.168.1.9', 'Smartwatch', 12000.00, 1, 1, 'Completed'),
(10, 'Tablet', 'Deepa', '192.168.1.10', 'Laptop', 55000.00, 0, 0, 'Pending');

select * from CustomerTransactions

--count()
select count(*) from CustomerTransactions where transaction_status='Completed'
select count(*) from CustomerTransactions where transaction_status='Completed'or  transaction_status='Pending'
select count(*) from CustomerTransactions where transaction_status in('Failed','Pending')

--sum()
select sum(amount) from CustomerTransactions                                                   --returns sum of total amount
select sum(amount) from CustomerTransactions where transaction_status='Completed'              --returns the sum value of trasactions that are compeleted
select sum(amount) from CustomerTransactions where transaction_status in('Failed','Pending')   --returns the sum value of transactions that are pending or failed

--Average()
SELECT AVG(amount) AS avg_amount FROM CustomerTransactions                                                  --returns sum of total amount
SELECT AVG(amount) AS avg_amount FROM CustomerTransactions where transaction_status='Completed'             --returns the sum value of trasactions that are compeleted
SELECT AVG(amount) AS avg_amount FROM CustomerTransactions where transaction_status in('Failed','Pending')  --returns the sum value of transactions that are pending or failed

--Max()
select max(amount) from CustomerTransactions 
select max(amount) from CustomerTransactions CustomerTransactions where transaction_status='Completed'
SELECT max(amount) from CustomerTransactions where transaction_status in('Failed','Pending')

--Min ()
select min(amount) from CustomerTransactions 
select min(amount) from CustomerTransactions CustomerTransactions where transaction_status='Completed'
select min(amount) from CustomerTransactions where transaction_status in('Failed','Pending')