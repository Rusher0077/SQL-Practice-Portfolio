-- Employees Whose Manager Left the Company
-- Find employees whose salary is less than 30000 and whose manager no longer exists in the Employees table.
-- Exclude employees with no manager.

SELECT employee_id
FROM (
    SELECT employee_id, manager_id
    FROM employees
    WHERE salary < 30000
)t
WHERE manager_id NOT IN (
    SELECT employee_id
    FROM employees
)
ORDER BY employee_id