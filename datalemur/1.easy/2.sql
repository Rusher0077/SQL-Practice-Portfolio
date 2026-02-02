-- Data Science Skills
-- list candidates who have all three skills: Python, Tableau, PostgreSQL
SELECT DISTINCT (c.candidate_id)
FROM candidates c
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY c.candidate_id
HAVING COUNT(DISTINCT skill) = 3