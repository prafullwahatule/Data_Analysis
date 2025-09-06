-- ========================================================
-- Assignment 5 :  AirlinesDB Database - Practice Questions
-- ========================================================

SET SQL_SAFE_UPDATES = 0;

-- Show all Records
SELECT * FROM flights;

-- 1. Update the departure city of the flight with FlightID 5 to 'Dubai International Airport'.
UPDATE flights
SET DepartureCity = 'Dubai International Airport'
WHERE FlightID = 5;


-- 2. Delete the flight with FlightID 10 from the Flights table.
DELETE FROM flights
WHERE FlightID = 10;

-- 3. Add a new column 'FlightStatus' with a default value of 'Scheduled'.
ALTER TABLE flights
ADD FlightStatus VARCHAR(50) DEFAULT 'Scheduled';

-- 4. Drop the 'AvailableSeats' column from the Flights table.
ALTER TABLE flights
DROP COLUMN AvailableSeats;

-- 5. Rename the 'FlightNumber' column to 'FlightCode' in the Flights table.
ALTER TABLE flights
RENAME COLUMN FlightNumber TO FlightCode;

-- 6. Update the ticket price of all flights with a departure city of 'London' to 1500.00.
UPDATE flights
SET TicketPrice = 1500.00
WHERE DepartureCity = 'London';

-- 7. Delete all flights that have an arrival city of 'Paris'.
DELETE FROM flights
WHERE ArrivalCity = 'Paris';

-- 8. Add a new column 'DepartureTerminal' with a default value of 'T1'.
ALTER TABLE flights
ADD COLUMN DepartureTerminal VARCHAR(20) DEFAULT 'T1';

-- 9. Drop the 'AircraftType' column from the Flights table.
ALTER TABLE flights
DROP COLUMN AircraftType;

-- 10. Rename the 'ArrivalTime' column to 'EstimatedArrival' in the Flights table.
ALTER TABLE flights
RENAME COLUMN ArrivalTime TO EstimatedArrival;

-- 11. Update the flight status of all flights with a departure city of 'New York' to 'Boarding'.
UPDATE flights
SET FlightStatus = 'Boarding'
WHERE DepartureCity = 'New York';

-- 12. Delete the flight with FlightID 15 from the Flights table.
DELETE FROM flights
WHERE FlightID = 15;

-- 13. Add a new column 'DelayMinutes' with a default value of 0.
ALTER TABLE flights
ADD COLUMN DelayMinutes INT DEFAULT 0;

-- 14. Drop the 'TicketPrice' column from the Flights table.
ALTER TABLE flights
DROP COLUMN TicketPrice;

-- 15. Rename the 'DepartureCity' column to 'OriginCity' in the Flights table.
ALTER TABLE flights
RENAME COLUMN DepartureCity TO OriginCity;

-- 16. Update the departure terminal to 'T2' for all flights with FlightStatus 'Delayed'.
UPDATE flights
SET DepartureTerminal = 'T2'
WHERE FlightStatus = 'Delayed';

-- 17. Delete all flights with an arrival city of 'Los Angeles'.

-- 18. Add a new column 'GateNumber' with a default value of 'A1'.

-- 19. Drop the 'FlightStatus' column from the Flights table.

-- 20. Rename the 'EstimatedArrival' column to 'ActualArrival' in the Flights table.