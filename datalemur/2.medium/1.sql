-- Second Highest Salary
-- Return the second highest distinct salary from the Employee table.
-- If no second highest exists, return NULL.
-- Output a single column: second_highest_salary
SELECT salary AS second_highest_salary
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;