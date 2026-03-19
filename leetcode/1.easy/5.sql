-- Rising Temperature 
-- Find all dates' id with higher temperature compared to its previous day (yesterday).
-- Return the id of the Weather records that had a higher temperature than the day before.

SELECT id
FROM (
        SELECT *,
            temperature - lag (temperature) OVER (
                ORDER BY recorddate
            ) AS temp_diff,
            lag (recorddate) OVER (
                ORDER BY recorddate
            ) AS prev_date
        FROM weather
    ) t
WHERE temp_diff > 0
    AND datediff (DAY, prev_date, recorddate) = 1