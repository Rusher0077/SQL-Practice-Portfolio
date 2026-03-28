-- Employee Bonus 
-- Report the name and bonus of each employee who has a bonus less than 1000.
-- Employees with no bonus should also be included.

SELECT 
    e.name,
    b.bonus
FROM employee e
    LEFT JOIN bonus b ON b.empid = e.empid
WHERE b.bonus < 1000
    OR b.bonus IS NULL