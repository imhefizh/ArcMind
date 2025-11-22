-- Module 2/Create a virtual table to summarize data -- 
-- Task 1 --
DROP VIEW IF EXISTS OrdersView;
CREATE VIEW OrdersView AS 
SELECT OrderID, SUM(Quantity) AS Quantity, SUM(TotalCost) AS Cost FROM order_menus WHERE Quantity > 2 GROUP BY OrderID;

-- Task 2 --
SELECT customers.CustomersID AS CustomerID, customers.CustomerName AS FullName, subq.OrderID, subq.TotalCost AS Cost, menus.MenuName, menu_types.Type AS MenuType
FROM customers 
JOIN bookings ON customers.CustomersID = bookings.CustomerID 
JOIN orders ON bookings.BookingID = orders.BookingID
JOIN (
SELECT OrderID, MenuID, SUM(TotalCost) AS TotalCost FROM order_menus GROUP BY OrderID, MenuID
) AS subq ON subq.OrderID = orders.OrderID
JOIN menus ON subq.MenuID = menus.MenuID
JOIN menu_types ON menus.TypeID = menu_types.TypeID
WHERE TotalCost > 150 ORDER BY TotalCost;

-- Task 3 --
SELECT MenuName FROM menus WHERE MenuID = ANY(SELECT MenuID FROM order_menus WHERE Quantity > 2)