Use airline_db;
SELECT * FROM flight
WHERE origin = 'Delhi' AND destination = 'Mumbai'
AND departure_time BETWEEN '2025-08-01 00:00:00' AND '2025-08-01 23:59:59';
