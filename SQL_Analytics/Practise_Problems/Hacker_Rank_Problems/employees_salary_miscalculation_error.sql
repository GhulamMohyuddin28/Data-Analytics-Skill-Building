-- Question: We have an EMPLOYEES table that has columns ID, Name, and Salary.
-- Samantha calculated the average salary but her keyboard's 0 key was broken
-- so all zeros were missing from the salaries. We need to find the difference
-- between the actual average salary and the wrong average salary that was
-- calculated without zeros and round it up to the next integer.

SELECT CEIL(
  AVG(Salary)-AVG(Replace(Salary,"0",""))
  )
FROM EMPLOYEES;
