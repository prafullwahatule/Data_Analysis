-- ===============================
-- Assignment 3 : University Database
-- ===============================

-- Step 1: Create Database
CREATE DATABASE University;

-- Step 2: Use the Database
USE University;

-- Step 3: Create Student Table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department VARCHAR(50),
    grade INT
);

-- Step 4: Insert Sample Values
INSERT INTO students VALUES
(1, 'John Doe', 'Math', 85),
(2, 'Jane Smith', 'Physics', 92),
(3, 'Alice Johnson', 'Math', 78),
(4, 'Bob Wilson', 'Physics', 89),
(5, 'Eva Brown', 'Chemistry', 95),
(6, 'Mike Davis', 'Math', 80),
(7, 'Sophia White', 'Chemistry', 88),
(8, 'Daniel Lee', 'Physics', 91);