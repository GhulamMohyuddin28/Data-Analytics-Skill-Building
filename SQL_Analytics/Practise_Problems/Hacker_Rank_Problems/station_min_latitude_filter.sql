-- Question: We have a STATION table that has columns like ID, CITY, STATE, 
-- LAT_N, and LONG_W. We need to find the smallest Northern Latitude (LAT_N) 
-- that is bigger than 38.7780 and round the final number to 4 decimal places.

SELECT ROUND(MIN(LAT_N),4)
FROM STATION
WHERE LAT_N>38.7780;
