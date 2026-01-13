-- Weather Observation Station 11
-- Display distinct CITY names from STATION that either do not start with vowels or do not end with vowels.
SELECT DISTINCT city
FROM station
WHERE (LEFT (city, 1) NOT IN ('a', 'e', 'i', 'o', 'u'))
    OR (RIGHT (city, 1) NOT IN ('a', 'e', 'i', 'o', 'u'))