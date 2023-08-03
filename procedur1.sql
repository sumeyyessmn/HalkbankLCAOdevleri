--prosedürler

--add hoc query
--query (sorgunuzun hazýrlanmasý)
--parse (t-sql kurallarýna göre yazýlýp yazýlmadýðý kontrol edilen adým)
--optimize (sorguyu çalýþtýrmak için izleyebileceði yollarýn tespit edildiði alandýr.)
--compile (optimize adýmýnda oluþturulan yollarýn en uygunu bu adýmda seçilir.)
--execute (seçilen en uygun plan ile sorgu çalýþtýrýlýr.)
--result (sonuç gösterilir.)

--store procedure
--execute
--result

/* store prosedurlerin avantajlarý */
--geniþ kapsamlý yani çok fazla iþlem içeren prosedurler, normal sorgulara göre daha az network trafiði oluþtururlar.
-- çünkü uygulama ile sql server arasýnda 1500 satýrlýk bir kod yerine sadece ilgli prosedurun adý ve paramet
--releri gönderilir. 
--fonksiyonlara benzer olarak yazýlan bir kodun ayný þekilde veya farklý parametreler gönderilerek tekrar
--kullanýlabilirler.
--store procedurler çalýþtýrýldýklarý ilk parametrelere göre oluþan execution planlarý hafýzada tutulur
-- ve tekrar çalýþtýrdýklarýnda bu planý kullanarak daha hýzlý þekilde çalýþýr.
--prosedurlerde insert,update,delete iþlemlerini de kullanabiliriz.
--drop; objeleri, bir tabloyu,proseduru silmek için, delete ise tablo içindeki verileri silmek için kullanýlan komuttur.

--bir procedur oluþtururken create komutu kullanýlýr.
-- bir proceduru silerken drop komutu kullanýlýr.
-- bir procedur içerisinde deðiþiklik yapmak istediðimzde alter kullanýlýr.
-- bir procedur çalýþtýrýlmak istendiðinde execute komutu ile çalýþtýrýlýr.

create procedure Usp_UrunleriListele
as
select * from Production.Product

set statistics time ,io on
exec Usp_UrunleriListele
--execute sp_spaceused 




