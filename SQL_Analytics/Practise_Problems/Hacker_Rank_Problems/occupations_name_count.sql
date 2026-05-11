-- Question: We have an OCCUPATIONS table that has columns Name and Occupation
-- where Occupation can be Doctor, Professor, Singer, or Actor. We need to do
-- two things -- first print all names in alphabetical order with the first
-- letter of their occupation in parentheses like AnActorName(A), and second
-- print how many times each occupation appears in the format
-- "There are a total of [count] [occupation]s." sorted by count then alphabetically.

-- Query 1
SELECT CONCAT(NAME,'(',LEFT(Occupation,1),')')
FROM OCCUPATIONS 
ORDER BY NAME;
-- QUERY 2
SELECT CONCAT("There are a total of ", 
                COUNT(Occupation),
                " ", 
                LOWER(Occupation),'s.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation),Occupation;
