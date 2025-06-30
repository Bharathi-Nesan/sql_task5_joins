-- 1. List all customers and their orders (even if no match)
SELECT c.name, o.product
FROM Customers c
FULL OUTER JOIN Orders o ON c.customer_id = o.customer_id;

-- 2. Show unmatched records from both tables
SELECT c.name, o.product
FROM Customers c
FULL OUTER JOIN Orders o ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL OR o.customer_id IS NULL;

-- 3. Get combined list of customer names and products
SELECT c.name, o.product, o.amount
FROM Customers c
FULL OUTER JOIN Orders o ON c.customer_id = o.customer_id;

-- 4. Count how many orders or customers don't match
SELECT 
    COUNT(CASE WHEN c.customer_id IS NULL THEN 1 END) AS unmatched_orders,
    COUNT(CASE WHEN o.customer_id IS NULL THEN 1 END) AS unmatched_customers
FROM Customers c
FULL OUTER JOIN Orders o ON c.customer_id = o.customer_id;

-- 5. Show all records sorted by customer name
SELECT c.name, o.product
FROM Customers c
FULL OUTER JOIN Orders o ON c.customer_id = o.customer_id
ORDER BY c.name;

-- 6. FULL JOIN = LEFT JOIN UNION RIGHT JOIN
SELECT c.name, o.product
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
UNION
SELECT c.name, o.product
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;
