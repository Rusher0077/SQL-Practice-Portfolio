-- Weather Observation Station 3
-- Select the distinct city names that has an even ID number

SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0;