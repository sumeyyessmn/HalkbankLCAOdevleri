--index: Tablolar �zerinde olu�turulan ve verilere daha az veri okumas� yaparak daha h�zl� eri�memizi sa�layan
--sql server objeleridir.

--index prensibi:
/*

sql serverda verilerimizi fiziksel olarak tablolarda tutuyotuz. Fakat arka planda sql server veriyi
bir b�t�n halde tutmuyor. bir tablo i�indeki verileri �nce 65kb b�y�kl���ndeki extend dedi�imiz
mant�ksal veri yap�lar�nda tutar. daha sonra her extend kendi i�erisinde 8kbl�k pagelere b�l�n�r.

heap table(s�ras�z tablo)
bir tablo �zerinde tan�ml� bir index yok ise s�ras�z ise bu tabloya heap table denir.

--clustered table

--clustered table tablo �zerinde clustered index var ise bu tabloya clustered table denir.
-- CLUSTERED INDEX (VER�N�N TAMAMI T�M TABLO)
--CLUSTERED INDEX TABLOYU F�Z�KSEL OLARAK SIRALAR.
--B�R TABLO F�Z�KSEL OLARAK SIRALANDI�INDAN TABLO �ZER�NDE YANLIZ 1 TANE CLUSTERED INDEX OLU�TURAB�L�R�Z
--B�R TABLO �ZER�NDE 999 TANE NON-CLUSTERED �NDEX OLU�TURULAB�L�R VE 1 TANE CLUSTERED INDEX OLU�TURULAB�L�R.
--CLUSTERED INDEXLER TABLO ��ER�S�NDE EN �OK SORGULANAN KOLON ���N OLU�TURULAB�L�R.
--CLUSTERED INDEX OLARAK SE��LECEK KOLONUN UN�QE OLMASI VE AZ DE���EN B�R ALAN OLMASI GEREK�R.


NON CLUSTERED INDEX

--NON CLUSTERED INDEXLER VER�Y� F�Z�KSEL OLARAK DE��L MANTIKSAL OLARAK SIRALAR.
-- BU �NDEXLER NON LEAF LARDA VER�N�N KEND�S� DE��L NEREDE OLDU�U B�LG�S� TUTULUR.
-- HEAP �ZER�NDE VEYA CLUSTERED INDEX �ZER�NDE ER���LEB�L�R.
-- BU �NDEX� OLU�TURURKEN SORGUMUZUN KO�ULUNDA SIK KULLANDI�IMIZ KOLONLARA OLU�TURMAMIZ GEREK�R.*/
--  ALT+F1
set STATISTICS TIME, IO ON  
SELECT * FROM Production.Product WHERE ProductID=3