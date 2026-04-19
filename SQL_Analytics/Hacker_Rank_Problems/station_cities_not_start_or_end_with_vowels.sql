-- Question: We have a STATION table that has columns like ID, CITY, STATE,
-- LAT_N (northern latitude), and LONG_W (western longitude). We need to
-- get all the CITY names that either do not start with a vowel or do not
-- end with a vowel (a, e, i, o, u) and also make sure there are no
-- duplicate city names in the result.

SELECT DISTINCT CITY
FROM STATION
WHERE !(LEFT(CITY,1) IN ('a','e','i','o','u') 
AND RIGHT(CITY, 1) IN ('a','e','i','o','u'));
