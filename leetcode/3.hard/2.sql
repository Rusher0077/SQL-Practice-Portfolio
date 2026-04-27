-- Human Traffic of Stadium 
-- Find all consecutive days with at least 100 people visiting the stadium.
-- Return three or more consecutive days where the number of people is >= 100 each day.
-- Return the id, visit_date, and people for those days by visit_date in ascending.

SELECT id,
    visit_date,
    people
FROM (
        SELECT id,
            visit_date,
            people,
            id - ROW_NUMBER() OVER (
                ORDER BY id
            ) AS grp -- this creates a group key for consecutive ids
        FROM stadium
        WHERE people >= 100
    ) t
WHERE grp IN (
        SELECT grp
        FROM (
                SELECT id - ROW_NUMBER() OVER (
                        ORDER BY id
                    ) AS grp
                FROM stadium
                WHERE people >= 100
            ) sub
        GROUP BY grp
        HAVING COUNT(*) >= 3 -- only keep groups that have at least 3 rows
    )
ORDER BY id;