-- Delete Duplicate Emails
-- Delete duplicate email records from the Person table.
-- Keep only the row with the smallest id for each email address.

DELETE FROM person
WHERE email IN (
        SELECT email
        FROM person
        GROUP BY email
        HAVING COUNT(*) > 1
    )
    AND id NOT IN (
        SELECT MIN(id)
        FROM person
        GROUP BY email
    )