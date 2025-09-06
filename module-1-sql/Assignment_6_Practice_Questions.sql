/* =======================================================
   📌 Assignment 6 – Employee Table Practice Queries
   Database : SampleDB
   ======================================================= */

SET SQL_SAFE_UPDATES = 0;

------------------------------------------------------------
-- 🔹 UPDATE Queries
------------------------------------------------------------

-- Q1. Update John Doe's salary to 55000.
UPDATE employee
SET Salary = 55000
WHERE FirstName = 'John' AND LastName = 'Doe';

-- Q2. Increase all employees' salaries by 10%.
UPDATE employee
SET Salary = Salary * 1.10;

-- Q3. Update salaries below 55000 → set to 55000.
UPDATE employee
SET Salary = 55000
WHERE Salary < 55000;

-- Q4. Update Jane Smith's last name to 'Johnson'.
UPDATE employee
SET LastName = 'Johnson'
WHERE FirstName = 'Jane' AND LastName = 'Smith';

-- Q5. Double salary where EmployeeID > 15.
UPDATE employee
SET Salary = Salary * 2
WHERE EmployeeID > 15;


------------------------------------------------------------
-- 🔹 DELETE Queries
------------------------------------------------------------

-- Q1. Delete employee with EmployeeID = 10.
DELETE FROM employee
WHERE EmployeeID = 10;

-- Q2. Delete employees with salary < 40000.
DELETE FROM employee
WHERE Salary < 40000;

-- Q3. Delete all rows (⚠️ careful).
DELETE FROM employee;        -- SLOW
TRUNCATE TABLE employee;     -- FAST

-- Q4. Delete employees whose last name starts with 'A'.
DELETE FROM employee
WHERE LastName LIKE 'A%';

-- Q5. Delete employees with even EmployeeID.
DELETE FROM employee
WHERE EmployeeID % 2 = 0;


------------------------------------------------------------
-- 🔹 HOMEWORK (Update / Delete / Retrieve)
------------------------------------------------------------

-- Q1. Update salary = 60000 where LastName contains 'son'.
UPDATE employee
SET Salary = 60000
WHERE LastName LIKE '%son%';

-- Q2. Update salary = 58000 where LastName = 'Evans'.
UPDATE employee
SET Salary = 58000
WHERE LastName = 'Evans';

-- Q3. Delete employees with salary between 60000 and 70000.
DELETE FROM employee
WHERE Salary BETWEEN 60000 AND 70000;

-- Q4. Update last name 'Lee' → 'Lewis'.
UPDATE employee
SET LastName = 'Lewis'
WHERE LastName = 'Lee';

-- Q5. Delete employees whose last name ends with 'son'.
DELETE FROM employee
WHERE LastName LIKE '%son';

-- Q6. Retrieve employees with FirstName containing 'a' AND LastName containing 'o'.
SELECT *
FROM employee
WHERE FirstName LIKE '%a%' AND LastName LIKE '%o%';


------------------------------------------------------------
-- 🔹 SCHEMA MODIFICATION Queries
   ⚠️ Order adjusted so later constraints work fine
------------------------------------------------------------

-- Q1. Add new column 'Birthdate'.
ALTER TABLE employee
ADD COLUMN Birthdate DATE;

-- Q2. Rename 'FirstName' → 'First_Name'.
ALTER TABLE employee
RENAME COLUMN FirstName TO First_Name;

-- Q3. Add new column 'Department'.
ALTER TABLE employee
ADD COLUMN Department VARCHAR(50);

-- Q4. Rename 'Birthdate' → 'DOB'.
ALTER TABLE employee
RENAME COLUMN Birthdate TO DOB;

-- (⚠️ DROP statements moved at end so constraints work first)


------------------------------------------------------------
-- 🔹 CONSTRAINT & DATATYPE MODIFICATION Queries
------------------------------------------------------------

-- Q1. Change First_Name datatype → VARCHAR(100).
ALTER TABLE employee
MODIFY COLUMN First_Name VARCHAR(100);

-- Q2. Modify Salary → DECIMAL(12,2).
ALTER TABLE employee
MODIFY COLUMN Salary DECIMAL(12,2);

-- Q3. Add NOT NULL to LastName.
ALTER TABLE employee
MODIFY COLUMN LastName VARCHAR(50) NOT NULL;

-- Q4. Add UNIQUE constraint on First_Name.
ALTER TABLE employee
ADD UNIQUE (First_Name);

-- Q5. Make Department mandatory (NOT NULL).
ALTER TABLE employee
MODIFY COLUMN Department VARCHAR(50) NOT NULL;


------------------------------------------------------------
-- 🔹 (Optional) DROP Columns
--  Run only if needed, else skip to avoid dependency errors
------------------------------------------------------------

-- Drop Salary column
-- ALTER TABLE employee DROP COLUMN Salary;

-- Drop LastName column
-- ALTER TABLE employee DROP COLUMN LastName;
