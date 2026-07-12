-- Number of Unique Subjects Taught by Each Teacher
-- Count the number of distinct subjects taught by each teacher.

SELECT
    teacher_id,
    count(DISTINCT subject_id) AS cnt
FROM
    teacher
GROUP BY
    teacher_id