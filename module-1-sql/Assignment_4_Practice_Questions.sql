-- ========================================================
-- Assignment 4 : University Database - Practice Questions
-- Table       : students
-- ========================================================

-- Q1. Average grade in each department
SELECT 
    department, 
    AVG(grade) AS avg_grade
FROM students
GROUP BY department;

-- Q2. Departments with more than 2 students
SELECT 
    department, 
    COUNT(*) AS total_students
FROM students
GROUP BY department
HAVING COUNT(*) > 2;

-- Q3. Highest grade in each department
SELECT 
    department, 
    MAX(grade) AS highest_grade
FROM students
GROUP BY department;

-- Q4. Departments where the average grade is below 85
SELECT 
    department, 
    AVG(grade) AS avg_grade
FROM students
GROUP BY department
HAVING AVG(grade) < 85;

-- Q5. Number of students in each grade
SELECT 
    grade, 
    COUNT(*) AS total_students
FROM students
GROUP BY grade;

-- Q6. Grades with more than 1 student
SELECT 
    grade, 
    COUNT(*) AS total_students
FROM students
GROUP BY grade
HAVING COUNT(*) > 1;

-- Q7. Average grade for grades that have more than 1 student
SELECT 
    grade,
    AVG(grade) AS avg_grade, 
    COUNT(*) AS total_students
FROM students
GROUP BY grade
HAVING COUNT(*) > 1;
