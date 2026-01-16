-- Weather Observation Station 20
-- Find the median of the LAT_N values from STATION, rounded to 4 decimals.
SELECT ROUND(AVG(lat_n), 4)
FROM (
        SELECT lat_n,
            ROW_NUMBER() OVER (
                ORDER BY lat_n
            ) AS rn,
            COUNT(*) OVER () AS cnt
        FROM station
    ) AS median
WHERE rn IN ((cnt + 1) / 2, (cnt + 2) / 2)