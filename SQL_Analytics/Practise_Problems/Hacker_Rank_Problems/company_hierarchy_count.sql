-- Question: We have five tables -- Company, Lead_Manager, Senior_Manager,
-- Manager, and Employee -- all connected by company_code. The hierarchy goes
-- from Founder at the top all the way down to Employee at the bottom. We need
-- to print the company_code, founder name and the total count of lead managers,
-- senior managers, managers, and employees for each company and sort the
-- result by company_code in ascending order.

SELECT c.company_code, c.founder,
        COUNT(DISTINCT(l.lead_manager_code)),
        COUNT(DISTINCT(s.senior_manager_code)), 
        COUNT(DISTINCT(m.manager_code)),
        COUNT(DISTINCT(e.employee_code))
        
FROM Company c, Lead_Manager l, Senior_Manager s, 
Manager m, Employee e

WHERE c.company_code = l.company_code
AND l.company_code = s.company_code
AND s.company_code = m.company_code
AND m.company_code = e.company_code

GROUP BY c.company_code, c.founder
ORDER BY c.company_code;
