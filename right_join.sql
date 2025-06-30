-- 1. List all orders and corresponding customer names
SELECT c.name, o.product
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

-- 2. Show orders placed by unknown (missing) customers
SELECT o.order_id, o.product
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;

-- 3. Count total orders and match with customers
SELECT c.name, COUNT(o.order_id) AS order_count
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

-- 4. Get order IDs, products, and customer cities
SELECT o.order_id, o.product, c.city
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

-- 5. List all orders and customer names sorted by amount
SELECT c.name, o.product, o.amount
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id
ORDER BY o.amount DESC;
