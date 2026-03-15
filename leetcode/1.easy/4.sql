-- Customers Who Never Order 
-- Find all customers who have never placed any orders.
-- Return the customer names from the Customers table.

SELECT c.name AS Customers
FROM customers c
    LEFT JOIN orders o ON o.customerid = c.id
WHERE o.customerid IS NULL