-- display the distinct city names that contains vowels in both first and last letter 

SELECT DISTINCT city
FROM station
WHERE (LEFT (city, 1) IN ('a', 'e', 'i', 'o', 'u'))
    AND (RIGHT (City, 1) IN ('a', 'e', 'i', 'o', 'u'))