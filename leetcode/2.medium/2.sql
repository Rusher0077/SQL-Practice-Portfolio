-- Second Highest Salary 
-- Return the second highest salary from the Employee table.
-- If there is no second highest salary, return null.

SELECT MAX(Salary) AS SecondHighestSalary
FROM (
        SELECT salary
        FROM employee
        GROUP BY salary
        ORDER BY salary DESC OFFSET 1 ROWS FETCH NEXT 1 ROW ONLY
    ) t