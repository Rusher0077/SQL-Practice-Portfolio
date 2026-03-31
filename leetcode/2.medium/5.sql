-- Consecutive Numbers
-- Find all numbers that appear at least three times consecutively.

SELECT num AS ConsecutiveNums
FROM (
        SELECT num,
            lag (num, 1) OVER (
                ORDER BY id
            ) AS prev1,
            lag (num, 2) OVER (
                ORDER BY id
            ) AS prev2
        FROM logs
    ) t
WHERE num = prev1
    AND num = prev2