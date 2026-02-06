-- Employees Earning More Than Their Managers
-- Find the employees who earn more than their managers.
SELECT e2.name as Employee
FROM employee e1
INNER JOIN employee e2 ON e1.id = e2.managerID
WHERE
e1.salary < e2.salary
