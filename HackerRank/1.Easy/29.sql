-- The Blunder 
-- Ceiling of average salary difference after removing zeros from salary values
SELECT
  CEIL(AVG(salary) - (AVG(CAST(replace (CAST(salary AS CHAR), '0', '') AS DECIMAL))))
FROM
  employees