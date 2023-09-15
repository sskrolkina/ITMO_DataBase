select Name, Color, Size from Production.Product
select Name, Color, Size, StandardCost from Production.Product where StandardCost < 100
select Name, Color, Size, StandardCost from Production.Product where StandardCost < 100 and Color like 'Black'
select Name, Color, Size, StandardCost from Production.Product where StandardCost < 100 and Color like '%Black' order by StandardCost ASC
select top 3 Name, Color, StandardCost from Production.Product where Color like '%Black' order by StandardCost DESC
select Name, Color from Production.Product where Name is not null and Color is not null
select Distinct Name, Color, StandardCost from Production.Product where StandardCost BETWEEN 10 and 50
select Name, Color from Production.Product where Name like 'L_N%'
select Name, Color from Production.Product where (Name like 'D%' or Name like 'M%') and len(Name) = 3
select Name, SellStartDate from Production.Product where SellStartDate <= '2011-12-31'
select* from Production.ProductSubcategory
select* from Production.ProductCategory
select* from Person.Person where Title is not null and Title like 'Mr%'
select* from Person.[Person] where Title is null

select Name, StandardCost from Production.Product where StandardCost BETWEEN 40 and 300 order by StandardCost ASC
