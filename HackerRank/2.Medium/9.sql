-- Full Score 
-- List hackers with full score on multiple challenges,
-- count of full scores, sorted by count DESC then hacker_id ASC
SELECT t.hacker_id,
    t.name
FROM (
        SELECT h.hacker_id,
            h.name,
            CASE
                WHEN d.score = s.score THEN 1
                ELSE 0
            END AS total
        FROM hackers h
            JOIN submissions s ON s.hacker_id = h.hacker_id
            JOIN challenges c ON c.challenge_id = s.challenge_id
            JOIN difficulty d ON d.difficulty_level = c.difficulty_level
    ) t
GROUP BY t.hacker_id,
    t.name
HAVING SUM(t.total) > 1
ORDER BY SUM(t.total) DESC,
    hacker_id ASC