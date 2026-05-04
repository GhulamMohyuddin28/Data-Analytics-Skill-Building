-- Question: We have a STATION table that has columns like ID, CITY, STATE, 
-- LAT_N, and LONG_W. We need to find the Western Longitude (LONG_W) of the 
-- city that has the smallest Northern Latitude (LAT_N) greater than 38.7780 
-- and round the longitude to 4 decimal places.

SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N=(SELECT MIN(LAT_N) 
             FROM STATION 
             WHERE LAT_N>38.7780);
