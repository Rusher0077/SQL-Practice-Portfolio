-- Product Sales Analysis I 
-- Report the product_name, year, and price for each sale_id in the Sales table.
-- Join with the Product table on product_id to retrieve the product name.


SELECT p.product_name,
    s.year,
    s.price
FROM sales s
    LEFT JOIN product p ON p.product_id = s.product_id