-- Combine Two Tables 
-- Return firstName, lastName, city, and state for each person.
-- If a person has no address, city and state should be NULL.
SELECT
  p.firstName,
  p.lastName,
  a.city,
  a.state
FROM
  person p
  LEFT JOIN address a ON a.personid = p.personid