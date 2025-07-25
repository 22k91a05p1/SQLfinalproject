USE airline_db;

CREATE VIEW flight_availability AS
SELECT 
  f.flight_id,
  f.flight_number,
  f.origin,
  f.destination,
  COUNT(s.seat_id) AS available_seats
FROM flight f
JOIN seat s ON f.flight_id = s.flight_id
WHERE s.is_available = TRUE
GROUP BY f.flight_id;
