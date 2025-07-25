USE airline_db;

DELIMITER //
CREATE TRIGGER mark_seat_available
AFTER UPDATE ON booking
FOR EACH ROW
BEGIN
  IF NEW.status = 'Cancelled' THEN
    UPDATE seat SET is_available = TRUE WHERE seat_id = NEW.seat_id;
  END IF;
END;
//
DELIMITER ;
