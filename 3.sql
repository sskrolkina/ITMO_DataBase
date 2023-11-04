select p.Name, s.Name from Production.Product p inner join Production.ProductSubcategory s on p.ProductSubcategoryID = s.ProductSubcategoryID
SELECT p.Name as productName , s.Name FROM [Production].[Product] p LEFT JOIN [Production].[ProductSubcategory] s ON p.ProductSubcategoryID=s.ProductSubcategoryID
select p.Name, s.Name from Production.Product p inner join Production.ProductSubcategory s ON p.ProductSubcategoryID = s.ProductSubcategoryID where p.Color = 'Red' and StandardCost > 10
SELECT p.Name, count(ProductID) from Production.Product p inner join Production.ProductSubcategory s on p.ProductSubcategoryID = s.ProductSubcategoryID GROUP by p.Name
select s.Name, count(distinct p.ProductID) from Production.Product p inner join Production.ProductSubcategory s on p.ProductSubcategoryID = s.ProductSubcategoryID GROUP by s.Name
SELECT top 3 s.Name, count(p.ProductID) from Production.Product p inner join Production.ProductSubcategory s on p.ProductSubcategoryID = s.ProductSubcategoryID GROUP by s.Name ORDER by count(p.ProductID) desc
SELECT top 1 s.Name, count(p.StandardCost) from Production.Product p inner join Production.ProductSubcategory s on p.ProductSubcategoryID = s.ProductSubcategoryID where Color = 'Red' GROUP by s.Name ORDER by count(p.StandardCost) desc
SELECT vendor.BusinessEntityID,  COUNT(product.ProductID) 
FROM Production.Product as product
INNER JOIN
   Purchasing.ProductVendor as vendor 
ON vendor.ProductID = product.ProductID
GROUP BY vendor.BusinessEntityID
SELECT vendor.BusinessEntityID from Production.Product inner join Purchasing.ProductVendor as vendor on vendor.ProductID = Product.ProductID GROUP by vendor.BusinessEntityID having count(Product.ProductID) > 1
SELECT top 1 p.ProductID, p.OnOrderQty from Purchasing.ProductVendor as p inner join Purchasing.PurchaseOrderDetail as s on p.ProductID = s.ProductID group by p.ProductID, p.OnOrderQty order by s.OrderQty desc
select p.ProductID, s.ProductID from Production.Product p JOIN Purchasing.ProductVendor s on p.ProductID = s.ProductID
select p.BusinessEntityID,p.EmailAddress,q.CreditCardID,q.CardType 
from Person.EmailAddress p 
join Sales.PersonCreditCard s on p.BusinessEntityID = s.BusinessEntityID 
join Sales.CreditCard q on s.CreditCardID = q.CreditCardID
