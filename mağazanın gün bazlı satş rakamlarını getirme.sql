--SELECT CONVERT(DATE,DATE_) AS DATE_2,*

SELECT CITY,DATE_2,SUM(TOTALPRICE) AS TOTALPRICE
FROM SALES WHERE CITY='ANKARA'

GROUP BY CITY,DATE_2
ORDER BY CITY,DATE_2
