-- Population Census
-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
SELECT SUM(ci.population)
FROM city ci
    JOIN country c ON c.code = ci.countrycode
WHERE c.continent = 'Asia'