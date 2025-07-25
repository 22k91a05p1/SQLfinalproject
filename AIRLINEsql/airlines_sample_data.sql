CREATE DATABASE airline_db;
USE airline_db;

-- 1. Customers Table
CREATE TABLE customer (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  phone VARCHAR(20),
  passport_number VARCHAR(20),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 2. Flights Table
CREATE TABLE flight (
  flight_id INT AUTO_INCREMENT PRIMARY KEY,
  airline VARCHAR(50),
  flight_number VARCHAR(10),
  origin VARCHAR(50),
  destination VARCHAR(50),
  departure_time DATETIME,
  arrival_time DATETIME,
  status VARCHAR(20)
);

-- 3. Seats Table
CREATE TABLE seat (
  seat_id INT AUTO_INCREMENT PRIMARY KEY,
  flight_id INT,
  seat_number VARCHAR(10),
  seat_class VARCHAR(20), -- Economy, Business
  is_available BOOLEAN DEFAULT TRUE,
  FOREIGN KEY (flight_id) REFERENCES flight(flight_id)
);

-- 4. Booking Table
CREATE TABLE booking (
  booking_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  flight_id INT,
  seat_id INT,
  booking_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  status VARCHAR(20) DEFAULT 'Confirmed',
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (flight_id) REFERENCES flight(flight_id),
  FOREIGN KEY (seat_id) REFERENCES seat(seat_id)
);
-- Insert Customers
INSERT INTO customer (first_name, last_name, email, phone, passport_number)
VALUES ('Alice', 'Smith', 'alice@example.com', '1234567890', 'P1234567');

-- Insert Flights
INSERT INTO flight (airline, flight_number, origin, destination, departure_time, arrival_time, status)
VALUES ('Air India', 'AI101', 'Delhi', 'Mumbai', '2025-08-01 10:00:00', '2025-08-01 12:00:00', 'Scheduled');

-- Insert Seats
INSERT INTO seat (flight_id, seat_number, seat_class)
VALUES (1, '12A', 'Economy'), (1, '12B', 'Economy'), (1, '1A', 'Business');

-- Make a Booking
INSERT INTO booking (customer_id, flight_id, seat_id)
VALUES (1, 1, 1);

-- Mark seat as unavailable
UPDATE seat SET is_available = FALSE WHERE seat_id = 1;
