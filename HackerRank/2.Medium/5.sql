-- Weather Observation Station 18 
-- Manhattan Distance between northernmost / southernmost LAT_N and westernmost / easternmost LONG_W rounded to 4 decimals
WITH find_dist AS (
    SELECT 
        MIN(lat_n) AS a,
        MIN(long_w) AS b,
        MAX(lat_n) AS c,
        MAX(long_w) AS d
    FROM station
)
SELECT ROUND((ABS(a - c) + ABS(b - d)), 4)
FROM find_dist