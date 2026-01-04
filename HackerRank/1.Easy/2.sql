-- Select distinct cities whose name starts with vowel
SELECT DISTINCT city
FROM station
WHERE LEFT (city, 1) IN ('a', 'e', 'i', 'o', 'u')