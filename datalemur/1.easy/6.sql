-- Cities With Completed Trades 
-- Find the top 3 cities with the highest number of completed trades.
-- Return the city and the top 3 total number of completed trades (total_orders).

SELECT city,
    total_orders
FROM (
        SELECT COUNT(t.user_id) AS total_orders,
            u.city
        FROM trades t
            INNER JOIN users u ON u.user_id = t.user_id
        WHERE status = 'Completed'
        GROUP BY u.city
    ) t
ORDER BY total_orders DESC
LIMIT 3