-- 1) AdventureWorks2017 veritabanýnda bulunan Product tablosundan, renkleri 'Red' ve 'Blue' olan ürünleri listeleyin.
select * from Production.Product where Color in('Red','Blue')
-- 2) AdventureWorks2017 veritabanýnda bulunan Customer tablosundan, belirli müþteri kimlik numaralarýna sahip müþterileri listeleyin.
select * from Sales.Customer where CustomerID in('2','3','60') 
-- 3) AdventureWork2017 veritabanýnda bulunan Product tablosundan, ürün adýnda "Mountain" kelimesi geçen ürünleri listeleyin.
select * from Production.Product where Name like '%Mountain%'
-- 4) AdventureWorks2017 veritabanýnda bulunan Product tablosundan, ürün adý "Touring-1000" veya "Touring-2000" olan ürünleri listeleyin.
select * from Production.Product where Name like '%Touring-1000%' OR Name like '%Touring-2000%'
-- 5) AdventureWorks2017 veritabanýnda bulunan Person tablosundan, adý 'A' ile baþlayan kiþileri listeleyin.
select * from Person.Person where FirstName like 'A%'
-- 6) AdventureWorks2017 veritabanýnda bulunan Product tablosundan, ürün adýnda 'Road' kelimesi geçen ve rengi 'Black' olan ürünleri listeleyin.
select * from Production.Product where Name like '%Road%' AND Color='Black'
-- 7) AdventureWorks2017 veritabanýnda bulunan Employee tablosundan, belirli departmanlarda çalýþanlarý listeleyin.
select * from HumanResources.EmployeeDepartmentHistory where DepartmentID in('1','16')
-- 8) AdventureWorks2017 veritabanýnda bulunan Product tablosundan, ürün adýnda 'Bike' kelimesi geçen ve fiyatý 1000 ile 2000 arasýnda olan ürünleri listeleyin.
select * from Production.Product where ListPrice BETWEEN 1000 AND 2000 AND Name like '%Bike%'