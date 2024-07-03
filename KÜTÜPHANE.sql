CREATE DATABASE K�T�PHANE
USE K�T�PHANE

CREATE TABLE K���LER(
kullanici_Id INT PRIMARY KEY identity (1,1),
Kullanici_Name varchar(100),
kullanici_TC int ,
telefon_no int,
e_posta varchar(100)
)

---CREATE VIEW kullanici_bilgi
---AS 
---SELECT
--kullanici_Id ,kullanici_Name FROM K���LER

CREATE TABLE K�TAPLAR(
Kitap_Id int PRIMARY KEY IDENTITY (1,1),
KitapName varchar(100),
Yay�nEvi_Id varchar(100),
T�r varchar(25),
Yazar_ID varchar(5)
)
 

CREATE TABLE �D�N�ALINAN(
�d�ncId INT PRIMARY KEY IDENTITY (1,1),
kitap_Id int,
kullanici_Id int ,
yay�nevi_Id int ,
Al�nmaTarihi DATE,
VerilmeTarihi DATE ,
Ge�Kalma bit 
)


CREATE TABLE YAYINEV� (
yay�nevi_Id int PRIMARY KEY IDENTITY (1,1),
Yay�neviName varchar(100),
adres varchar(200)
)

SELECT * FROM 
�D�N�ALINAN � 
INNER JOIN K���LER K� ON �.kullanici_Id=K�.kullanici_Id
INNER JOIN K�TAPLAR K ON �.kitap_Id=K.Kitap_Id
WHERE �.VerilmeTarihi < GETDATE() ;
