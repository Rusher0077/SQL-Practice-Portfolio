-- The PADS
-- Query-1 Query the name immediately followed by the first letter of
--         the profession in parenthesis in ascending order 
-- Query-2 Query the number of ocurrences of each occupation in Table and sort them
--         in ascending order with the followed format

SELECT concat (name, '(', LEFT (occupation, 1), ')')
FROM occupations
ORDER BY name;

SELECT concat (
        'There are a total of ',
        COUNT(occupation),
        ' ',
        LOWER(occupation),
        's.'
    )
FROM occupations
GROUP BY occupation
ORDER BY COUNT(*),
    occupation