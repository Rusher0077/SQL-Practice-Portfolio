-- Draw the Triangle 1
-- Given an integer n, print a right-aligned triangle of asterisks (*) with n rows.
-- *****
-- ****
-- ***
-- **
-- *
WITH RECURSIVE num AS (
    SELECT 20 AS n
    UNION ALL
    SELECT n -1
    FROM num
    WHERE n -1 >= 1
)
SELECT repeat ('* ', n)
FROM num