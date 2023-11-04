SELECT Color, COUNT(DISTINCT [Color]) from Production.Product where StandardCost < 30 GROUP BY Color
select color, MIN([StandardCost]) from Production.Product where StandardCost > 100 GROUP by Color
select ProductSubcategoryID, COUNT(*) From Production.ProductSubcategory GROUp BY ProductSubcategoryID
select SalesOrderID, count(*) from Sales.SalesOrderDetail GROUP BY SalesOrderID
SELECT SalesOrderID from Sales.SalesOrderDetail where OrderQty > 5 GROUP BY SalesOrderID
select CustomerID, Count(OrderDate) FROM Sales.SalesOrderHeader GROUP by CustomerID, OrderDate HAVING COUNT(OrderDate) > 1 ??
SELECT SalesOrderID, COUNT(ProductID) as "Количество товаров" FROM Sales.SalesOrderDetail GROUP BY SalesOrderID HAVING COUNT(ProductID) > 3
SELECT ProductID, COUNT(SalesOrderID) FROM Sales.SalesOrderDetail GROUP BY ProductID HAVING COUNT(SalesOrderID) = 3 OR COUNT(SalesOrderID) = 5
SELECT ProductSubCategoryID, Count(*) from Production.ProductSubcategory group by ProductSubCategoryID having count(*) > 10
SELECT SalesOrderID, Count(*) from Sales.SalesOrderDetail GROUP by SalesOrderID having count(*) = 1
select top 1 SalesOrderID, sum(OrderQty) from Sales.SalesOrderDetail GROUP by SalesOrderID
select top 1 SalesOrderId, sum(UnitPrice * OrderQty) from Sales.SalesOrderDetail group by SalesOrderId
select ProductId, count(*) from Production.Product where color is not null and ProductSubcategoryID is not null GROUP by ProductID
SELECT TOP WITH TIES 3 [ProductSubcategoryID] FROM [Production].[Product] WHERE [ProductSubcategoryID] IS NOT NUL GROUP BY [ProductSubcategoryID] ORDER BY COUNT(*) DESC
SELECT LEN([Name]), COUNT(*) FROM [Production].[Product] GROUP BY LEN([Name])
SELECT LEN([Name]), COUNT(*) FROM [Production].[Product] GROUP BY LEN([Name])

select ProductCategoryID, count(*) from Production.ProductSubcategory group by ProductCategoryID
