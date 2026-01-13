-- New Companies
-- Hierarchical count of distinct lead / senior / managers
-- and employees per company code with founder

SELECT c.company_code,
    c.founder,
    COUNT(DISTINCT l.lead_manager_code),
    COUNT(DISTINCT s.senior_manager_code),
    COUNT(DISTINCT m.manager_code),
    COUNT(DISTINCT e.employee_code)
FROM company c
    JOIN lead_manager l ON c.company_code = l.company_code
    JOIN senior_manager s ON s.lead_manager_code = l.lead_manager_code
    JOIN manager m ON m.senior_manager_code = s.senior_manager_code
    JOIN employee e ON e.senior_manager_code = m.senior_manager_code
GROUP BY c.company_code,
    c.founder
ORDER BY company_code