-- Question: We have a CITY table that has columns like ID, NAME, COUNTRYCODE,
-- DISTRICT, and POPULATION. We need to count how many cities have a
-- population greater than 100,000.

SELECT COUNT(*)
FROM CITY
WHERE POPULATION>100000;
