--Duplicate Emails
--Write a solution to report all the duplicate emails.

SELECT DISTINCT email FROM person
WHERE email IS NOT NULL
HAVING COUNT(email) > 1