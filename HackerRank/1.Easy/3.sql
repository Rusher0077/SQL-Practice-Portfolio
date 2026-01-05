--Weather Observation Station 9
-- display the distinct city names that doesn't start with vowels

SELECT DISTINCT city
FROM station
WHERE LEFT (city, 1) NOT IN ('a', 'e', 'i', 'o', 'u')