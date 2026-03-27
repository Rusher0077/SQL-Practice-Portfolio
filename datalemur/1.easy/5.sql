-- Duplicate Job Listings 
-- Find the number of duplicate job listings based on company_id, title, and description.
-- Return the total count of duplicates.

SELECT COUNT(*) AS duplicate_companies
FROM (
        SELECT COUNT(company_id)
        FROM job_listings
        GROUP BY company_id
        HAVING COUNT(company_id) > 1
    ) t