create database customerData;
use customerData;

CREATE TABLE CustomerData (
    id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(200),
    amount DECIMAL(10, 2)
);

INSERT INTO CustomerData VALUES
(1, 'Ravi', 'ravi@example.com', '98765', 'Chennai', 5000.00),
(2, 'Priya', NULL, '98765', 'Bangalore', NULL),
(3, 'Arjun', 'arjun@example.com', NULL, 'Hyderabad', 1500.00),
(4, 'Meena', NULL, NULL, 'Mumbai', 2500.00),
(5, 'Karthik', 'karthik@example.com', '98765', NULL, 3000.00);
select * from customerData

--case when condition:
--example-1 : if any customer email is none then we'll replace it with their phone number
select 
customer_name,
         case
            when email is null then phone_number
            else email
         end as contact_missing
from customerData

--example-2: 
select 
customer_name,
amount,
case
    when amount >4000 then 'hard spender'
    when amount BETWEEN 2000 AND 3000 then 'moderate spender'
    when amount<2000 then 'low spender'
    when amount is null then 'new customer'
    else 'no data found'
end as test
from customerData


--NUll handling
select
customer_name,
email,
phone_number,
address,
amount
from customerData 
where 
email is NULL
or phone_number is NULL
or address is Null
or amount  is NULL;

--handling null using coalesce()
select
customer_name,
amount,
coalesce(amount,0.00)
from customerData 

--handling null using coalesce()
select
customer_name,
amount,
ISNULL (amount,'0.00')
from customerData 