-- Type of Triangle
-- identify the type of each record in the TRIANGLES table using its three side lengths

SELECT CASE
        WHEN (a + b) <= c
        OR (a + c) <= b
        OR (b + c) <= a THEN 'Not A Triangle'
        WHEN a = b
        AND b = c THEN 'Equilateral'
        WHEN a = b
        OR b = c
        OR a = c THEN 'Isosceles'
        ELSE 'Scalene'
    END AS canform
FROM Triangles