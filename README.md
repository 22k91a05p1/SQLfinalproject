# SQLfinalproject
🛫 Airline Reservation System – README
📌 Project Objective
To develop a relational database system for managing airline flights, customer bookings, seat assignments, and ticketing processes using MySQL Workbench.

🧰 Tools & Technologies Used
MySQL Workbench

SQL (DDL, DML, Views, Triggers)

Optional: Flask for web integration

🧱 Database Design Overview
The system includes the following core entities:

Customer – Stores passenger details.

Flight – Stores flight schedules and routes.

Seat – Maps individual seat status per flight.

Booking – Records flight bookings by customers.

Relationships:

A customer can make multiple bookings.

Each booking is associated with a flight and a seat.

Each seat is linked to a specific flight.

All tables are normalized to Third Normal Form (3NF) with appropriate primary keys, foreign keys, and constraints.

✅ Key Features
Normalized SQL schema for scalability and consistency.

Sample data entries for testing flight, booking, and customer records.

Views for flight availability and booking summaries.

Triggers to update seat availability during bookings and cancellations.

SQL queries to search flights, check seat availability, and generate booking reports.

📁 Deliverables
SQL Schema (DDL scripts)

Sample Data Inserts

Triggers for automated seat updates

Views and Queries for reports

This README file

🚀 How to Use
Open MySQL Workbench.

Create a new database and run the schema SQL script.

Insert sample data.

Run queries and triggers to test functionalities.

Optionally, connect to a frontend using Flask for full booking flow.

📌 Use Cases
Airline staff can book or cancel tickets.

Admins can check available seats and flight statuses.

Users can view available flights and booking summaries.
