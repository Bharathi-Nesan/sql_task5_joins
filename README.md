# SQL Joins

This repository contains SQL scripts demonstrating the use of various types of joins:

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN

We use two tables: **Customers** and **Orders**.

##  Tables

### Customers
| customer_id | name    | city     |
|-------------|---------|----------|
| 1           | Alice   | Chennai  |
| 2           | Bob     | Delhi    |
| 3           | Charlie | Mumbai   |
| 4           | David   | Kolkata  |

### Orders
| order_id | customer_id | product  | amount |
|----------|--------------|----------|--------|
| 101      | 1            | Laptop   | 50000  |
| 102      | 2            | Phone    | 20000  |
| 103      | 1            | Mouse    | 500    |
| 104      | 3            | Keyboard | 1500   |

---

##  Files

### `create_tables.sql`
Creates and populates the `Customers` and `Orders` tables.

### `inner_join.sql`
5 queries demonstrating **INNER JOIN**.

### `left_join.sql`
5 queries demonstrating **LEFT JOIN**.

### `right_join.sql`
5 queries demonstrating **RIGHT JOIN**.

### `fullouter_join.sql`
5 queries demonstrating **FULL OUTER JOIN**. Includes an emulation using `UNION` for SQLite.

---

##  Recommended Tools

- MySQL Workbench

---

