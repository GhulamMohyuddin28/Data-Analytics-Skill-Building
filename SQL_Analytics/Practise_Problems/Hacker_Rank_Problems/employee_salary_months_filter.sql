-- Question: We have an Employee table that has columns like employee_id, name,
-- months, and salary. We need to get the names of those employees whose
-- salary is more than $2000 per month and have been working for less than
-- 10 months and sort the result by employee_id in ascending order.

SELECT name
FROM Employee
WHERE salary>2000 AND months <10;
