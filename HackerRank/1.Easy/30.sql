-- Top Earners
-- Maximum earnings (salary × months) and count of employees achieving the maximum salary
SELECT concat (MAX(salary * months), ' ', COUNT(*))
FROM employee
WHERE salary * months = (
        SELECT MAX(salary * months)
        FROM employee
    )