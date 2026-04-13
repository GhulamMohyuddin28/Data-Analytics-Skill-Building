-- Question: We have a STATION table that has columns like ID, CITY, STATE,
-- LAT_N (northern latitude), and LONG_W (western longitude). We need to
-- get all the CITY names that start with a vowel (a, e, i, o, u) and
-- also make sure there are no duplicate city names in the result.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'a%' 
   OR CITY LIKE 'e%' 
   OR CITY LIKE 'i%' 
   OR CITY LIKE 'o%' 
   OR CITY LIKE 'u%';
