-- Module 2/Create SQL queries to add and update bookings --
-- Task 1 --
DELIMITER //
CREATE PROCEDURE AddBooking(IN book_id INT, IN cust_id INT, IN the_date DATE, IN the_table INT)
BEGIN
	INSERT INTO bookings (BookingID, BookingDate, TableNo, CustomerID) VALUES (book_id, the_date, the_table, cust_id);
    SELECT 'New booking added' AS Confirmation;
END //
DELIMITER ;

CALL AddBooking(9, 3, '2022-12-30', 4);

-- Task 2 --
DELIMITER //
CREATE PROCEDURE UpdateBooking(IN book_id INT, IN the_date DATE)
BEGIN
	UPDATE bookings SET BookingDate = the_date WHERE BookingID = book_id;
    IF row_count() THEN
		SELECT concat('Booking', book_id, 'updated') AS Confirmation;
    ELSE
		SELECT concat('Aborted') AS Confirmation;
    END IF;
END //
DELIMITER ;

CALL UpdateBooking(3 , '2022-11-10')
-- Task 3 --
DELIMITER //
CREATE PROCEDURE CancelBooking(IN book_id INT)
BEGIN
	DELETE FROM bookings WHERE BookingID = book_id;
	IF ROW_COUNT() THEN
		SELECT CONCAT('Booking ', book_id, ' cancelled') AS Confirmation;
	ELSE
		SELECT CONCAT('Aborted') AS Confirmation;
	END IF;
END //
DELIMITER ;

CALL CancelBooking(3);
