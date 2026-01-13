-- Higher Than 75 Marks
-- Select the name of students who scored higher than 75 and sort them by the last 3 digits
-- of their name. If it's same then secondarily sort them by their ID in ascending order.

SELECT name
FROM students
WHERE marks > 75
ORDER BY right(name, 3),
    id