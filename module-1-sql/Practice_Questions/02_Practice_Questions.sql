-- ========================================================
-- 🚍 Bus Reservation System - 50 Practice Questions
-- ========================================================

-- ========================================================
-- 🔹 Insert Queries (1–5)
-- ========================================================

-- Q1. Insert a new bus from Pune to Goa
INSERT INTO bus_data (bus_id, bus_number, source, destination, departure_time, arrival_time, fare, seats_available)
VALUES (51, 'MH12AB2001', 'Pune', 'Goa', '18:00:00', '06:00:00', 1550.00, 45);

-- Q2. Insert a new bus from Mumbai to Nagpur
INSERT INTO bus_data (bus_id, bus_number, source, destination, departure_time, arrival_time, fare, seats_available)
VALUES (52, 'MH12AB2002', 'Mumbai', 'Nagpur', '19:30:00', '08:00:00', 1300.00, 50);

-- Q3. Insert a new bus from Nashik to Mumbai
INSERT INTO bus_data (bus_id, bus_number, source, destination, departure_time, arrival_time, fare, seats_available)
VALUES (53, 'MH12AB2003', 'Nashik', 'Mumbai', '06:00:00', '09:30:00', 420.00, 40);

-- Q4. Insert a new bus from Aurangabad to Indore
INSERT INTO bus_data (bus_id, bus_number, source, destination, departure_time, arrival_time, fare, seats_available)
VALUES (54, 'MH12AB2004', 'Aurangabad', 'Indore', '20:30:00', '05:00:00', 1050.00, 42);

-- Q5. Insert a new bus from Nagpur to Pune
INSERT INTO bus_data (bus_id, bus_number, source, destination, departure_time, arrival_time, fare, seats_available)
VALUES (55, 'MH12AB2005', 'Nagpur', 'Pune', '20:00:00', '08:00:00', 1220.00, 44);


-- ========================================================
-- 🔹 Simple Select Queries (6–15)
-- ========================================================

-- Q6. Select all buses that travel from Pune to Mumbai
SELECT * 
FROM bus_data
WHERE source = 'Pune' AND destination = 'Mumbai';

-- Q7. Select all buses where fare is greater than 1000
SELECT * 
FROM bus_data
WHERE fare > 1000;

-- Q8. Select buses with seats_available less than 40
SELECT * 
FROM bus_data
WHERE seats_available < 40;

-- Q9. Select all buses where destination is Goa
SELECT * 
FROM bus_data
WHERE destination = 'Goa';

-- Q10. Select all buses starting from Nagpur
SELECT * 
FROM bus_data
WHERE source = 'Nagpur';

-- Q11. Select buses that depart before 07:00:00
SELECT * 
FROM bus_data
WHERE departure_time < '07:00:00';

-- Q12. Select buses that arrive after 08:00:00
SELECT * 
FROM bus_data
WHERE arrival_time > '08:00:00';

-- Q13. Select all buses with fare between 400 and 700
SELECT * 
FROM bus_data
WHERE fare BETWEEN 400 AND 700;

-- Q14. Select buses where source = Mumbai and destination = Nagpur
SELECT * 
FROM bus_data
WHERE source = 'Mumbai' AND destination = 'Nagpur';

-- Q15. Select all unique destinations from the table
SELECT DISTINCT destination 
FROM bus_data;


-- ========================================================
-- 🔹 Filtering & Ordering (16–25)
-- ========================================================

-- Q16. Select top 5 cheapest buses from Pune to Mumbai
SELECT * 
FROM bus_data
WHERE source = 'Pune' AND destination = 'Mumbai'
ORDER BY fare ASC
LIMIT 5;

-- Q17. Select buses ordered by fare in descending order
SELECT * 
FROM bus_data
ORDER BY fare DESC;

-- Q18. Select buses ordered by departure_time ascending
SELECT * 
FROM bus_data
ORDER BY departure_time ASC;

-- Q19. Select buses with destination = Nagpur and sort by fare ascending
SELECT * 
FROM bus_data
WHERE destination = 'Nagpur'
ORDER BY fare ASC;

-- Q20. Select buses with source = Nashik and seats_available > 35
SELECT * 
FROM bus_data
WHERE source = 'Nashik' AND seats_available > 35;

-- Q21. Select buses where fare < 500 and seats_available > 40
SELECT * 
FROM bus_data
WHERE fare < 500 AND seats_available > 40;

-- Q22. Select buses with departure_time between 06:00:00 and 09:00:00
SELECT * 
FROM bus_data
WHERE departure_time BETWEEN '06:00:00' AND '09:00:00';

-- Q23. Select buses where source = Goa and destination = Pune
SELECT * 
FROM bus_data
WHERE source = 'Goa' AND destination = 'Pune';

-- Q24. Select buses with destination = Hyderabad and fare > 1200
SELECT * 
FROM bus_data
WHERE destination = 'Hyderabad' AND fare > 1200;

-- Q25. Select the maximum fare from Pune to Goa
SELECT MAX(fare) 
FROM bus_data
WHERE source = 'Pune' AND destination = 'Goa';


-- ========================================================
-- 🔹 Aggregate Queries (26–35)
-- ========================================================

-- Q26. Count how many buses run from Pune
SELECT COUNT(*) AS Total_Buses 
FROM bus_data
WHERE source = 'Pune';

-- Q27. Count buses going to Mumbai
SELECT COUNT(*) AS Total_Buses 
FROM bus_data
WHERE destination = 'Mumbai';

-- Q28. Find the average fare of buses going from Pune to Mumbai
SELECT AVG(fare) AS Avg_Fare 
FROM bus_data
WHERE source = 'Pune' AND destination = 'Mumbai';

-- Q29. Find the maximum fare among all buses
SELECT MAX(fare) AS Max_Fare 
FROM bus_data;

-- Q30. Find the minimum fare among all buses
SELECT MIN(fare) AS Min_Fare 
FROM bus_data;

-- Q31. Calculate the total number of seats available for all buses going to Goa
SELECT SUM(seats_available) AS Total_Seats 
FROM bus_data
WHERE destination = 'Goa';

-- Q32. Calculate the average seats_available for buses starting from Nagpur
SELECT AVG(seats_available) AS Avg_Seats 
FROM bus_data
WHERE source = 'Nagpur';

-- Q33. Count distinct sources in the dataset
SELECT COUNT(DISTINCT source) AS Distinct_Sources 
FROM bus_data;

-- Q34. Count distinct destinations in the dataset
SELECT COUNT(DISTINCT destination) AS Distinct_Destinations 
FROM bus_data;

-- Q35. Find the average fare for each source city
SELECT source, AVG(fare) AS Avg_Fare 
FROM bus_data
GROUP BY source;


-- ========================================================
-- 🔹 Group By & Having (36–40)
-- ========================================================

-- Q36. Find total buses available from each source city
SELECT source, COUNT(*) AS Total_Buses 
FROM bus_data
GROUP BY source;

-- Q37. Find total buses going to each destination city
SELECT destination, COUNT(*) AS Total_Buses 
FROM bus_data
GROUP BY destination;

-- Q38. Find average fare for each source-destination pair
SELECT source, destination, AVG(fare) AS Avg_Fare
FROM bus_data
GROUP BY source, destination;

-- Q39. Find sources where more than 5 buses are running
SELECT source, COUNT(*) AS Total_Buses 
FROM bus_data
GROUP BY source
HAVING COUNT(*) > 5;

-- Q40. Find destinations where the average fare is greater than 1000
SELECT destination, AVG(fare) AS Avg_Fare
FROM bus_data
GROUP BY destination
HAVING AVG(fare) > 1000;


-- ========================================================
-- 🔹 Update Queries (41–45)
-- ========================================================

-- Q41. Update fare to 500 for all buses from Pune to Satara
UPDATE bus_data
SET fare = 500
WHERE source = 'Pune' AND destination = 'Satara';

-- Q42. Update seats_available = 50 for buses going to Goa
UPDATE bus_data
SET seats_available = 50
WHERE destination = 'Goa';

-- Q43. Update fare by +100 for all buses from Mumbai
UPDATE bus_data
SET fare = fare + 100
WHERE source = 'Mumbai';

-- Q44. Update bus_number for bus_id = 10
UPDATE bus_data
SET bus_number = 'MH12NEW9999'
WHERE bus_id = 10;

-- Q45. Update destination to Shirdi for all buses starting from Nashik
UPDATE bus_data
SET destination = 'Shirdi'
WHERE source = 'Nashik';


-- ========================================================
-- 🔹 Delete Queries (46–50)
-- ========================================================

-- Q46. Delete all buses where fare < 200
DELETE FROM bus_data
WHERE fare < 200;

-- Q47. Delete buses where source = Thane and destination = Mumbai
DELETE FROM bus_data
WHERE source = 'Thane' AND destination = 'Mumbai';

-- Q48. Delete bus record with bus_id = 25
DELETE FROM bus_data
WHERE bus_id = 25;

-- Q49. Delete all buses going to Raipur
DELETE FROM bus_data
WHERE destination = 'Raipur';

-- Q50. Delete all buses where seats_available < 35
DELETE FROM bus_data
WHERE seats_available < 35;
