-- Question: We have a CITY table that has columns like ID, NAME, COUNTRYCODE,
-- DISTRICT, and POPULATION. We need to get all the data of only those cities
-- that are in America (CountryCode = 'USA') and their population is more than 100000.

SELECT* 
FROM CITY
WHERE POPULATION>100000 AND COUNTRYCODE="USA";
