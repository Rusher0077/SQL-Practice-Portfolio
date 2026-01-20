-- Challenges
-- Find hackers who created the most challenges.
-- Include hacker_id, name, and total challenges created.
-- Exclude hackers if multiple exist for the same total below the maximum.
-- Order by total challenges descending, then hacker_id ascending.

WITH total_counts AS (
    SELECT h.hacker_id,
        h.name,
        COUNT(challenge_id) AS total
    FROM hackers h
        JOIN challenges c ON c.hacker_id = h.hacker_id
    GROUP BY h.hacker_id,
        h.name
),
max_count AS (
    SELECT MAX(total) AS max_solved
    FROM total_counts
)
SELECT hacker_id,
    name,
    total
FROM total_counts
WHERE total = (
        SELECT max_solved
        FROM max_count
    )
    OR total IN (
        SELECT total
        FROM total_counts
        GROUP BY total
        HAVING COUNT(*) = 1
    )
ORDER BY total DESC,
    hacker_id ASC