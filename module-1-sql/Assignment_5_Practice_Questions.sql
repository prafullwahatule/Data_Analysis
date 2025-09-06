-- ========================================================
-- Assignment 5 : AirlinesDB Database - Practice Questions
-- ========================================================

SET SQL_SAFE_UPDATES = 0;

-- Show all records
SELECT * FROM flights;

-- 1. Update departure city for FlightID 5
UPDATE flights
SET DepartureCity = 'Dubai International Airport'
WHERE FlightID = 5;

-- 2. Delete flight with FlightID 10
DELETE FROM flights
WHERE FlightID = 10;

-- 3. Add column FlightStatus (default: Scheduled)
ALTER TABLE flights
ADD COLUMN FlightStatus VARCHAR(50) DEFAULT 'Scheduled';

-- 4. Drop column AvailableSeats
ALTER TABLE flights
DROP COLUMN AvailableSeats;

-- 5. Rename column FlightNumber → FlightCode
ALTER TABLE flights
RENAME COLUMN FlightNumber TO FlightCode;

-- 6. Update ticket price to 1500 for flights from London
UPDATE flights
SET TicketPrice = 1500.00
WHERE DepartureCity = 'London';

-- 7. Delete flights arriving in Paris
DELETE FROM flights
WHERE ArrivalCity = 'Paris';

-- 8. Add column DepartureTerminal (default: T1)
ALTER TABLE flights
ADD COLUMN DepartureTerminal VARCHAR(20) DEFAULT 'T1';

-- 9. Drop column AircraftType
ALTER TABLE flights
DROP COLUMN AircraftType;

-- 10. Rename column ArrivalTime → EstimatedArrival
ALTER TABLE flights
RENAME COLUMN ArrivalTime TO EstimatedArrival;

-- 11. Update FlightStatus to 'Boarding' for New York flights
UPDATE flights
SET FlightStatus = 'Boarding'
WHERE DepartureCity = 'New York';

-- 12. Delete flight with FlightID 15
DELETE FROM flights
WHERE FlightID = 15;

-- 13. Add column DelayMinutes (default: 0)
ALTER TABLE flights
ADD COLUMN DelayMinutes INT DEFAULT 0;

-- 14. Drop column TicketPrice
ALTER TABLE flights
DROP COLUMN TicketPrice;

-- 15. Rename column DepartureCity → OriginCity
ALTER TABLE flights
RENAME COLUMN DepartureCity TO OriginCity;

-- 16. Update terminal to T2 for delayed flights from New York
UPDATE flights
SET DepartureTerminal = 'T2'
WHERE OriginCity = 'New York' AND FlightStatus = 'Delayed';

-- 17. Delete flights arriving in Los Angeles
DELETE FROM flights
WHERE ArrivalCity = 'Los Angeles';

-- 18. Add column GateNumber (default: A1)
ALTER TABLE flights
ADD COLUMN GateNumber VARCHAR(20) DEFAULT 'A1';

-- 19. Drop column FlightStatus
ALTER TABLE flights
DROP COLUMN FlightStatus;

-- 20. Rename column EstimatedArrival → ActualArrival
ALTER TABLE flights
RENAME COLUMN EstimatedArrival TO ActualArrival;

-- ========================================================
-- End of Assignment 5
-- ========================================================
