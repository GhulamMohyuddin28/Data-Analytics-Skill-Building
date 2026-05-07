-- Question: We have a STATION table that has columns like ID, CITY, STATE,
-- LAT_N (northern latitude), and LONG_W (western longitude). We need to
-- find the Euclidean Distance between two points where the first point has
-- the minimum and maximum LAT_N and the second point has the minimum and
-- maximum LONG_W and round the answer to 4 decimal places.

SELECT 
    ROUND(
        SQRT(
            POW((MIN(LAT_N)-MAX(LAT_N)),2)+POW((MIN(LONG_W)-MAX(LONG_W)),2)),4)
FROM STATION;
