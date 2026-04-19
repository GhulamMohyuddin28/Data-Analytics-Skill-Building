-- Question: We have a CITY table that has columns like ID, NAME, COUNTRYCODE,
-- DISTRICT, and POPULATION. We need to get only the NAME of those cities
-- that belong to America (CountryCode = 'USA') and their population
-- is greater than 120000.

SELECT NAME
FROM CITY
WHERE POPULATION>120000 AND COUNTRYCODE="USA";
