SELECT U.ID,U.NAMESURNAME,U.EMAIL,U.BIRTHDATE, A.ADRESSTEXT 
FROM USERS U , ADRESS A

WHERE U.ID=A.USERID
AND U.ID=1

ORDER BY ID

