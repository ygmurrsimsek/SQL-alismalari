CREATE DATABASE KÜTÜPHANE
USE KÜTÜPHANE

CREATE TABLE KÝÞÝLER(
kullanici_Id INT PRIMARY KEY identity (1,1),
Kullanici_Name varchar(100),
kullanici_TC int ,
telefon_no int,
e_posta varchar(100)
)

---CREATE VIEW kullanici_bilgi
---AS 
---SELECT
--kullanici_Id ,kullanici_Name FROM KÝÞÝLER

CREATE TABLE KÝTAPLAR(
Kitap_Id int PRIMARY KEY IDENTITY (1,1),
KitapName varchar(100),
YayýnEvi_Id varchar(100),
Tür varchar(25),
Yazar_ID varchar(5)
)
 

CREATE TABLE ÖDÜNÇALINAN(
ÖdüncId INT PRIMARY KEY IDENTITY (1,1),
kitap_Id int,
kullanici_Id int ,
yayýnevi_Id int ,
AlýnmaTarihi DATE,
VerilmeTarihi DATE ,
GeçKalma bit 
)


CREATE TABLE YAYINEVÝ (
yayýnevi_Id int PRIMARY KEY IDENTITY (1,1),
YayýneviName varchar(100),
adres varchar(200)
)

SELECT * FROM 
ÖDÜNÇALINAN Ö 
INNER JOIN KÝÞÝLER KÝ ON Ö.kullanici_Id=KÝ.kullanici_Id
INNER JOIN KÝTAPLAR K ON Ö.kitap_Id=K.Kitap_Id
WHERE Ö.VerilmeTarihi < GETDATE() ;
