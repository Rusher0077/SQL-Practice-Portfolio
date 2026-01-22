-- Symmetric Pairs
-- Find all pairs (x, y) in the functions table such that (y, x) also exists.
-- Return each symmetric pair only once in the output with x <= y. Order the result by x ascending.
SELECT f1.x,
    f1.y
FROM functions f1
    JOIN functions f2 ON f2.x = f1.y
    AND f2.y = f1.x
GROUP BY f1.x,
    f1.y
HAVING COUNT(*) > 1
    OR f1.x < f1.y
ORDER BY f1.x