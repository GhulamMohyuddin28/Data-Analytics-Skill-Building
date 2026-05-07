-- Question: We are given CITY and COUNTRY tables. We need to find the name 
-- of all continents and the average population of the cities in each 
-- continent, then round that average down to the nearest whole number.

SELECT COUNTRY.Continent, FLOOR(AVG(CITY.Population))
FROM COUNTRY JOIN CITY
ON CITY.CountryCode=COUNTRY.Code
GROUP BY COUNTRY.Continent;
