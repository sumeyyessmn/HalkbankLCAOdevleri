use AdventureWorks2017
-- 1) AdventureWorks2017 veritaban�ndaki "Product" tablosundaki �r�nlerin toplam say�s�n� bulun.
select count(*) as ToplamUrunSayisi from Production.Product
-- 2) AdventureWorks2017 veritaban�ndaki "SalesOrderDetail" tablosundaki t�m sat��lar�n toplam tutar�n� bulun. 
select * from Sales.SalesOrderDetail
select sum(UnitPrice) as ToplamSatisTutari from Sales.SalesOrderDetail
-- 3) AdventureWorks2017 veritaban�ndaki "Employee" tablosundaki �al��anlar�n ortalama maa��n� bulun.
select * from HumanResources.EmployeePayHistory
select AVG(Rate) as OrtalamaMaas from HumanResources.EmployeePayHistory
-- 4) AdventureWorks2017 veritaban�ndaki "Employee" tablosundaki en y�ksek maa�a sahip �al��an�n ad�n� ve maa��n� bulun.
select * from HumanResources.EmployeePayHistory
select * from Person.Person

select DISTINCT max(eph.Rate)as EnYuksekMaas,pp.FirstName from HumanResources.EmployeePayHistory as eph
inner join Person.Person as pp on eph.BusinessEntityID=pp.BusinessEntityID 
group by pp.FirstName having FirstName='Ken'
order by EnYuksekMaas desc 

-- 5) AdventureWorks2017 veritaban�ndaki "Product" tablosundaki en d���k stok miktar�na sahip �r�n�n ad�n� ve stok miktar�n� bulun.
select * from Production.Product
select Name, MIN(SafetyStockLevel) as EnDusukStokMiktar� from Production.Product 
group by Name 
order by EnDusukStokMiktar� asc
-- 6) AdventureWorks2017 veritaban�ndaki "Customer" tablosundaki m��terilerin �lkelere g�re say�s�n� bulun ve en y�ksek m��teri say�s�na sahip ilk 5 �lkeyi s�ralay�n.
select * from Sales.Customer
select * from Sales.SalesTerritory
select top 5 Count(sc.CustomerID) as MusteriSayi,sst.CountryRegionCode from Sales.Customer as sc 
inner join Sales.SalesTerritory as sst on sc.TerritoryID=sst.TerritoryID
group by sst.CountryRegionCode


