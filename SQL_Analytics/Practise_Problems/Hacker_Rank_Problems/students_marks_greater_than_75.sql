-- Question: We have a STUDENTS table that has columns like ID, Name, and Marks.
-- We need to get the Name of those students who scored more than 75 marks and
-- sort the result by the last three characters of each name, and if two names
-- have the same last three characters then sort them by ID in ascending order.

SELECT Name
FROM STUDENTS
WHERE Marks>75 ORDER BY RIGHT(Name,3), ID ASC;
