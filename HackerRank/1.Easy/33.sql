-- Weather Observation Station 8 
-- Find LONG_W of the northernmost station (max LAT_N) below 137.2345,
-- rounded to 4 decimal places
SELECT ROUND(long_w, 4)
FROM station
WHERE lat_n = (
        SELECT MAX(lat_n)
        FROM station
        WHERE lat_n < 137.2345
    )