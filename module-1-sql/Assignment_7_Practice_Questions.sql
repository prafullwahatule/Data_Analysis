-- ============================================================
-- Assignment 7 : SQL Subquery Practice 
-- ============================================================


-- 1. Retrieve the details of cars with prices greater than the average price.
SELECT * FROM cars
WHERE Price > (SELECT AVG(Price) FROM cars);

-- 2. Retrieve the brand and model of the car with the highest mileage.
SELECT Brand, Model, Mileage FROM cars
WHERE Mileage = (SELECT MAX(Mileage) FROM cars);

-- 3. List cars with prices higher than the average price of cars with the fuel type = 'Gasoline'.
SELECT * FROM cars
WHERE Price > (SELECT AVG(Price) FROM cars
WHERE FuelType = 'Gasoline') AND FuelType = 'Gasoline';

SELECT AVG(Price) FROM cars 
WHERE FuelType = 'Gasoline';

-- 4. Find the brand with the most car models in the dataset.
SELECT Brand, COUNT(Model) 
FROM cars
GROUP BY Brand
HAVING COUNT(Model) = (
    SELECT COUNT(Model) FROM cars
    GROUP BY Brand
    ORDER BY COUNT(Model) DESC
    LIMIT 1
);

SELECT Brand, COUNT(Model) FROM cars
GROUP BY Brand
HAVING COUNT(Model) = (SELECT COUNT(Model) FROM cars
GROUP BY Brand
ORDER BY COUNT(Model) DESC
LIMIT 1);

-- 5. Retrieve cars with prices closest to the average price, rounded to the nearest hundred.
SELECT ROUND(AVG(price), -2) FROM cars;

SELECT * FROM  cars
WHERE Price = (SELECT ROUND(AVG(price), -2) FROM cars);

-- 6. List cars with prices higher than the average price of cars manufactured in the year 2021.
SELECT AVG(Price) FROM cars
WHERE Year = 2021;

SELECT * FROM cars 
WHERE Price > (SELECT AVG(Price) FROM cars
WHERE Year = 2021) AND Year = 2021;

-- 7. Find the model of the cheapest car among those with a V8 engine.
SELECT MIN(Price) FROM cars
WHERE EngineType = 'V8';

SELECT * FROM cars
WHERE Price = (SELECT MIN(Price) FROM cars
WHERE EngineType = 'V8') AND EngineType = 'V8';

-- 8. Retrieve brands with more than two car models in the dataset.
SELECT Brand, COUNT(Model) FROM cars
GROUP BY Brand
HAVING COUNT(*) > 2;

-- 9. List cars with prices higher than the average price 
-- of cars with the same transmission type and fuel type.

SELECT c.*
FROM Cars c
WHERE c.Price > (
    SELECT AVG(c2.Price)
    FROM Cars c2
    WHERE c2.TransmissionType = c.TransmissionType
      AND c2.FuelType = c.FuelType
);

-- 10. Find the brand with the highest total mileage across all models.
SELECT MAX(Mileage) FROM cars;

SELECT Brand, SUM(Mileage) AS TotalMileage
FROM Cars
GROUP BY Brand
ORDER BY TotalMileage DESC
LIMIT 1;
