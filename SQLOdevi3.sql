use AdventureWorks2017
-- 1) AdventureWorks2017 veritabanýndaki "Product" tablosundaki ürünlerin toplam sayýsýný bulun.
select count(*) as ToplamUrunSayisi from Production.Product
-- 2) AdventureWorks2017 veritabanýndaki "SalesOrderDetail" tablosundaki tüm satýþlarýn toplam tutarýný bulun. 
select * from Sales.SalesOrderDetail
select sum(UnitPrice) as ToplamSatisTutari from Sales.SalesOrderDetail
-- 3) AdventureWorks2017 veritabanýndaki "Employee" tablosundaki çalýþanlarýn ortalama maaþýný bulun.
select * from HumanResources.EmployeePayHistory
select AVG(Rate) as OrtalamaMaas from HumanResources.EmployeePayHistory
-- 4) AdventureWorks2017 veritabanýndaki "Employee" tablosundaki en yüksek maaþa sahip çalýþanýn adýný ve maaþýný bulun.
select * from HumanResources.EmployeePayHistory
select * from Person.Person

select DISTINCT max(eph.Rate)as EnYuksekMaas,pp.FirstName from HumanResources.EmployeePayHistory as eph
inner join Person.Person as pp on eph.BusinessEntityID=pp.BusinessEntityID 
group by pp.FirstName having FirstName='Ken'
order by EnYuksekMaas desc 

-- 5) AdventureWorks2017 veritabanýndaki "Product" tablosundaki en düþük stok miktarýna sahip ürünün adýný ve stok miktarýný bulun.
select * from Production.Product
select Name, MIN(SafetyStockLevel) as EnDusukStokMiktarý from Production.Product 
group by Name 
order by EnDusukStokMiktarý asc
-- 6) AdventureWorks2017 veritabanýndaki "Customer" tablosundaki müþterilerin ülkelere göre sayýsýný bulun ve en yüksek müþteri sayýsýna sahip ilk 5 ülkeyi sýralayýn.
select * from Sales.Customer
select * from Sales.SalesTerritory
select top 5 Count(sc.CustomerID) as MusteriSayi,sst.CountryRegionCode from Sales.Customer as sc 
inner join Sales.SalesTerritory as sst on sc.TerritoryID=sst.TerritoryID
group by sst.CountryRegionCode


