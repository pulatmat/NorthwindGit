
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROCEDURE [dbo].[CustOrdersDetail] @OrderID INT
AS
SELECT ProductName,
    UnitPrice=ROUND(Od.UnitPrice, 2),
    Quantity,
    Discount=CONVERT(INT, Discount * 100), 
    ExtendedPrice=ROUND(CONVERT(MONEY, Quantity * (1 - Discount) * Od.UnitPrice), 2)
FROM Products P, [Order Details] Od
WHERE Od.ProductID = P.ProductID AND Od.OrderID = @OrderID
-- boing 747
GO
