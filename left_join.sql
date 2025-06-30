-- 1. List all customers and their orders if any
SELECT c.name, o.product
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

-- 2. Show customers who haven't placed any orders
SELECT c.name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 3. Show total orders and total amount per customer (including 0)
SELECT c.name, COUNT(o.order_id) AS orders, COALESCE(SUM(o.amount), 0) AS total
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

-- 4. List customers and the products they ordered or NULL
SELECT c.name, o.product
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

-- 5. Get customer cities and total spent
SELECT c.city, SUM(o.amount) AS total_spent
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.city;
