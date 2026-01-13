-- Weather Observation Station 10
-- Display the distinct city names that doesn't end with vowels
SELECT DISTINCT city
FROM station
WHERE RIGHT (city, 1) NOT IN ('a', 'e', 'i', 'o', 'u')