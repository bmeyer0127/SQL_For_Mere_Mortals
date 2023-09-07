SELECT OrderNumber, DATEDIFF(day, OrderDate, ShipDate) 
AS DaysElapsed 
FROM Orders;