-- Game Play Analysis IV
-- Calculate the fraction of players who logged in again exactly one day after their first login.
-- Round the result to two decimal places.
WITH first_day AS (
    SELECT player_id,
        event_date,
        FIRST_VALUE(event_date) OVER (
            PARTITION BY player_id
            ORDER BY event_date
        ) AS first_date
    FROM activity
)
SELECT ROUND(
        COUNT(
            DISTINCT CASE
                WHEN event_date = DATEADD(day, 1, first_date) THEN player_id
            END
        ) * 1.0 / COUNT(DISTINCT player_id),
        2
    ) AS fraction
FROM first_day;