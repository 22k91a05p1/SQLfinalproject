USE airline_db;

SELECT seat_number FROM seat
WHERE flight_id = 1 AND is_available = TRUE;
