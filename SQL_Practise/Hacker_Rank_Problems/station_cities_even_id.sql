-- Question: We have a STATION table that has columns like ID, CITY, STATE,
-- LAT_N (northern latitude), and LONG_W (western longitude). We need to
-- get only the CITY names where the ID is an even number and also remove
-- any duplicate city names from the result.

SELECT DISTINCT CITY
FROM STATION
WHERE ID%2=0;
