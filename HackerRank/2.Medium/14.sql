-- Placements
-- Find the names of students whose salary is less than their best friend’s salary.
-- Compare each student’s package with their friend’s package and order results by the friend’s salary.
SELECT
  s.name
FROM
  students s
  JOIN friends f ON f.id = s.id
  JOIN packages p1 ON p1.id = s.id
  JOIN packages p2 ON p2.id = f.friend_id
WHERE
  p1.salary < p2.salary
ORDER BY
  p2.salary