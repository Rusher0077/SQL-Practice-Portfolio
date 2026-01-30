-- Highest Cost Orders (ID 9915)
-- For each day, find the customer(s) who spent the most on orders.
-- If a customer placed multiple orders on the same day, sum their order costs to get their daily total.
-- Return the customer's first_name, the order_date, and their daily total_order_cost.
-- Only include orders between '2019-02-01' (inclusive) and '2019-05-02' (exclusive).
-- Sort the results by order_date ascending.

SELECT c.first_name,
    o.toc,
    o.order_date
FROM customers c
    JOIN (
        SELECT cust_id,
            order_date,
            SUM(total_order_cost) AS toc,
            MAX(SUM(total_order_cost)) OVER (
                PARTITION BY order_date
            ) AS max_daily
        FROM orders
        GROUP BY cust_id,
            order_date
    ) AS o ON o.cust_id = c.id
WHERE order_date >= '2019-02-01'
    AND order_date < ' 2019-05-02'
    AND o.toc = o.max_daily
ORDER BY o.order_date