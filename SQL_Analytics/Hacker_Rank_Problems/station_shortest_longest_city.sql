-- Question: We have a STATION table that has columns like ID, CITY, STATE,
-- LAT_N (northern latitude), and LONG_W (western longitude). We need to
-- find two cities -- one with the shortest name and one with the longest name
-- and also print how many characters they have. If two cities have the same
-- length then we pick the one that comes first alphabetically.

(
    SELECT CITY, LENGTH(CITY)
    FROM STATION
    ORDER BY LENGTH(CITY) ASC, CITY ASC LIMIT 1
)
UNION ALL
(
    SELECT CITY, LENGTH(CITY)
    FROM STATION
    ORDER BY LENGTH(CITY) DESC, CITY ASC LIMIT 1
);
