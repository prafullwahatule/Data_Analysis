-- ============================================================
-- 🚍 Project: Bus Reservation / Transport Management Database
-- Database Name: bus_reservation_db
-- Description: Stores details of buses, their routes, timings,
--              fares, and available seats.
-- ============================================================

-- Step 1: Create Database
CREATE DATABASE bus_reservation_db;

-- Step 2: Select Database
USE bus_reservation_db;

-- Step 3: Create Table
CREATE TABLE bus_data (
    bus_id INT PRIMARY KEY,                -- Unique ID for each bus
    bus_number VARCHAR(20) NOT NULL,       -- Bus registration number
    source VARCHAR(50) NOT NULL,           -- Starting city
    destination VARCHAR(50) NOT NULL,      -- Destination city
    departure_time TIME,                   -- Departure time from source
    arrival_time TIME,                     -- Arrival time at destination
    fare DECIMAL(8,2),                     -- Ticket price
    seats_available INT                    -- Number of seats available
);

-- Step 4: Insert Sample Data (50 Records)
INSERT INTO bus_data 
(bus_id, bus_number, source, destination, departure_time, arrival_time, fare, seats_available) VALUES
(1, 'MH12AB1010', 'Pune', 'Mumbai', '06:00:00', '10:00:00', 450.00, 40),
(2, 'MH12AB1011', 'Pune', 'Nashik', '07:30:00', '12:15:00', 500.00, 35),
(3, 'MH12AB1012', 'Pune', 'Aurangabad', '08:00:00', '14:00:00', 600.00, 38),
(4, 'MH12AB1013', 'Mumbai', 'Pune', '09:00:00', '13:00:00', 450.00, 42),
(5, 'MH12AB1014', 'Mumbai', 'Nagpur', '18:00:00', '07:00:00', 1200.00, 50),
(6, 'MH12AB1015', 'Mumbai', 'Nashik', '05:30:00', '09:00:00', 400.00, 36),
(7, 'MH12AB1016', 'Mumbai', 'Aurangabad', '06:45:00', '12:30:00', 700.00, 39),
(8, 'MH12AB1017', 'Nagpur', 'Pune', '19:00:00', '08:00:00', 1250.00, 45),
(9, 'MH12AB1018', 'Nagpur', 'Mumbai', '20:00:00', '09:00:00', 1300.00, 48),
(10, 'MH12AB1019', 'Nagpur', 'Aurangabad', '22:00:00', '05:00:00', 800.00, 44),
(11, 'MH12AB1020', 'Aurangabad', 'Pune', '06:15:00', '12:00:00', 600.00, 37),
(12, 'MH12AB1021', 'Aurangabad', 'Mumbai', '07:45:00', '13:30:00', 700.00, 35),
(13, 'MH12AB1022', 'Aurangabad', 'Nagpur', '21:30:00', '05:30:00', 850.00, 46),
(14, 'MH12AB1023', 'Nashik', 'Pune', '05:30:00', '10:30:00', 500.00, 40),
(15, 'MH12AB1024', 'Nashik', 'Mumbai', '06:30:00', '09:30:00', 400.00, 42),
(16, 'MH12AB1025', 'Nashik', 'Aurangabad', '08:00:00', '12:30:00', 550.00, 36),
(17, 'MH12AB1026', 'Pune', 'Kolhapur', '07:00:00', '11:30:00', 450.00, 38),
(18, 'MH12AB1027', 'Kolhapur', 'Pune', '14:00:00', '18:30:00', 450.00, 39),
(19, 'MH12AB1028', 'Pune', 'Satara', '06:00:00', '08:00:00', 250.00, 40),
(20, 'MH12AB1029', 'Satara', 'Pune', '09:00:00', '11:00:00', 250.00, 42),
(21, 'MH12AB1030', 'Mumbai', 'Thane', '07:00:00', '08:00:00', 100.00, 50),
(22, 'MH12AB1031', 'Thane', 'Mumbai', '09:00:00', '10:00:00', 100.00, 48),
(23, 'MH12AB1032', 'Pune', 'Solapur', '05:00:00', '09:30:00', 400.00, 36),
(24, 'MH12AB1033', 'Solapur', 'Pune', '12:00:00', '16:30:00', 400.00, 38),
(25, 'MH12AB1034', 'Mumbai', 'Solapur', '23:00:00', '07:00:00', 950.00, 45),
(26, 'MH12AB1035', 'Solapur', 'Mumbai', '21:00:00', '05:00:00', 950.00, 44),
(27, 'MH12AB1036', 'Nagpur', 'Bhopal', '22:00:00', '05:30:00', 1000.00, 41),
(28, 'MH12AB1037', 'Bhopal', 'Nagpur', '21:30:00', '05:00:00', 1000.00, 42),
(29, 'MH12AB1038', 'Pune', 'Hyderabad', '20:00:00', '06:00:00', 1200.00, 46),
(30, 'MH12AB1039', 'Hyderabad', 'Pune', '21:00:00', '07:00:00', 1200.00, 45),
(31, 'MH12AB1040', 'Mumbai', 'Hyderabad', '19:00:00', '07:00:00', 1400.00, 48),
(32, 'MH12AB1041', 'Hyderabad', 'Mumbai', '20:00:00', '08:00:00', 1400.00, 47),
(33, 'MH12AB1042', 'Aurangabad', 'Indore', '21:30:00', '05:00:00', 1100.00, 42),
(34, 'MH12AB1043', 'Indore', 'Aurangabad', '22:00:00', '05:30:00', 1100.00, 44),
(35, 'MH12AB1044', 'Nashik', 'Surat', '06:00:00', '10:30:00', 700.00, 38),
(36, 'MH12AB1045', 'Surat', 'Nashik', '14:00:00', '18:30:00', 700.00, 39),
(37, 'MH12AB1046', 'Pune', 'Goa', '19:00:00', '06:00:00', 1500.00, 48),
(38, 'MH12AB1047', 'Goa', 'Pune', '20:00:00', '07:00:00', 1500.00, 49),
(39, 'MH12AB1048', 'Mumbai', 'Goa', '21:00:00', '08:00:00', 1600.00, 50),
(40, 'MH12AB1049', 'Goa', 'Mumbai', '22:00:00', '09:00:00', 1600.00, 48),
(41, 'MH12AB1050', 'Nagpur', 'Chandrapur', '06:00:00', '09:00:00', 350.00, 37),
(42, 'MH12AB1051', 'Chandrapur', 'Nagpur', '10:00:00', '13:00:00', 350.00, 39),
(43, 'MH12AB1052', 'Pune', 'Ahmednagar', '07:00:00', '09:30:00', 200.00, 42),
(44, 'MH12AB1053', 'Ahmednagar', 'Pune', '12:00:00', '14:30:00', 200.00, 40),
(45, 'MH12AB1054', 'Mumbai', 'Ahmednagar', '14:00:00', '18:00:00', 450.00, 38),
(46, 'MH12AB1055', 'Ahmednagar', 'Mumbai', '19:00:00', '23:00:00', 450.00, 37),
(47, 'MH12AB1056', 'Pune', 'Latur', '20:00:00', '03:00:00', 650.00, 43),
(48, 'MH12AB1057', 'Latur', 'Pune', '21:00:00', '04:00:00', 650.00, 44),
(49, 'MH12AB1058', 'Nagpur', 'Raipur', '22:00:00', '05:30:00', 900.00, 46),
(50, 'MH12AB1059', 'Raipur', 'Nagpur', '21:30:00', '05:00:00', 900.00, 47);
