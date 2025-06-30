CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name TEXT,
    city TEXT
);

INSERT INTO Customers VALUES 
(1, 'Alice', 'Chennai'),
(2, 'Bob', 'Delhi'),
(3, 'Charlie', 'Mumbai'),
(4, 'David', 'Kolkata');

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product TEXT,
    amount DECIMAL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders VALUES 
(101, 1, 'Laptop', 50000),
(102, 2, 'Phone', 20000),
(103, 1, 'Mouse', 500),
(104, 3, 'Keyboard', 1500);
