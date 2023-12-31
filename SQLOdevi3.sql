use AdventureWorks2017
-- 1) AdventureWorks2017 veritabanındaki "Product" tablosundaki ürünlerin toplam sayısını bulun.
select count(*) as ToplamUrunSayisi from Production.Product
-- 2) AdventureWorks2017 veritabanındaki "SalesOrderDetail" tablosundaki tüm satışların toplam tutarını bulun. 
select * from Sales.SalesOrderDetail
select sum(UnitPrice) as ToplamSatisTutari from Sales.SalesOrderDetail
-- 3) AdventureWorks2017 veritabanındaki "Employee" tablosundaki çalışanların ortalama maaşını bulun.
select * from HumanResources.EmployeePayHistory
select AVG(Rate) as OrtalamaMaas from HumanResources.EmployeePayHistory
-- 4) AdventureWorks2017 veritabanındaki "Employee" tablosundaki en yüksek maaşa sahip çalışanın adını ve maaşını bulun.
select * from HumanResources.EmployeePayHistory
select * from Person.Person

select DISTINCT max(eph.Rate)as EnYuksekMaas,pp.FirstName from HumanResources.EmployeePayHistory as eph
inner join Person.Person as pp on eph.BusinessEntityID=pp.BusinessEntityID 
group by pp.FirstName having FirstName='Ken'
order by EnYuksekMaas desc 

-- 5) AdventureWorks2017 veritabanındaki "Product" tablosundaki en düşük stok miktarına sahip ürünün adını ve stok miktarını bulun.
select * from Production.Product
select Name, MIN(SafetyStockLevel) as EnDusukStokMiktarı from Production.Product 
group by Name 
order by EnDusukStokMiktarı asc
-- 6) AdventureWorks2017 veritabanındaki "Customer" tablosundaki müşterilerin ülkelere göre sayısını bulun ve en yüksek müşteri sayısına sahip ilk 5 ülkeyi sıralayın.
select * from Sales.Customer
select * from Sales.SalesTerritory
select top 5 Count(sc.CustomerID) as MusteriSayi,sst.CountryRegionCode from Sales.Customer as sc 
inner join Sales.SalesTerritory as sst on sc.TerritoryID=sst.TerritoryID
group by sst.CountryRegionCode


