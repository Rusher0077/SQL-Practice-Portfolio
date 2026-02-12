-- Department Highest Salary  
-- Return the department name, employee name, and salary.
-- For each department, include only the employee(s) who earn the highest salary.
-- If multiple employees share the highest salary in a department, return all of them.
SELECT Department,
    Employee,
    Salary
FROM (
        SELECT d.name AS department,
            e.name AS employee,
            e.salary,
            MAX(salary) OVER (PARTITION BY d.name) AS max_s
        FROM employee e
            JOIN department d ON d.id = e.departmentid
    ) t
WHERE salary = max_s