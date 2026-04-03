-- Find Customer Referee 
-- Find the names of all customers who were not referred by the customer with id = 2.
-- Return the name column.

SELECT name
FROM (
        SELECT CASE
                WHEN referee_id = 2 THEN 'flagged'
                ELSE 'not flagged'
            END AS labels, name
        FROM customer
    ) t
WHERE labels = 'not flagged'