-- 1. List customer names and their ordered products
SELECT c.name, o.product 
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;

-- 2. Get total amount spent by each customer
SELECT c.name, SUM(o.amount) AS total_spent
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

-- 3. Get orders with customer details who ordered 'Laptop'
SELECT c.name, o.product, o.amount
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.product = 'Laptop';

-- 4. Find customers who made more than 1 order
SELECT c.name, COUNT(o.order_id) AS order_count
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING order_count > 1;

-- 5. Get city and product for each order
SELECT c.city, o.product
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;
