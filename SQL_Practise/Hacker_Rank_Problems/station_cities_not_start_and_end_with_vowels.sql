-- Question: We have a STATION table that has columns like ID, CITY, STATE,
-- LAT_N (northern latitude), and LONG_W (western longitude). We need to
-- get all the CITY names that do not start with a vowel and also do not
-- end with a vowel (a, e, i, o, u) and make sure there are no duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE NOT(LEFT(CITY,1) IN ('a','e','i','o','u') 
OR RIGHT(CITY, 1) IN ('a','e','i','o','u'));
