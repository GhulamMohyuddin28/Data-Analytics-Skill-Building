-- Question: We have a STATION table that has columns like ID, CITY, STATE,
-- LAT_N (northern latitude), and LONG_W (western longitude). We need to
-- find the sum of all LAT_N values and the sum of all LONG_W values and
-- both results should be rounded to 2 decimal places.

SELECT  Round(SUM(LAT_N),2), ROUND(SUM(LONG_W),2)
FROM STATION;
