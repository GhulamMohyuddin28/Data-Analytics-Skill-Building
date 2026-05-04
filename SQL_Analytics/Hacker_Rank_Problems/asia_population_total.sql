-- Question: Given the CITY and COUNTRY tables, we need to find the 
-- total population of all cities located in the continent of 'Asia'.

SELECT SUM(c.POPULATION)
FROM CITY c
JOIN COUNTRY co ON c.COUNTRYCODE = co.CODE
WHERE co.CONTINENT = 'Asia';
