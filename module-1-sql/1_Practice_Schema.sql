-- =========================================
-- STEP 1: Create Database
-- =========================================
CREATE DATABASE fruit_sales_db;

-- Use the newly created database
USE fruit_sales_db;

-- =========================================
-- STEP 2: Create Table
-- =========================================
CREATE TABLE fruit_sales (
    sale_id INT PRIMARY KEY,                 -- Unique sale ID
    fruit_name VARCHAR(50) NOT NULL,         -- Name of the fruit
    quantity INT NOT NULL,                   -- Quantity sold in KG
    price_per_kg DECIMAL(8,2) NOT NULL,      -- Price per KG
    sale_date DATE NOT NULL,                 -- Date of sale
    customer_name VARCHAR(50),               -- Customer name
    city VARCHAR(50)                         -- City of sale
);

-- =========================================
-- STEP 3: Insert 50 Records
-- =========================================
INSERT INTO fruit_sales 
(sale_id, fruit_name, quantity, price_per_kg, sale_date, customer_name, city) 
VALUES
-- Records 1 to 10
(1, 'Apple', 10, 120.00, '2025-08-01', 'Rahul Sharma', 'Pune'),
(2, 'Banana', 25, 40.00, '2025-08-01', 'Neha Patil', 'Mumbai'),
(3, 'Orange', 15, 60.00, '2025-08-02', 'Arjun Verma', 'Nashik'),
(4, 'Mango', 20, 150.00, '2025-08-02', 'Sneha Kulkarni', 'Aurangabad'),
(5, 'Grapes', 18, 90.00, '2025-08-03', 'Amit Joshi', 'Nagpur'),
(6, 'Apple', 8, 120.00, '2025-08-03', 'Priya Desai', 'Pune'),
(7, 'Banana', 30, 35.00, '2025-08-04', 'Rohan Mehta', 'Mumbai'),
(8, 'Papaya', 12, 55.00, '2025-08-04', 'Kavita Jain', 'Pune'),
(9, 'Watermelon', 5, 25.00, '2025-08-05', 'Manoj Kale', 'Kolhapur'),
(10, 'Mango', 22, 145.00, '2025-08-05', 'Isha Khedekar', 'Pune'),

-- Records 11 to 20
(11, 'Apple', 14, 125.00, '2025-08-06', 'Harsh Gupta', 'Mumbai'),
(12, 'Banana', 28, 38.00, '2025-08-06', 'Divya Bhosale', 'Pune'),
(13, 'Orange', 20, 65.00, '2025-08-07', 'Siddharth Rao', 'Nashik'),
(14, 'Mango', 18, 155.00, '2025-08-07', 'Meena Iyer', 'Mumbai'),
(15, 'Grapes', 25, 85.00, '2025-08-08', 'Yashwant Pawar', 'Nagpur'),
(16, 'Papaya', 10, 60.00, '2025-08-08', 'Tanvi Dhavale', 'Aurangabad'),
(17, 'Watermelon', 6, 30.00, '2025-08-09', 'Pooja Dhumal', 'Pune'),
(18, 'Banana', 32, 36.00, '2025-08-09', 'Kiran Salunkhe', 'Mumbai'),
(19, 'Mango', 15, 160.00, '2025-08-10', 'Om Magdum', 'Pune'),
(20, 'Apple', 9, 130.00, '2025-08-10', 'Ekta Ovhal', 'Nagpur'),

-- Records 21 to 30
(21, 'Orange', 12, 62.00, '2025-08-11', 'Sayali Sabale', 'Mumbai'),
(22, 'Papaya', 14, 58.00, '2025-08-11', 'Pranav Dahatonde', 'Pune'),
(23, 'Banana', 20, 37.00, '2025-08-12', 'Vaishnavi Danke', 'Nashik'),
(24, 'Mango', 16, 152.00, '2025-08-12', 'Manvi Kridutta', 'Aurangabad'),
(25, 'Grapes', 19, 95.00, '2025-08-13', 'Rohit Salve', 'Nagpur'),
(26, 'Apple', 7, 128.00, '2025-08-13', 'Sayali Dhore', 'Mumbai'),
(27, 'Orange', 13, 64.00, '2025-08-14', 'Payal Pawar', 'Pune'),
(28, 'Watermelon', 8, 28.00, '2025-08-14', 'Priyanka Kumbhar', 'Aurangabad'),
(29, 'Papaya', 15, 57.00, '2025-08-15', 'Abhishek Wavhal', 'Mumbai'),
(30, 'Banana', 27, 39.00, '2025-08-15', 'Sanskruti', 'Pune'),

-- Records 31 to 40
(31, 'Mango', 21, 150.00, '2025-08-16', 'Mamta Joshi', 'Nagpur'),
(32, 'Apple', 11, 132.00, '2025-08-16', 'Pritwij Sen', 'Mumbai'),
(33, 'Orange', 10, 61.00, '2025-08-17', 'Monalisa Chakraborty', 'Pune'),
(34, 'Grapes', 20, 92.00, '2025-08-17', 'Satyajit Pramanik', 'Nashik'),
(35, 'Papaya', 13, 59.00, '2025-08-18', 'Biswajit Ghosh', 'Aurangabad'),
(36, 'Watermelon', 9, 26.00, '2025-08-18', 'Bishwanath Debnath', 'Pune'),
(37, 'Mango', 17, 158.00, '2025-08-19', 'Anjali Sharma', 'Mumbai'),
(38, 'Banana', 24, 41.00, '2025-08-19', 'Aditi Kulkarni', 'Nagpur'),
(39, 'Apple', 10, 127.00, '2025-08-20', 'Om Vyavhare', 'Pune'),
(40, 'Orange', 18, 63.00, '2025-08-20', 'Mamta Singh', 'Mumbai'),

-- Records 41 to 50
(41, 'Mango', 19, 149.00, '2025-08-21', 'Ravi Shinde', 'Nashik'),
(42, 'Grapes', 22, 88.00, '2025-08-21', 'Kunal Patil', 'Aurangabad'),
(43, 'Banana', 29, 42.00, '2025-08-22', 'Sneha Pawar', 'Pune'),
(44, 'Apple', 12, 126.00, '2025-08-22', 'Anju Devi', 'Mumbai'),
(45, 'Orange', 14, 65.00, '2025-08-23', 'Gitanjali Devi', 'Nagpur'),
(46, 'Watermelon', 7, 27.00, '2025-08-23', 'Harshal Yadav', 'Pune'),
(47, 'Papaya', 16, 56.00, '2025-08-24', 'Shaddan Shaikh', 'Mumbai'),
(48, 'Grapes', 17, 93.00, '2025-08-24', 'Chinmay Patil', 'Aurangabad'),
(49, 'Mango', 20, 151.00, '2025-08-25', 'Deepali Joshi', 'Pune'),
(50, 'Banana', 26, 40.00, '2025-08-25', 'Tejas Deshmukh', 'Mumbai');
