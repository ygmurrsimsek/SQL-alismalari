SELECT
    IT.CATEGORY1 AS KATEORY1,IT.CATEGORY2 AS KATEORY2,IT.CATEGORY3 AS KATEORY3,
	SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,
	SUM(OD.AMOUNT) AS TOPLAMSIPARIS_ADED�,
	COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI,
	SUM(OD.LINETOTAL)/SUM(OD.AMOUNT) AS ORTALAMABIRIM_FIYAT
FROM ORDERS O

	JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON O.ADDRESSID=A.ID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS IT ON IT.ID=OD.ITEMID 

WHERE 
IT.CATEGORY1='KOZMETIK'
	
GROUP BY IT.CATEGORY1,IT.CATEGORY2,IT.CATEGORY3 

ORDER BY 4 DESC