-- 1) AdventureWorks2017 veritaban�nda bulunan Product tablosundan, renkleri 'Red' ve 'Blue' olan �r�nleri listeleyin.
select * from Production.Product where Color in('Red','Blue')
-- 2) AdventureWorks2017 veritaban�nda bulunan Customer tablosundan, belirli m��teri kimlik numaralar�na sahip m��terileri listeleyin.
select * from Sales.Customer where CustomerID in('2','3','60') 
-- 3) AdventureWork2017 veritaban�nda bulunan Product tablosundan, �r�n ad�nda "Mountain" kelimesi ge�en �r�nleri listeleyin.
select * from Production.Product where Name like '%Mountain%'
-- 4) AdventureWorks2017 veritaban�nda bulunan Product tablosundan, �r�n ad� "Touring-1000" veya "Touring-2000" olan �r�nleri listeleyin.
select * from Production.Product where Name like '%Touring-1000%' OR Name like '%Touring-2000%'
-- 5) AdventureWorks2017 veritaban�nda bulunan Person tablosundan, ad� 'A' ile ba�layan ki�ileri listeleyin.
select * from Person.Person where FirstName like 'A%'
-- 6) AdventureWorks2017 veritaban�nda bulunan Product tablosundan, �r�n ad�nda 'Road' kelimesi ge�en ve rengi 'Black' olan �r�nleri listeleyin.
select * from Production.Product where Name like '%Road%' AND Color='Black'
-- 7) AdventureWorks2017 veritaban�nda bulunan Employee tablosundan, belirli departmanlarda �al��anlar� listeleyin.
select * from HumanResources.EmployeeDepartmentHistory where DepartmentID in('1','16')
-- 8) AdventureWorks2017 veritaban�nda bulunan Product tablosundan, �r�n ad�nda 'Bike' kelimesi ge�en ve fiyat� 1000 ile 2000 aras�nda olan �r�nleri listeleyin.
select * from Production.Product where ListPrice BETWEEN 1000 AND 2000 AND Name like '%Bike%'