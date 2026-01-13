-- Revising Aggregations - Averages 
-- Query the average population OF ALL cities IN CITY
-- WHERE District IS California.

SELECT AVG(population)
FROM city
WHERE district = 'California'