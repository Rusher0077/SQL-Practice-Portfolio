-- Weather Observation Station 17 
-- Find LONG_W for the largest LAT_N greater than 38.7780 in STATION table,
-- rounded to 4 decimals
SELECT round(long_w, 4)
FROM station
WHERE lat_n = (
        SELECT min(lat_n)
        FROM station
        WHERE lat_n > 38.7780
    )