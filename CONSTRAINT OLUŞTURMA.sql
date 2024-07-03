CREATE DATABASE HASTALAR
USE HASTALAR

CREATE TABLE HASTA 
(HASTA_ID INT PRIMARY KEY IDENTITY (1,1),
AD VARCHAR(25),
SOYAD VARCHAR(35),
DOGUMTARIHI DATE,
CONSTRAINT YASKISITLA CHECK (DATEDIFF(YEAR,DOGUMTARIHI,GetDate())>18 and DATEDIFF(YEAR,DOGUMTARIHI,GetDate())<75)
)
INSERT INTO HASTA (AD ,SOYAD , DOGUMTARIHI)
VALUES
('DO�UKAN' , 'TUN�AY' ,'2003-10-05'),
('ARDA ENES','��M�EK','2002-02-19'),
('YA�MUR ','��M�EK','2003-02-07');


INSERT INTO HASTA (AD ,SOYAD , DOGUMTARIHI)
VALUES 
('AY�ENUR','��M�EK','2001-09-20');


SELECT * FROM HASTA 

TRUNCATE TABLE HASTA

DBCC CHECKIDENT('HASTA', RESEED, 2);


---

CREATE TABLE Customer (CustId INTEGER PRIMARY KEY, CLstNm NCHAR VARYING (50))
CREATE TABLE Orders1 (OrderId INTEGER PRIMARY KEY, CustId INTEGER , OrderNotes NCHAR VARYING (255),
CONSTRAINT ASD FOREIGN KEY (CustId) REFERENCES Customer ON UPDATE CASCADE ON DELETE CASCADE)

ALTER TABLE Orders 
ADD FOREIGN KEY (CustId) REFERENCES Customers  (CustId)
ON DELETE CASCADE;

--alter table ile eklersek add olur ��nk� sonradan ekleme
--fakat direkt create ile olu�turursak create i�inde belirtirsek
--b�yle u�ra�may�z


-- 1.durumu kullanmak i�n 2. durumdan fore�gn keyi kald�r�cam silemedik...
--:(

--isim ya�mur girilmesin bir isimler tablosu olu�tur k�s�tla bunu 
CREATE DATABASE CUSTOMERNAME
USE CUSTOMERNAME

CREATE TABLE NAMES
(NameId INT IDENTITY(1,1),NAMES VARCHAR(50),SURNAME VARCHAR(100),L�ckName VARCHAR(100))

ALTER TABLE NAMES
ADD CONSTRAINT NAMES1 CHECK (NAMES<>'Ya�mur')

INSERT INTO  NAMES (NAMES,SURNAME,L�ckName)
VALUES ('Ya�mur','�im�ek','��M��R')


INSERT INTO  NAMES (NAMES,SURNAME,L�ckName)
VALUES ('do�ukan','�im�ek','��M��R')

select * from NAMES
DBCC CHECKIDENT('NAMES', RESEED, 0);

TRUNCATE TABLE NAMES

