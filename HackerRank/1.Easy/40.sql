-- Draw the Triangle 2
-- Given an integer n, print a right-aligned triangle of asterisks (*) with n rows.
-- * 
-- **
-- ***
-- ****
-- *****
WITH RECURSIVE nums AS (
    SELECT 1 AS n
    UNION ALL
    SELECT 1 + n
    FROM nums
    WHERE 1 + n <= 20
)
SELECT repeat ('* ', n)
FROM nums