-- Weather Observation Station 2
-- Sum of LAT_N and sum of LONG_W rounded to 2 decimal places
SELECT concat (ROUND(SUM(lat_n), 2), ' ', ROUND(SUM(long_w), 2))
FROM station