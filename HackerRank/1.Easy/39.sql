-- Average Population of Each Continent 
-- Calculate the average population of cities for each continent by joining 
-- CITY and COUNTRY, and round the result down to the nearest integer.
SELECT c.continent,
    floor(AVG(ci.population))
FROM city ci
    JOIN country c ON c.code = ci.countrycode
GROUP BY c.continent