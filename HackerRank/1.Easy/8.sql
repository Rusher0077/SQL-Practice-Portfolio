-- Revising the Select Query II
-- Query the NAME field for all American cities
-- in the CITY table with populations larger than 120000
SELECT NAME
FROM CITY
WHERE POPULATION > 120000
    AND CountryCode = 'USA';