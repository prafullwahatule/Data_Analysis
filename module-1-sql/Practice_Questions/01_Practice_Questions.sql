-- ============================================================
-- Step 2: 50 SQL Practice Questions for fruit_sales_db
-- ============================================================

-- ========================
-- INSERT (1–10)
-- ========================

SELECT * FROM fruit_sales;

-- Q1. Insert a new record for 5 kg of Mango sold in Pune at 160 per kg.
INSERT INTO fruit_sales (sale_id, fruit_name, quantity, price_per_kg, sale_date, customer_name, city)
VALUES (51, 'Mango', 5, 160.00, CURDATE(), 'Unknown', 'Pune');

-- Q2. Insert a sale of 12 kg Papaya in Mumbai at 55 per kg.
INSERT INTO fruit_sales
VALUES (52, 'Papaya', 12, 55.00, CURDATE(), 'Unknown', 'Mumbai');

-- Q3. Insert a sale of 10 kg Grapes in Nagpur at 90 per kg.
INSERT INTO fruit_sales
VALUES (53, 'Grapes', 10, 90.00, CURDATE(), 'Unknown', 'Nagpur');

-- Q4. Add a sale of 20 kg Oranges in Aurangabad at 65 per kg.
INSERT INTO fruit_sales
VALUES (54, 'Oranges', 20, 65.00, CURDATE(), 'Unknown', 'Aurangabad');

-- Q5. Insert 15 kg of Watermelon sold in Pune at 30 per kg.
INSERT INTO fruit_sales
VALUES (55, 'Watermelon', 15, 30.00, CURDATE(), 'Unknown', 'Pune');

-- Q6. Insert 8 kg Apples sold in Nashik at 125 per kg.
INSERT INTO fruit_sales
VALUES (56, 'Apples', 8, 125.00, CURDATE(), 'Unknown', 'Nashik');

-- Q7. Add 10 kg Bananas sold in Mumbai at 38 per kg.
INSERT INTO fruit_sales
VALUES (57, 'Bananas', 10, 38.00, CURDATE(), 'Unknown', 'Mumbai');

-- Q8. Insert a Mango sale of 25 kg in Nagpur at 155 per kg.
INSERT INTO fruit_sales
VALUES (58, 'Mango', 25, 155.00, CURDATE(), 'Unknown', 'Nagpur');

-- Q9. Insert 9 kg Papaya sold in Aurangabad at 60 per kg.
INSERT INTO fruit_sales
VALUES (59, 'Papaya', 9, 60.00, CURDATE(), 'Unknown', 'Aurangabad');

-- Q10. Insert 11 kg Oranges in Pune at 63 per kg.
INSERT INTO fruit_sales
VALUES (60, 'Oranges', 11, 63.00, CURDATE(), 'Unknown', 'Pune');


-- ========================
-- SELECT with WHERE (11–20)
-- ========================

-- Q11. Select all sales where fruit_name is Mango.
SELECT * FROM fruit_sales
WHERE fruit_name = 'Mango';

-- Q12. Find sales where price_per_kg > 100.
SELECT * FROM fruit_sales
WHERE price_per_kg > 100;

-- Q13. Show all sales from Pune.
SELECT * FROM fruit_sales
WHERE city = 'Pune';

-- Q14. Retrieve sales of Bananas in Mumbai.
SELECT * FROM fruit_sales
WHERE fruit_name = 'Bananas' AND city = 'Mumbai';

-- Q15. Display sales made on '2025-08-10'.
SELECT * FROM fruit_sales
WHERE sale_date = '2025-08-10';

-- Q16. Find all sales where quantity > 20.
SELECT * FROM fruit_sales
WHERE quantity > 20;

-- Q17. Show sales where city = 'Nagpur' and fruit_name = 'Apples'.
SELECT * FROM fruit_sales
WHERE city = 'Nagpur' AND fruit_name = 'Apples';

-- Q18. Select all Watermelon sales.
SELECT * FROM fruit_sales
WHERE fruit_name = 'Watermelon';

-- Q19. Find records where price_per_kg < 50.
SELECT * FROM fruit_sales
WHERE price_per_kg < 50;

-- Q20. Show all sales made by customer 'Vaishnavi Danke'.
SELECT * FROM fruit_sales
WHERE customer_name = 'Vaishnavi Danke';


-- ========================
-- GROUP BY / Aggregation (21–30)
-- ========================

-- Q21. Find the total quantity of fruits sold grouped by fruit_name.
SELECT fruit_name, SUM(quantity) AS total_quantity
FROM fruit_sales
GROUP BY fruit_name;

-- Q22. Find the average price per kg for each fruit.
SELECT fruit_name, AVG(price_per_kg) AS avg_price
FROM fruit_sales
GROUP BY fruit_name;

-- Q23. Find the maximum quantity sold for each fruit.
SELECT fruit_name, MAX(quantity) AS max_quantity
FROM fruit_sales
GROUP BY fruit_name;

-- Q24. Count how many sales records exist for each city.
SELECT city, COUNT(*) AS total_sales
FROM fruit_sales
GROUP BY city;

-- Q25. Find the minimum price per kg for each fruit.
SELECT fruit_name, MIN(price_per_kg) AS min_price
FROM fruit_sales
GROUP BY fruit_name;

-- Q26. Show average quantity sold grouped by city.
SELECT city, AVG(quantity) AS avg_quantity
FROM fruit_sales
GROUP BY city;

-- Q27. Find total sales (quantity × price_per_kg) grouped by fruit_name.
SELECT fruit_name, SUM(quantity * price_per_kg) AS total_sales
FROM fruit_sales
GROUP BY fruit_name;

-- Q28. Calculate total revenue for Mango sales.
SELECT fruit_name, SUM(quantity * price_per_kg) AS total_revenue
FROM fruit_sales
WHERE fruit_name = 'Mango';

-- Q29. Show number of sales per day.
SELECT sale_date, COUNT(*) AS sales_per_day
FROM fruit_sales
GROUP BY sale_date;

-- Q30. Find the highest and lowest price of Apples sold.
SELECT fruit_name, MAX(price_per_kg) AS max_price, MIN(price_per_kg) AS min_price
FROM fruit_sales
WHERE fruit_name = 'Apples';


-- ========================
-- UPDATE (31–40)
-- ========================

-- Q31. Update price_per_kg to 135 for Apples in Pune.
UPDATE fruit_sales
SET price_per_kg = 135
WHERE city = 'Pune' AND fruit_name = 'Apples';

-- Q32. Increase price_per_kg by 10 for all Mango sales.
UPDATE fruit_sales
SET price_per_kg = price_per_kg + 10
WHERE fruit_name = 'Mango';

-- Q33. Update city to 'Thane' where city = 'Mumbai'.
UPDATE fruit_sales
SET city = 'Thane'
WHERE city = 'Mumbai';

-- Q34. Change customer_name to 'Updated Customer' for sale_id = 5.
UPDATE fruit_sales
SET customer_name = 'Updated Customer'
WHERE sale_id = 5;

-- Q35. Update quantity to 20 where fruit_name = 'Papaya' and city = 'Aurangabad'.
UPDATE fruit_sales
SET quantity = 20
WHERE fruit_name = 'Papaya' AND city = 'Aurangabad';

-- Q36. Increase price by 5% for all Oranges sales.
UPDATE fruit_sales
SET price_per_kg = price_per_kg * 1.05
WHERE fruit_name = 'Oranges';

-- Q37. Update sale_date to '2025-09-01' for Bananas sales in Pune.
UPDATE fruit_sales
SET sale_date = '2025-09-01'
WHERE fruit_name = 'Bananas' AND city = 'Pune';

-- Q38. Set quantity = 50 for sale_id = 30.
UPDATE fruit_sales
SET quantity = 50
WHERE sale_id = 30;

-- Q39. Update price_per_kg to 100 for Grapes in Nagpur.
UPDATE fruit_sales
SET price_per_kg = 100
WHERE city = 'Nagpur' AND fruit_name = 'Grapes';

-- Q40. Reduce quantity by 2 for all Watermelon sales.
UPDATE fruit_sales
SET quantity = quantity - 2
WHERE fruit_name = 'Watermelon';


-- ========================
-- DELETE (41–50)
-- ========================

SET SQL_SAFE_UPDATES = 0;
SELECT * FROM fruit_sales;

-- Q41. Delete record where sale_id = 10.
DELETE FROM fruit_sales
WHERE sale_id = 10;

-- Q42. Delete all sales where quantity < 10.
DELETE FROM fruit_sales
WHERE quantity < 10;

-- Q43. Delete Mango sales from Nagpur.
DELETE FROM fruit_sales
WHERE fruit_name = 'Mango' AND city = 'Nagpur';

-- Q44. Remove all Bananas sales from Pune.
DELETE FROM fruit_sales
WHERE fruit_name = 'Bananas' AND city = 'Pune';

-- Q45. Delete sales with price_per_kg > 150.
DELETE FROM fruit_sales
WHERE price_per_kg > 150;

-- Q46. Delete records where city = 'Aurangabad'.
DELETE FROM fruit_sales
WHERE city = 'Aurangabad';

-- Q47. Delete all Papaya sales.
DELETE FROM fruit_sales
WHERE fruit_name = 'Papaya';

-- Q48. Remove sales where sale_date < '2025-08-10'.
DELETE FROM fruit_sales
WHERE sale_date < '2025-08-10';

-- Q49. Delete all Watermelon sales in Pune.
DELETE FROM fruit_sales
WHERE fruit_name = 'Watermelon' AND city = 'Pune';

-- Q50. Delete sales made by customer 'Sanskruti'.
DELETE FROM fruit_sales
WHERE customer_name = 'Sanskruti';
