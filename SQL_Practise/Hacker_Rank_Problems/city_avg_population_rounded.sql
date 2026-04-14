-- Question: We have a CITY table that has columns like ID, NAME, COUNTRYCODE,
-- DISTRICT, and POPULATION. We need to find the average population of all
-- cities in the table and round it down to the nearest integer.

SELECT ROUND(AVG(POPULATION))
FROM CITY;
