--Weather Observation Station 7
--Select distinct cities whose name ends with vowel
SELECT DISTINCT city
FROM station
WHERE RIGHT (city, 1) IN ('a', 'e', 'i', 'o', 'u')