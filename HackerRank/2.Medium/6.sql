-- Weather Observation Station 19 
-- Euclidean distance between min/max LAT_N and LONG_W, rounded to 4 decimals
 WITH euclid_dist as (
    SELECT MIN(lat_n) AS a,
        MIN(long_w) AS c,
        MAX(lat_n) AS b,
        MAX(long_w) AS d
    FROM station
)
SELECT round(sqrt(((b - a) *(b - a)) +((d - c) *(d - c))), 4)
FROM euclid_dist