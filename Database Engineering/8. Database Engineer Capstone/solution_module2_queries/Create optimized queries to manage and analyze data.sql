-- Module 2/Create optimized queries to manage and analyze data --
-- Task 1 -- 
DELIMITER //
CREATE PROCEDURE GetMaxQuantity()
BEGIN
	SELECT MAX(Quantity) AS 'Max Quantity in Order' FROM order_menus;
END//
DELIMITER ;

-- Task 2 -- 
PREPARE GetOrderDetail FROM '
SELECT order_menus.OrderID, SUM(order_menus.Quantity) AS Quantity, SUM(order_menus.TotalCost) AS Cost 
FROM order_menus 
JOIN orders ON order_menus.OrderID = orders.OrderID
JOIN bookings ON orders.BookingID = bookings.BookingID
JOIN customers ON bookings.CustomerID = customers.CustomersID WHERE bookings.CustomerID = ?
GROUP BY order_menus.OrderID, order_menus.MenuID
';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;

-- Task 3 -- 
DELIMITER //
DROP PROCEDURE CancelOrder;
CREATE PROCEDURE CancelOrder(IN ID INT)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
		SELECT CONCAT('Error cancelling order ', ID) AS ErrorMsg;
    END;

	DELETE FROM orders WHERE OrderID = ID;
    
    IF ROW_COUNT() > 0 THEN
		SELECT CONCAT('Order ', ID, ' is cancelled') AS Confirmation;
	ELSE
		SELECT CONCAT('Order ', ID, ' not found') AS Confirmation;
	END IF;
END //
DELIMITER ;

CALL CancelOrder(2);