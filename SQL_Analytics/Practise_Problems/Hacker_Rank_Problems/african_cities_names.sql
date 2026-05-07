-- Question: We are given a CITY table and a COUNTRY table. We need to 
-- get the names of every city that is in the continent of 'Africa'.

SELECT ci.NAME
FROM CITY AS ci JOIN COUNTRY AS co
ON ci.CountryCode = co.Code
WHERE CONTINENT='Africa';
