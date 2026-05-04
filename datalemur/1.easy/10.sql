-- Average Review Ratings
-- Calculate the average star rating for each product for each month from the reviews table.
-- Extract the month from submit_date and round the average rating to two decimal places.

SELECT
    mth,
    product_id,
    ROUND(AVG(stars), 2) AS avg_stars
FROM
    (
        SELECT
            EXTRACT(
                MONTH
                FROM
                    submit_date
            ) AS mth,
            stars,
            product_id
        FROM
            reviews
    ) t
GROUP BY
    mth,
    product_id
ORDER BY
    mth,
    product_id