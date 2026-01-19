-- African Cities
-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
SELECT ci.name
from city ci
    JOIN country c ON c.code = ci.countrycode
WHERE c.continent = 'Africa'