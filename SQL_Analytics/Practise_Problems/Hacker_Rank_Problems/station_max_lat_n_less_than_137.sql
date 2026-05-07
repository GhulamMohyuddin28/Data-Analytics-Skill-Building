-- Question: We have a STATION table that has columns like ID, CITY, STATE,
-- LAT_N (northern latitude), and LONG_W (western longitude). We need to
-- find the greatest value of LAT_N that is less than 137.2345 and truncate
-- the answer to 4 decimal places.


SELECT MAX(Truncate(LAT_N,4))
FROM STATION
WHERE LAT_N<137.2345;
