-- Print Prime Numbers
-- Given an integer n, print all prime numbers from 2 up to n.
-- Print your result on a single line,
-- and use the ampersand (&) character as your separator (instead of a space).

WITH RECURSIVE nums AS (
    SELECT 2 AS n
    UNION ALL
    SELECT n + 1
    FROM nums
    WHERE n + 1 <= 1000
)
SELECT group_concat (n separator '&')
FROM nums AS candidate
WHERE NOT EXISTS (
        SELECT 'hello world' -- just a placeholder text so that this code block runs
        FROM nums AS divisor
        WHERE divisor.n < candidate.n
            AND candidate.n % divisor.n = 0
    )