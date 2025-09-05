-- ========================================================
-- Assignment 1 : Database - assignment_01 Practice Questions
-- Table       : employees
-- ========================================================

-- Show all employees
SELECT * 
FROM employees;

-- Q1. Employees with salary greater than $50,000
SELECT * 
FROM employees
WHERE salary > 50000;

-- Q2. Employees hired before 2022-01-01
SELECT * 
FROM employees
WHERE hire_date < '2022-01-01';

-- Q3. Employees with salary between $40,000 and $60,000
SELECT * 
FROM employees
WHERE salary BETWEEN 40000 AND 60000;

-- Q6. Employees whose department is 'IT'
SELECT * 
FROM employees
WHERE department = 'IT';

-- Q7. Employees not working in the 'HR' department
SELECT * 
FROM employees
WHERE department <> 'HR';

-- Q8. Employees with salary equal to $70,000
SELECT * 
FROM employees
WHERE salary = 70000;

-- Q9. Employees hired after 2022-06-01 and not in 'Finance' department
SELECT * 
FROM employees
WHERE hire_date > '2022-06-01'
  AND department <> 'Finance';

-- Q10. Employees with employee_id less than 100
SELECT * 
FROM employees
WHERE employee_id < 100;
