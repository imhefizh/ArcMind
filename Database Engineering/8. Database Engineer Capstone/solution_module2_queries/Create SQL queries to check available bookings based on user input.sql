-- Module 2/Create SQL queries to check available bookings based on user input --
-- Task 1 --
INSERT INTO bookings (BookingID, BookingDate, TableNo, CustomerID) VALUES (1, '2022-10-10', 5, 1), (2, '2022-11-12', 3, 3), (3, '2022-10-11', 2, 2), (4, '2022-10-13', 2, 1);

-- Task 2 --
DROP PROCEDURE IF EXISTS CheckBooking;
DELIMITER //
CREATE PROCEDURE CheckBooking(IN dates DATE, IN tableno INT) 
BEGIN
	DECLARE row_count INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
		SELECT 'Something went wrong!' AS ErrorMsg;
    END;
    
	SELECT COUNT(*) INTO row_count FROM bookings WHERE BookingDate = dates AND TableNo = tableno;
    
	IF row_count > 0 THEN
		SELECT CONCAT('Table ', tableno, ' is already booked') AS 'Booking status';
	ELSE
		SELECT CONCAT('Table ', tableno, ' not found') AS 'Booking status';
	END IF;
END //
DELIMITER ;

CALL CheckBooking('2022-10-10', 5);

-- Task 3 --
DROP PROCEDURE IF EXISTS AddValidBooking;
DELIMITER //
CREATE PROCEDURE AddValidBooking(IN the_date DATE, IN the_table INT)
BEGIN
	DECLARE last_id INT;
    DECLARE is_table_booked INT;
    
    SELECT COUNT(*) INTO is_table_booked FROM bookings WHERE TableNo = the_table AND BookingDate = the_date;
    
	START TRANSACTION;
    
    SELECT SUM((SELECT BookingID FROM bookings ORDER BY BookingID DESC LIMIT 1) + 1) INTO last_id;
    
	INSERT INTO bookings (BookingID, BookingDate, TableNo, CustomerID) VALUES (last_id, the_date, the_table, 1);
	
    IF is_table_booked = 0 THEN
		SELECT CONCAT('Table ', the_table, ' is available - booking added') AS 'Booking status';
        COMMIT;
    ELSE
        SELECT CONCAT('Table ', the_table, ' is already booked - booking cancelled') AS 'Booking status';
        ROLLBACK;
    END IF;
END //
DELIMITER ;

CALL AddValidBooking('2022-12-14', 3);