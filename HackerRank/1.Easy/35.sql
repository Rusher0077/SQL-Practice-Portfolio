-- Weather Observation Station 16 
-- Find LONG_W for the largest LAT_N greater than 38.7780 in STATION table,
-- rounded to 4 decimals
SELECT ROUND(MIN(lat_n), 4)
FROM station
WHERE lat_n > 38.7780