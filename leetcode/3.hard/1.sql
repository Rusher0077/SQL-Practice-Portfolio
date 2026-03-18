-- Trips and Users 
-- Find the cancellation rate of requests made by non-banned users (both clients and drivers) 
-- each day between '2013-10-01' and '2013-10-03'.
-- The cancellation rate is the number of canceled (by client or driver) or completed
-- trips divided by the total number of requested trips by non-banned users on that day.
-- Return the request date and the cancellation rate rounded to two decimal places.
-- Exclude any trips where either the client or driver is banned.

WITH unbanned AS (
    SELECT t.id,
        t.client_id,
        t.status,
        u.users_id,
        t.request_at
    FROM trips t
        JOIN users u ON u.users_id = t.client_id
        JOIN users d ON d.users_id = t.driver_id
    WHERE u.banned = 'No'
        AND d.banned = 'No'
)
SELECT request_at AS DAY,
    ROUND(
        SUM(
            CASE
                WHEN status = 'cancelled_by_driver' THEN 1
                WHEN status = 'cancelled_by_client' THEN 1
                ELSE 0
            END
        ) * 1.00 / COUNT(*),
        2
    ) AS "Cancellation Rate"
FROM unbanned
GROUP BY request_at