use customerData;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT ,
    order_amount DECIMAL(10, 2),
    order_date DATE
);

-- Insert values into the 'orders' table
INSERT INTO orders (order_id, customer_id, order_amount, order_date) VALUES
(101, 1, 5000.00, '2025-01-01'),
(102, 2, 10000.00, '2025-01-02'),
(103, 3, 3000.00, '2025-01-03'),
(104, 4, 1500.00, '2025-01-04'),
(105, 1, 7000.00, '2025-01-05'),
(106, 5, 8000.00, '2025-01-06');

select * from orders

--subquery
select customer_name,
(select max(order_amount)from orders) as max_amount
from customerData

--subquery with where condition along with IN
SELECT customer_name
FROM CustomerData
WHERE id IN (
    SELECT DISTINCT customer_id
    FROM Orders
    WHERE order_amount > 5000
);


--where condition with exists
SELECT customer_name
FROM CustomerData
WHERE EXISTS (
    SELECT 1
    FROM Orders
    WHERE Orders.customer_id = CustomerData.id
    AND order_date >= '2025-01-05'
);
