-- ========================================================
-- Assignment 2 : Bus Management Database - Basic Queries
-- ========================================================

-- Step 1: Drop database if exists
DROP DATABASE IF EXISTS BusManagement;

-- Step 2: Create database
CREATE DATABASE BusManagement;

-- Step 3: Use database
USE BusManagement;

-- Step 4: Create BusDetails table
CREATE TABLE BusDetails (
    BusID INT PRIMARY KEY,
    BusNumber VARCHAR(20) NOT NULL,
    OperatorName VARCHAR(100),
    SourceCity VARCHAR(50),
    DestinationCity VARCHAR(50),
    DepartureTime TIME,
    ArrivalTime TIME,
    Fare DECIMAL(8,2),
    BusType VARCHAR(20) -- e.g., AC, Non-AC, Sleeper, etc.
);

-- Step 5: Insert 20 records into BusDetails
INSERT INTO BusDetails (BusID, BusNumber, OperatorName, SourceCity, DestinationCity, DepartureTime, ArrivalTime, Fare, BusType)
VALUES
(1, 'MH12AB1234', 'Neeta Travels', 'Pune', 'Mumbai', '06:00:00', '09:30:00', 450.00, 'AC'),
(2, 'MH14CD5678', 'VRL Travels', 'Pune', 'Goa', '21:00:00', '07:00:00', 850.00, 'Sleeper'),
(3, 'MH13EF9101', 'MSRTC', 'Mumbai', 'Nashik', '05:30:00', '09:00:00', 350.00, 'Non-AC'),
(4, 'MH15GH2345', 'Konduskar', 'Kolhapur', 'Pune', '07:15:00', '11:30:00', 400.00, 'AC'),
(5, 'MH12IJ6789', 'Purple', 'Mumbai', 'Pune', '17:00:00', '20:30:00', 420.00, 'Sleeper'),
(6, 'MH16KL1122', 'MSRTC', 'Nashik', 'Aurangabad', '08:00:00', '12:00:00', 320.00, 'Non-AC'),
(7, 'MH17MN3344', 'Neeta Travels', 'Pune', 'Nagpur', '20:00:00', '08:00:00', 1200.00, 'AC'),
(8, 'MH18OP5566', 'VRL Travels', 'Mumbai', 'Goa', '22:00:00', '09:00:00', 900.00, 'Sleeper'),
(9, 'MH19QR7788', 'MSRTC', 'Aurangabad', 'Nanded', '06:45:00', '11:15:00', 375.00, 'Non-AC'),
(10, 'MH20ST9900', 'Konduskar', 'Pune', 'Belgaum', '10:30:00', '15:00:00', 550.00, 'AC'),
(11, 'MH21UV1123', 'Purple', 'Nagpur', 'Pune', '18:00:00', '07:00:00', 1300.00, 'Sleeper'),
(12, 'MH22WX2345', 'Neeta Travels', 'Goa', 'Pune', '19:00:00', '06:00:00', 880.00, 'AC'),
(13, 'MH23YZ3456', 'MSRTC', 'Mumbai', 'Thane', '06:00:00', '07:00:00', 120.00, 'Non-AC'),
(14, 'MH24AB4567', 'VRL Travels', 'Nashik', 'Mumbai', '05:45:00', '09:15:00', 370.00, 'AC'),
(15, 'MH25CD5678', 'Purple', 'Pune', 'Hyderabad', '19:30:00', '07:30:00', 950.00, 'Sleeper'),
(16, 'MH26EF6789', 'Neeta Travels', 'Pune', 'Ahmednagar', '09:00:00', '11:00:00', 280.00, 'Non-AC'),
(17, 'MH27GH7890', 'MSRTC', 'Solapur', 'Pune', '13:00:00', '17:30:00', 370.00, 'AC'),
(18, 'MH28IJ8901', 'Konduskar', 'Mumbai', 'Kolhapur', '21:00:00', '06:00:00', 780.00, 'Sleeper'),
(19, 'MH29KL9012', 'Purple', 'Pune', 'Satara', '07:00:00', '09:30:00', 250.00, 'Non-AC'),
(20, 'MH30MN0123', 'VRL Travels', 'Aurangabad', 'Mumbai', '14:00:00', '20:00:00', 600.00, 'AC');
