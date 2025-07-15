# sql-booking-system
# SQL Booking System – Flight & Hotel Reservation Project

This project is a SQL-based booking system that manages user reservations for flights and hotels. It includes procedures, triggers, and queries to ensure secure, real-time management of seats, rooms, and booking costs.

## 🧠 Features

- **Stored Procedure: `book_trip`**
  - Books a flight and hotel together
  - Automatically reduces available seats and rooms upon booking

- **Stored Procedure: `calculate_cost`**
  - Calculates the total cost for a booking based on flight and hotel prices

- **Trigger: Before Insert (Availability Check)**
  - Ensures enough seats and rooms are available before a booking is made

- **Trigger: Before Insert (Amount Check)**
  - Validates that the payment amount is correct based on actual pricing

- **Joins and Queries**
  - 🔗 `INNER JOIN`: Shows all bookings with user, flight, and hotel info
  - 🡐 `LEFT JOIN`: Lists all users with/without bookings
  - 🡒 `RIGHT JOIN`: Lists all flights, including unbooked ones
  - 📊 Subquery: Finds the hotel with the highest number of bookings
  - 🔍 Subquery: Lists users with more than one booking

## 🗂️ File Contents

All project logic is contained in the file:Project 1.sql


## 🛠️ Technologies Used

- MySQL 
- Stored Procedures
- Triggers
- Joins and Subqueries
- SQL Constraints

## 📌 How to Use

1. Open your SQL client (like MySQL Workbench, DBeaver, or phpMyAdmin).
2. Import the `sql_booking_system_project.sql` file.
3. Review and run each section to create tables, triggers, and procedures.
4. 4. Use `CALL book_trip(...)` and `CALL calculate_cost(...)` to test the system.


## 👩‍💻 Author

Project developed by **Divyadharshinee R S**  
Sql Course Project -Besant Technologies June 2025



