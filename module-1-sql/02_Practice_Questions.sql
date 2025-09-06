-- ========================================================
-- 🚍 Bus Reservation System - 50 Practice Questions
-- ========================================================

-- 🔹 Insert Queries (1–5)
-- Q1. Insert a new bus from Pune to Goa with bus_number MH12AB2001, departure at 18:00:00, arrival at 06:00:00, fare 1550, seats 45.
-- Q2. Insert a new bus from Mumbai to Nagpur with bus_number MH12AB2002, fare 1300, departure at 19:30:00, arrival at 08:00:00, seats 50.
-- Q3. Insert a new bus from Nashik to Mumbai with bus_number MH12AB2003, departure at 06:00:00, arrival at 09:30:00, fare 420, seats 40.
-- Q4. Insert a new bus from Aurangabad to Indore with bus_number MH12AB2004, fare 1050, departure 20:30:00, arrival 05:00:00, seats 42.
-- Q5. Insert a new bus from Nagpur to Pune with bus_number MH12AB2005, fare 1220, departure 20:00:00, arrival 08:00:00, seats 44.

-- 🔹 Simple Select Queries (6–15)
-- Q6. Select all buses that travel from Pune to Mumbai.
-- Q7. Select all buses where fare is greater than 1000.
-- Q8. Select buses with seats_available less than 40.
-- Q9. Select all buses where destination is Goa.
-- Q10. Select all buses starting from Nagpur.
-- Q11. Select buses that depart before 07:00:00.
-- Q12. Select buses that arrive after 08:00:00.
-- Q13. Select all buses with fare between 400 and 700.
-- Q14. Select buses where source = Mumbai and destination = Nagpur.
-- Q15. Select all unique destinations from the table.

-- 🔹 Filtering & Ordering (16–25)
-- Q16. Select top 5 cheapest buses from Pune to Mumbai.
-- Q17. Select buses ordered by fare in descending order.
-- Q18. Select buses ordered by departure_time ascending.
-- Q19. Select buses with destination = Nagpur and sort by fare ascending.
-- Q20. Select buses with source = Nashik and seats_available > 35.
-- Q21. Select buses where fare < 500 and seats_available > 40.
-- Q22. Select buses with departure_time between 06:00:00 and 09:00:00.
-- Q23. Select buses where source = Goa and destination = Pune.
-- Q24. Select buses with destination = Hyderabad and fare > 1200.
-- Q25. Select the maximum fare from Pune to Goa.

-- 🔹 Aggregate Queries (26–35)
-- Q26. Count how many buses run from Pune.
-- Q27. Count buses going to Mumbai.
-- Q28. Find the average fare of buses going from Pune to Mumbai.
-- Q29. Find the maximum fare among all buses.
-- Q30. Find the minimum fare among all buses.
-- Q31. Calculate the total number of seats available for all buses going to Goa.
-- Q32. Calculate the average seats_available for buses starting from Nagpur.
-- Q33. Count distinct sources in the dataset.
-- Q34. Count distinct destinations in the dataset.
-- Q35. Find the average fare for each source city (use GROUP BY).

-- 🔹 Group By & Having (36–40)
-- Q36. Find total buses available from each source city.
-- Q37. Find total buses going to each destination city.
-- Q38. Find average fare for each source-destination pair.
-- Q39. Find sources where more than 5 buses are running.
-- Q40. Find destinations where the average fare is greater than 1000.

-- 🔹 Update Queries (41–45)
-- Q41. Update fare to 500 for all buses from Pune to Satara.
-- Q42. Update seats_available = 50 for buses going to Goa.
-- Q43. Update fare by +100 for all buses from Mumbai.
-- Q44. Update bus_number to MH12NEW9999 for bus_id = 10.
-- Q45. Update destination to Shirdi for all buses starting from Nashik.

-- 🔹 Delete Queries (46–50)
-- Q46. Delete all buses where fare < 200.
-- Q47. Delete buses where source = Thane and destination = Mumbai.
-- Q48. Delete bus record with bus_id = 25.
-- Q49. Delete all buses going to Raipur.
-- Q50. Delete all buses where seats_available < 35.
