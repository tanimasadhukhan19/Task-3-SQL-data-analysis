-- =========================================================
-- TASK 3: ECOMMERCE DATABASE
-- Database Creation and Sample Data
-- Tool: Programiz Online SQL Compiler / SQLite
-- =========================================================


-- =========================================================
-- 1. REMOVE OLD TABLES
-- This prevents "table already exists" errors
-- =========================================================

DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Customers;


-- =========================================================
-- 2. CREATE CUSTOMERS TABLE
-- =========================================================

CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT,
    city TEXT
);


-- =========================================================
-- 3. CREATE PRODUCTS TABLE
-- =========================================================

CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    price REAL
);


-- =========================================================
-- 4. CREATE ORDERS TABLE
-- =========================================================

CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product_id INTEGER,
    quantity INTEGER
);


-- =========================================================
-- 5. INSERT CUSTOMER DATA
-- =========================================================

INSERT INTO Customers
(customer_id, customer_name, city)
VALUES
(1, 'Rahul', 'Kolkata'),
(2, 'Priya', 'Delhi'),
(3, 'Amit', 'Mumbai'),
(4, 'Sneha', 'Kolkata'),
(5, 'Riya', 'Chennai');


-- =========================================================
-- 6. INSERT PRODUCT DATA
-- =========================================================

INSERT INTO Products
(product_id, product_name, category, price)
VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Smartphone', 'Electronics', 25000),
(103, 'Headphones', 'Electronics', 2000),
(104, 'Chair', 'Furniture', 5000),
(105, 'Table', 'Furniture', 8000);


-- =========================================================
-- 7. INSERT ORDER DATA
-- =========================================================

INSERT INTO Orders
(order_id, customer_id, product_id, quantity)
VALUES
(1001, 1, 101, 1),
(1002, 2, 102, 2),
(1003, 3, 103, 3),
(1004, 1, 104, 2),
(1005, 4, 105, 1),
(1006, 5, 102, 1),
(1007, 2, 103, 2);


-- =========================================================
-- 8. DISPLAY CUSTOMERS TABLE
-- =========================================================

SELECT *
FROM Customers;


-- =========================================================
-- 9. DISPLAY PRODUCTS TABLE
-- =========================================================

SELECT *
FROM Products;


-- =========================================================
-- 10. DISPLAY ORDERS TABLE
-- =========================================================

SELECT *
FROM Orders;


-- =========================================================
-- END OF DATABASE CREATION
-- =========================================================