-- /Weather Observation Station 5

SELECT city,
    length (city)
FROM station
ORDER BY length (City),
    city
LIMIT 1;
SELECT city,
    length (city)
FROM station
ORDER BY length (city) DESC,
    City
LIMIT 1;