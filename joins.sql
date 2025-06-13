use customerData;

--no join : returning the tables without combining
select * from customerData;
select * from orders;

--inner join
select * from customerData as c
INNER JOIN orders as o on c.id=o.Customer_id

--left join
select customer_name,order_amount from customerData as c
LEFT JOIN orders as o on c.id=o.Customer_id

--Right join
select * from customerData as c
RIGHT JOIN orders as o on c.id=o.Customer_id

--full join
select * from customerData as c
FULL JOIN orders as o on c.id=o.Customer_id

--left anti join
select customer_name,order_amount from customerData as c
LEFT JOIN orders as o on c.id=o.Customer_id
WHERE o.customer_id is NULL

--Right anti join
select * from customerData as c
RIGHT JOIN orders as o on c.id=o.Customer_id
WHERE c.id is NULL

--cross join
SELECT * FROM customerData 
CROSS JOIN orders