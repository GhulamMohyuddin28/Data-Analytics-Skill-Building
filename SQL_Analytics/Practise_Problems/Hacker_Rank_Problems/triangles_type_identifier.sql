-- Question: We have a TRIANGLES table that has columns A, B, and C which are
-- the three side lengths of a triangle. We need to check each row and print
-- whether the triangle is Equilateral (all 3 sides equal), Isosceles (any 2
-- sides equal), Scalene (all 3 sides different), or Not A Triangle (the sides
-- do not form a valid triangle at all).

SELECT IF(A+B<=C OR A+C<=B OR B+C<=A, "Not A Triangle",
            IF(A=B AND B=C, "Equilateral", 
                IF(A=B OR B=C OR A=C, "Isosceles", "Scalene"))
                    ) AS Type
FROM TRIANGLES;
