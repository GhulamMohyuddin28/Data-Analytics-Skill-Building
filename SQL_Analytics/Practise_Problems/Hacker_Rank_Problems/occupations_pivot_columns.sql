-- Question: We have an OCCUPATIONS table that has columns Name and Occupation
-- where Occupation can be Doctor, Professor, Singer, or Actor.
-- We need to pivot the table so that each occupation becomes a column and names are
-- listed alphabetically under their matching occupation column.
-- If one occupation has less names than others then print NULL in the empty spots.

SELECT 
    MAX(CASE WHEN Occupation = 'Doctor'    THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer'    THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor'     THEN Name END) AS Actor
FROM (
    SELECT 
        Name,
        Occupation,
        ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS R_Num
    FROM OCCUPATIONS
) ranked
GROUP BY R_Num
ORDER BY R_Num;
