-- ========================================================
-- Assignment : 20 Basic SQL “Data-Fetch & Operators” Questions
-- Database   : BusManagement
-- Table      : BusDetails
-- ========================================================

-- Q1. List every column for buses operated by Neeta Travels.
SELECT * 
FROM BusDetails
WHERE OperatorName = 'Neeta Travels';

-- Q2. BusID, BusNumber, and Fare for buses with fare > 600
SELECT BusID, BusNumber, Fare 
FROM BusDetails
WHERE Fare > 600;

-- Q3. Details of buses traveling from Pune to Mumbai
SELECT * 
FROM BusDetails
WHERE SourceCity = 'Pune' AND DestinationCity = 'Mumbai';

-- Q4. BusNumber and DepartureTime for buses departing after 20:00
SELECT BusNumber, DepartureTime 
FROM BusDetails
WHERE DepartureTime > '20:00:00';

-- Q5. Buses whose BusType is AC or Sleeper
SELECT * 
FROM BusDetails
WHERE BusType IN ('AC', 'Sleeper');

-- Q6. BusID, OperatorName, and Fare for buses with fare between 350 and 600
SELECT BusID, OperatorName, Fare 
FROM BusDetails
WHERE Fare BETWEEN 350 AND 600;

-- Q7. BusNumbers containing the substring MH12
SELECT BusNumber 
FROM BusDetails
WHERE BusNumber LIKE 'MH12%';

-- Q8. All buses arriving before 09:00
SELECT * 
FROM BusDetails
WHERE ArrivalTime < '09:00:00';

-- Q9. BusID, SourceCity, DestinationCity, and Fare where source city is not Pune
SELECT BusID, SourceCity, DestinationCity, Fare 
FROM BusDetails
WHERE SourceCity <> 'Pune';

-- Q10. Five cheapest buses (all columns), ordered by Fare ascending
SELECT * 
FROM BusDetails
ORDER BY Fare ASC
LIMIT 5;

-- Q11. BusNumber and OperatorName for buses going to Goa, Nagpur, Hyderabad
SELECT BusNumber, OperatorName 
FROM BusDetails
WHERE DestinationCity IN ('Goa', 'Nagpur', 'Hyderabad');

-- Q12. Buses whose DepartureTime is exactly 06:00:00
SELECT * 
FROM BusDetails
WHERE DepartureTime = '06:00:00';

-- Q13. Buses whose BusType is Non-AC and Fare < 400
SELECT * 
FROM BusDetails
WHERE BusType = 'Non-AC' AND Fare < 400;

-- Q14. BusID, BusNumber, Fare for buses from Mumbai with Fare >= 500
SELECT BusID, BusNumber, Fare 
FROM BusDetails
WHERE SourceCity = 'Mumbai' AND Fare >= 500;

-- Q15. All buses ordered by DepartureTime descending
SELECT * 
FROM BusDetails
ORDER BY DepartureTime DESC;

-- Q16. BusNumber, SourceCity, DestinationCity where destination ends with 'e'
SELECT BusNumber, SourceCity, DestinationCity 
FROM BusDetails
WHERE DestinationCity LIKE '%e';

-- Q17. Buses operated by MSRTC excluding those starting from Mumbai
SELECT * 
FROM BusDetails
WHERE OperatorName = 'MSRTC' AND SourceCity <> 'Mumbai';

-- Q18. First three rows from BusDetails
SELECT * 
FROM BusDetails
LIMIT 3;

-- Q19. BusID, BusType for Sleeper buses arriving after 06:00
SELECT BusID, BusType 
FROM BusDetails
WHERE BusType = 'Sleeper' AND ArrivalTime > '06:00:00';

-- Q20. All buses where Fare is not equal to 450
SELECT * 
FROM BusDetails
WHERE Fare <> 450;
