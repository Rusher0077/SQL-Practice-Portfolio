-- Weather Observation Station 13
-- Sum of LAT_N rounded to 2 decimals for latitudes between 38.7880 and 137.2345
SELECT ROUND(SUM(lat_n), 4)
FROM station
WHERE (
        lat_n > 38.7880
        AND lat_n < 137.2345
    )