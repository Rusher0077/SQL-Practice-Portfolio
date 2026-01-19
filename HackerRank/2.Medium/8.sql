-- The Report
-- Display student name (NULL if grade < 8), grade, and marks by mapping marks to grade ranges and ordering by
-- grade desc and name/marks asc.
SELECT (
        CASE
            WHEN grade >= 8 THEN name
            ELSE NULL
        END
    ) AS name,
    grade,
    marks
FROM students
    JOIN grades ON marks BETWEEN min_mark AND max_mark
ORDER BY grade DESC,
    (
        CASE
            WHEN grade >= 8 THEN name
            ELSE marks
        END
    ) ASC