-- Question: We have a Students table with columns ID, Name, and Marks and a
-- Grades table with columns Grade, Min_Mark, and Max_Mark. We need to print
-- the Name, Grade, and Marks of each student where students with grade less
-- than 8 should show NULL instead of their name, and the result should be
-- sorted by grade descending, and for same grades above 8 sort by name
-- alphabetically, and for grades below 8 sort by marks in ascending order.

SELECT CASE WHEN
        g.grade < 8 THEN 'NULL'
        ELSE s.name
        END AS name,
        g.grade, s.marks
        
FROM students s JOIN grades g 
ON s.marks BETWEEN g.min_mark AND g.max_mark
ORDER BY 
    CASE WHEN g.grade < 8 THEN 0 
         ELSE 1 
    END DESC,
    g.grade DESC,
    CASE WHEN g.grade < 8 THEN s.marks END ASC,
    s.name ASC;
