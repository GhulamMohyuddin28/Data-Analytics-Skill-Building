-- Question: We have a STATION table that has columns like ID, CITY, STATE,
-- LAT_N (northern latitude), and LONG_W (western longitude). We need to
-- find the Manhattan Distance between two points where the first point has
-- the minimum LAT_N and minimum LONG_W and the second point has the maximum
-- LAT_N and maximum LONG_W and round the answer to 4 decimal places.

SELECT ROUND(ABS((MIN(LAT_N)-MAX(LAT_N))+(MIN(LONG_W)-MAX(LONG_W))),4)
FROM STATION;
