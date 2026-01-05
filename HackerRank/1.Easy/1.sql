-- /Weather Observation Station 5
-- Query the two cities in STATION with the shortest
-- and longest CITY names, as well as their respective lengths. If there is more than one smallest
-- or largest city, choose the one that comes first when ordered alphabetically.

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