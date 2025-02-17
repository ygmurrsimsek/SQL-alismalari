SELECT

	U.USERNAME_ AS KULLANICIADI,U.NAMESURNAME AS ADSOYAD,
	A.ADDRESSTEXT AS ACIKADRES,CT.CITY AS IL ,T.TOWN AS ILCE,D.DISTRICT AS SEMT, 
	O.ID AS SIPARISID,O.DATE_ AS TARIH,O.TOTALPRICE AS TOPLAMTUTAR,
	P.DATE_ AS ODEMETARIHI, P.APPROVECODE AS BANKAONAYKODU,
	I.DATE_ AS FATURATARIHI,I.CARGOFICHENO AS KARGOFISNO,
	IT.ITEMCODE AS URUNKODU , IT.ITEMNAME AS URUNADI ,
	OD.AMOUNT AS MIKTAR,OD.UNITPRICE AS BIRIMFIYAT, OD.LINETOTAL AS SATIRTOPLAMI

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
	--O.ID=3515
     U.NAMESURNAME='Ayd�n �ZI�IK' 