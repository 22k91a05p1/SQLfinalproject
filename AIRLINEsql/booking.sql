USE airline_db;

SELECT
  b.booking_id,
  c.first_name,
  c.last_name,
  f.flight_number,
  f.origin,
  f.destination,
  s.seat_number,
  b.status
FROM booking b
JOIN customer c ON b.customer_id = c.customer_id
JOIN flight f ON b.flight_id = f.flight_id
JOIN seat s ON b.seat_id = s.seat_id;
