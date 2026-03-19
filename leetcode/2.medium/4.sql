-- Nth Highest Salary 
-- Write a function that returns the nth highest distinct salary from the Employee table.
-- If there are fewer than n distinct salaries, return null.

CREATE FUNCTION getNthHighestSalary(@n INT) 
RETURNS INT
AS 
BEGIN 
    IF @n <= 0 
    RETURN NULL
    
    RETURN (
        SELECT DISTINCT Salary
        FROM Employee
        ORDER BY Salary DESC OFFSET (@n - 1) ROWS FETCH NEXT 1 ROW ONLY
    )
END