-- DATAKOD ad�nda database olu�turunuz.
CREATE DATABASE DATAKOD 
-- Olu�turulan bu database alt�nda PERSONEL ad�nda bir tablo olu�turunuz.
--PERSONEL tablosu alt�nda AD,SOYAD,DOGUMTAR�H� ad�nda 3 kolon olu�turunuz.
CREATE TABLE PERSONEL (
AD VARCHAR(100),
SOYAD VARCHAR(100),
DOGUMTAR�H� DATE
)
SELECT * FROM PERSONEL

--Bu tabloya 10 INSERT i�lemi yap�n�z. 
INSERT INTO PERSONEL(AD,SOYAD,DOGUMTAR�H�) VALUES('S�meyye','�i�man','1998-05-25')
INSERT INTO PERSONEL(AD,SOYAD,DOGUMTAR�H�) VALUES('Nevra','Makarnac�','1999-07-12')
INSERT INTO PERSONEL(AD,SOYAD,DOGUMTAR�H�) VALUES('Kaan','Teke','1997-03-02')
INSERT INTO PERSONEL(AD,SOYAD,DOGUMTAR�H�) VALUES('Asude','Tan','1999-02-18')
INSERT INTO PERSONEL(AD,SOYAD,DOGUMTAR�H�) VALUES('Yi�it','Muc�k','1998-01-16')
INSERT INTO PERSONEL(AD,SOYAD,DOGUMTAR�H�) VALUES('Berat','Me�e','1999-08-20')
INSERT INTO PERSONEL(AD,SOYAD,DOGUMTAR�H�) VALUES('Sena','G�lc�kl�','1998-04-08')
GO 2
UPDATE PERSONEL SET SOYAD='Y�lmaz' WHERE SOYAD='G�lc�kl�' 
INSERT INTO PERSONEL(AD,SOYAD,DOGUMTAR�H�) VALUES('Ya�mur','Kalayc�','1999-06-23')


