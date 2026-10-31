--Duplicate Emails
--Write a solution to report all the duplicate emails.

SELECT email AS Email
FROM Person
GROUP BY email
HAVING count(email) > 1
