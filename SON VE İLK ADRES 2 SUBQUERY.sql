--�LK ADRES SON ADRES ADRES SAYISINI ALDIK


SELECT U.* ,
(SELECT TOP 1 ADDRESSTEXT FROM ADDRESS WHERE USERID=U.ID ORDER BY ID DESC) SONADRES,
(SELECT TOP 1 ADDRESSTEXT FROM ADDRESS WHERE USERID=U.ID ORDER BY ID ASC) �LKADRES,
(SELECT COUNT(ADDRESSTEXT)  FROM ADDRESS WHERE USERID=U.ID) ADRESSAYISI
FROM 
USERS U

--T�M KULLANICILARIN SON ADRESLER�N� ALDIK