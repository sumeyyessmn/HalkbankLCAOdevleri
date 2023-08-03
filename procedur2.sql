--procedure devam
create or ALTER procedure [dbo].[Usp_UrunleriListele_adjustable_race]
as
select * from Production.Product where Name='Adjustable Race'
GO

create or alter proc Usb_UrunleriGetir
@p1 nvarchar(100),
@p2 int 
as
select * from Production.Product where Name=@p1 and ProductID=@p2

exec Usb_UrunleriGetir @p1='Blade', @p2=1

drop procedure Usb_UrunleriGetir

create or alter proc Usb_UrunleriListele
as
select * from Production.Product where MakeFlag=1

create procedure Usb_Listele
as
exec Usb_UrunleriListele
sp_helptext 'Usb_UrunleriListele'

create procedure Usb_Listele1
as
exec Usb_Listele
sp_helptext'Usb_Listele'
