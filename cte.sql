use practice2;

--Total amount spent by each customer
WITH TotalAmount AS (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM Orders
    GROUP BY customer_id
)
SELECT c.customer_name, t.total_spent
FROM Customers c
JOIN TotalAmount t ON c.customer_id = t.customer_id;
