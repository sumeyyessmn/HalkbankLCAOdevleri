--prosed�rler

--add hoc query
--query (sorgunuzun haz�rlanmas�)
--parse (t-sql kurallar�na g�re yaz�l�p yaz�lmad��� kontrol edilen ad�m)
--optimize (sorguyu �al��t�rmak i�in izleyebilece�i yollar�n tespit edildi�i aland�r.)
--compile (optimize ad�m�nda olu�turulan yollar�n en uygunu bu ad�mda se�ilir.)
--execute (se�ilen en uygun plan ile sorgu �al��t�r�l�r.)
--result (sonu� g�sterilir.)

--store procedure
--execute
--result

/* store prosedurlerin avantajlar� */
--geni� kapsaml� yani �ok fazla i�lem i�eren prosedurler, normal sorgulara g�re daha az network trafi�i olu�tururlar.
-- ��nk� uygulama ile sql server aras�nda 1500 sat�rl�k bir kod yerine sadece ilgli prosedurun ad� ve paramet
--releri g�nderilir. 
--fonksiyonlara benzer olarak yaz�lan bir kodun ayn� �ekilde veya farkl� parametreler g�nderilerek tekrar
--kullan�labilirler.
--store procedurler �al��t�r�ld�klar� ilk parametrelere g�re olu�an execution planlar� haf�zada tutulur
-- ve tekrar �al��t�rd�klar�nda bu plan� kullanarak daha h�zl� �ekilde �al���r.
--prosedurlerde insert,update,delete i�lemlerini de kullanabiliriz.
--drop; objeleri, bir tabloyu,proseduru silmek i�in, delete ise tablo i�indeki verileri silmek i�in kullan�lan komuttur.

--bir procedur olu�tururken create komutu kullan�l�r.
-- bir proceduru silerken drop komutu kullan�l�r.
-- bir procedur i�erisinde de�i�iklik yapmak istedi�imzde alter kullan�l�r.
-- bir procedur �al��t�r�lmak istendi�inde execute komutu ile �al��t�r�l�r.

create procedure Usp_UrunleriListele
as
select * from Production.Product

set statistics time ,io on
exec Usp_UrunleriListele
--execute sp_spaceused 




