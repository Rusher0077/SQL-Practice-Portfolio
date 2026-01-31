-- SQL Project Planning
-- Identify continuous project timelines by grouping consecutive start and end dates,
-- then return each project’s start date and end date ordered by project duration and start date.
WITH order_date AS (
    SELECT start_date,
        end_date,
        lag (end_date) OVER (
            ORDER BY start_date
        ) AS prv_ed
    FROM projects
),
grouped_project AS (
    SELECT start_date,
        end_date,
        SUM(
            CASE
                WHEN prv_ed = start_date THEN 0
                ELSE 1
            END
        ) OVER (
            ORDER BY start_date
        ) AS grp
    FROM order_date
)
SELECT MIN(start_date),
    MAX(end_date)
FROM grouped_project
GROUP BY grp
ORDER BY datediff (MAX(end_date), MIN(start_date)),
    MIN(start_date)