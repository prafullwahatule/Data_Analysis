-- ========================================================
-- Assignment 3 : Sales Database - Practice Questions
-- ========================================================

-- Q1. Total sales amount for each category
SELECT 
    category, 
    SUM(sale_amount) AS total_sales
FROM sales
GROUP BY category;

-- Q2. Categories with more than 10 sales
SELECT 
    category, 
    COUNT(*) AS total_sales_count
FROM sales
GROUP BY category
HAVING COUNT(*) > 10;

-- Q3. Maximum sale amount in each category
SELECT 
    category, 
    MAX(sale_amount) AS max_sale
FROM sales
GROUP BY category;

-- Q4. Categories with an average sale amount below 50
SELECT 
    category, 
    AVG(sale_amount) AS avg_sales
FROM sales
GROUP BY category
HAVING AVG(sale_amount) < 50;

-- Q5. How many sales does each product have?
SELECT 
    product_name, 
    COUNT(*) AS total_sales
FROM sales
GROUP BY product_name;

-- Q6. Products with more than 5 sales
SELECT 
    product_name, 
    COUNT(*) AS total_sales
FROM sales
GROUP BY product_name
HAVING COUNT(*) > 5;

-- Q7. Average sale amount for products with more than 2 sales
SELECT 
    product_name, 
    AVG(sale_amount) AS avg_sale, 
    COUNT(*) AS total_sales
FROM sales
GROUP BY product_name
HAVING COUNT(*) > 2;

-- Q8. Products with the highest sale amount above 100
SELECT 
    product_name, 
    MAX(sale_amount) AS highest_sale
FROM sales
GROUP BY product_name
HAVING MAX(sale_amount) > 100;

-- Q9. Product with the highest total sales amount
SELECT 
    product_name, 
    SUM(sale_amount) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 1;

-- Q10. Categories with a total sales amount above 800
SELECT 
    category, 
    SUM(sale_amount) AS total_sales
FROM sales
GROUP BY category
HAVING SUM(sale_amount) > 800;

-- Q11. Average sale amount for each month
SELECT 
    DATE_FORMAT(sale_date, '%Y-%m') AS month, 
    AVG(sale_amount) AS avg_sale
FROM sales
GROUP BY DATE_FORMAT(sale_date, '%Y-%m');

-- Q12. Products with the highest sale amount in each category
SELECT 
    category, 
    product_name, 
    sale_amount
FROM sales s
WHERE sale_amount = (
    SELECT MAX(s2.sale_amount) 
    FROM sales s2 
    WHERE s2.category = s.category
);

-- Q13. Number of sales in each month
SELECT 
    DATE_FORMAT(sale_date, '%Y-%m') AS month, 
    COUNT(*) AS total_sales
FROM sales
GROUP BY DATE_FORMAT(sale_date, '%Y-%m');

-- Q14. Months with more than 5 sales
SELECT 
    DATE_FORMAT(sale_date, '%Y-%m') AS month, 
    COUNT(*) AS total_sales
FROM sales
GROUP BY DATE_FORMAT(sale_date, '%Y-%m')
HAVING COUNT(*) > 5;

-- Q15. Average sale amount for each product category 
--      in months with more than 3 sales
SELECT 
    category, 
    DATE_FORMAT(sale_date, '%Y-%m') AS month, 
    AVG(sale_amount) AS avg_sale
FROM sales
GROUP BY category, DATE_FORMAT(sale_date, '%Y-%m')
HAVING COUNT(*) > 3;
