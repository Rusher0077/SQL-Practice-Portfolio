-- Contest Leaderboard
-- Calculate each hacker’s total score by summing their best score per challenge.
-- Display hacker_id, name, and total score, ordered by total score desc and hacker_id asc.
SELECT hacker_id,
    name,
    SUM(max_score) AS total
FROM (
        SELECT s.hacker_id,
            h.name,
            s.challenge_id,
            MAX(s.score) AS max_score
        FROM hackers h
            JOIN submissions s ON s.hacker_id = h.hacker_id
        GROUP BY s.hacker_id,
            h.name,
            s.challenge_id
    ) t
GROUP BY hacker_id,
    name
HAVING total > 0
ORDER BY total DESC,
    hacker_id ASC