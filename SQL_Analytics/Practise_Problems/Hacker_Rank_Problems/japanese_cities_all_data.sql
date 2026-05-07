-- Question: We have a CITY table that has columns like ID, NAME, COUNTRYCODE,
-- DISTRICT, and POPULATION. We need to get all the columns of every city
-- that belongs to Japan where the CountryCode is 'JPN'.

SELECT *
FROM CITY
WHERE COUNTRYCODE="JPN";
