-- Employee Salaries
-- Display the name of employees, having a salary greater than 2000 per month and who have been employees 
-- for less than 10 months.Sort your result by ascending employee_id.
SELECT name
FROM employee
WHERE salary > 2000
    AND months < 10
ORDER BY employee_id