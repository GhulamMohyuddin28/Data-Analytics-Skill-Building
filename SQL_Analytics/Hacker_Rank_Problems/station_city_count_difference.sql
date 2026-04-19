-- Question: We have a STATION table that has columns like ID, CITY, STATE,
-- LAT_N (northern latitude), and LONG_W (western longitude). We need to
-- find the difference between the total number of CITY entries and the
-- number of unique CITY entries in the table. For example if total cities
-- are 3 and unique cities are 2 then the answer will be 3 - 2 = 1.

SELECT COUNT(CITY)-COUNT(DISTINCT CITY)
FROM STATION;
