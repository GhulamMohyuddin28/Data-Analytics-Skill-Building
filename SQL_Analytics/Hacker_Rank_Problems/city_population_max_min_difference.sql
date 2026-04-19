-- Question: We have a CITY table that has columns like ID, NAME, COUNTRYCODE,
-- DISTRICT, and POPULATION. We need to find the difference between the
-- highest and the lowest population among all cities in the table.

SELECT MAX(POPULATION)-MIN(POPULATION)
FROM CITY;
