SELECT 
U.NAMESURNAME,COUNT(A.ID) AS ADRESSAYISI,COUNT(DISTINCT C.ID) AS ULKESAYISI,
COUNT(CT.ID) SEHIRSAYISI
FROM 
USERS U,ADRESS A,COUNTRIES C, CITIES CT,TOWNS T,DISTRICTS D
WHERE U.ID=A.USERID AND C.ID=A.COUNTRYID AND CT.ID=A.CITYID AND T.ID=A.TOWNID 
AND D.ID=A.DISTRITID
AND CT.CITY='N��DE'
GROUP BY U.NAMESURNAME

