SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE VIEW [dbo].[Orders Qry] AS
--test Pulat 2/24/16
--test Pulat 2/24/16 ---2
SELECT Orders.OrderID, Orders.CustomerID, Orders.EmployeeID, Orders.OrderDate, Orders.RequiredDate, 
	Orders.ShippedDate, Orders.ShipVia, Orders.Freight, Orders.ShipName, Orders.ShipAddress, Orders.ShipCity, 
	Orders.ShipRegion, Orders.ShipPostalCode, Orders.ShipCountry, 
	Customers.CompanyName, Customers.Address, Customers.City, Customers.Region, Customers.PostalCode, Customers.Country
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID


GO
