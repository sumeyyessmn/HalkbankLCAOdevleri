--index: Tablolar üzerinde oluþturulan ve verilere daha az veri okumasý yaparak daha hýzlý eriþmemizi saðlayan
--sql server objeleridir.

--index prensibi:
/*

sql serverda verilerimizi fiziksel olarak tablolarda tutuyotuz. Fakat arka planda sql server veriyi
bir bütün halde tutmuyor. bir tablo içindeki verileri önce 65kb büyüklüðündeki extend dediðimiz
mantýksal veri yapýlarýnda tutar. daha sonra her extend kendi içerisinde 8kblýk pagelere bölünür.

heap table(sýrasýz tablo)
bir tablo üzerinde tanýmlý bir index yok ise sýrasýz ise bu tabloya heap table denir.

--clustered table

--clustered table tablo üzerinde clustered index var ise bu tabloya clustered table denir.
-- CLUSTERED INDEX (VERÝNÝN TAMAMI TÜM TABLO)
--CLUSTERED INDEX TABLOYU FÝZÝKSEL OLARAK SIRALAR.
--BÝR TABLO FÝZÝKSEL OLARAK SIRALANDIÐINDAN TABLO ÜZERÝNDE YANLIZ 1 TANE CLUSTERED INDEX OLUÞTURABÝLÝRÝZ
--BÝR TABLO ÜZERÝNDE 999 TANE NON-CLUSTERED ÝNDEX OLUÞTURULABÝLÝR VE 1 TANE CLUSTERED INDEX OLUÞTURULABÝLÝR.
--CLUSTERED INDEXLER TABLO ÝÇERÝSÝNDE EN ÇOK SORGULANAN KOLON ÝÇÝN OLUÞTURULABÝLÝR.
--CLUSTERED INDEX OLARAK SEÇÝLECEK KOLONUN UNÝQE OLMASI VE AZ DEÐÝÞEN BÝR ALAN OLMASI GEREKÝR.


NON CLUSTERED INDEX

--NON CLUSTERED INDEXLER VERÝYÝ FÝZÝKSEL OLARAK DEÐÝL MANTIKSAL OLARAK SIRALAR.
-- BU ÝNDEXLER NON LEAF LARDA VERÝNÝN KENDÝSÝ DEÐÝL NEREDE OLDUÐU BÝLGÝSÝ TUTULUR.
-- HEAP ÜZERÝNDE VEYA CLUSTERED INDEX ÜZERÝNDE ERÝÞÝLEBÝLÝR.
-- BU ÝNDEXÝ OLUÞTURURKEN SORGUMUZUN KOÞULUNDA SIK KULLANDIÐIMIZ KOLONLARA OLUÞTURMAMIZ GEREKÝR.*/
--  ALT+F1
set STATISTICS TIME, IO ON  
SELECT * FROM Production.Product WHERE ProductID=3