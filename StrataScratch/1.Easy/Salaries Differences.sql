-- Salaries Differences (ID 10308) 
-- Calculates the difference between the highest salaries in the marketing
-- and engineering departments.Output just the absolute difference in salaries.

WITH max_sal AS (
    SELECT MAX(salary) AS max_sal,
        department
    FROM db_employee e
        JOIN db_dept d ON d.id = e.department_id
    WHERE department IN ('marketing', 'engineering')
    GROUP BY department
)
SELECT ABS(
        (
            CASE
                WHEN department = 'marketing' THEN max_sal
            END
        ) - (
            CASE
                WHEN department = 'engineering' THEN max_sal
            END
        )
    ) AS output
FROM max_sal