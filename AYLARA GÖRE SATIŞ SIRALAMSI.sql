--SELECT * FROM SALES

--UPDATE SALES SET MONTHNAME_='01.OCAK' WHERE DATEPART(MONTH,DATE_2)=1 
--UPDATE SALES SET MONTHNAME_='02.SUBAT' WHERE DATEPART(MONTH,DATE_2)=2 
--UPDATE SALES SET MONTHNAME_='03.MART' WHERE DATEPART(MONTH,DATE_2)=3
--UPDATE SALES SET MONTHNAME_='04.N�SAN' WHERE DATEPART(MONTH,DATE_2)=4 
--UPDATE SALES SET MONTHNAME_='05.MAYIS' WHERE DATEPART(MONTH,DATE_2)=5 
--UPDATE SALES SET MONTHNAME_='06.HAZ�RAN' WHERE DATEPART(MONTH,DATE_2)=6 
--UPDATE SALES SET MONTHNAME_='07.TEMMUZ' WHERE DATEPART(MONTH,DATE_2)=7 
--UPDATE SALES SET MONTHNAME_='08.A�USTOS' WHERE DATEPART(MONTH,DATE_2)=8 
--UPDATE SALES SET MONTHNAME_='09.EYL�L' WHERE DATEPART(MONTH,DATE_2)=9 
--UPDATE SALES SET MONTHNAME_='10.EK�M' WHERE DATEPART(MONTH,DATE_2)=10 
--UPDATE SALES SET MONTHNAME_='11.KASIM' WHERE DATEPART(MONTH,DATE_2)=11 
--UPDATE SALES SET MONTHNAME_='12.ARALIK' WHERE DATEPART(MONTH,DATE_2)=12 

SELECT CITY, MONTHNAME_,SUM(TOTALPRICE)AS TOTALPRICE
FROM SALES


GROUP BY CITY ,MONTHNAME_
ORDER BY MONTHNAME_,SUM(TOTALPRICE) DESC