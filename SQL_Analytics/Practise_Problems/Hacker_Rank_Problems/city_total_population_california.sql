-- Question: We have a CITY table that has columns like ID, NAME, COUNTRYCODE,
-- DISTRICT, and POPULATION. We need to find the total population of all
-- those cities that belong to the District of California.

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT='California';
