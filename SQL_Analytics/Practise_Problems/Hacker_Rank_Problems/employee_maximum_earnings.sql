-- Question: We have an Employee table that has columns like employee_id, name, 
-- months, and salary. We need to calculate the maximum total earnings (which is 
-- salary multiplied by months) of any employee and also count how many employees 
-- earned that exact maximum amount.

SELECT (salary*months), COUNT(*)
FROM Employee
WHERE (salary*months) = (SELECT MAX(salary*months) FROM Employee)
GROUP BY (salary*months);
