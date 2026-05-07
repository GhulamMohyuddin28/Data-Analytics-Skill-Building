-- Question: We have a STATION table that has columns like ID, CITY, STATE,
-- LAT_N (northern latitude), and LONG_W (western longitude). We need to
-- find the LONG_W value of that row which has the greatest LAT_N that is
-- less than 137.2345 and round the answer to 4 decimal places.

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;
