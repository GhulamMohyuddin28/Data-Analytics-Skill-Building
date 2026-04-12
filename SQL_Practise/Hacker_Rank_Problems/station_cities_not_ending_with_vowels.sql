-- Question: We have a STATION table that has columns like ID, CITY, STATE,
-- LAT_N (northern latitude), and LONG_W (western longitude). We need to
-- get all the CITY names that do not end with a vowel (a, e, i, o, u)
-- and also make sure there are no duplicate city names in the result.

SELECT DISTINCT CITY
FROM STATION
WHERE !(RIGHT(CITY, 1) IN ('a','e','i','o','u'));
