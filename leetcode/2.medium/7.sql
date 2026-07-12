-- Count Salary Categories
-- Categorize accounts as Low Salary, Average Salary, or High Salary based on their income.
-- Count the number of accounts in each salary category.

WITH categories AS (
    SELECT 'Low Salary' AS category

    UNION ALL

    SELECT 'Average Salary' AS category

    UNION ALL

    SELECT 'High Salary' AS category
),

bucket AS (
    SELECT
        CASE
            WHEN income < 20000 THEN 'Low Salary'
            WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
            ELSE 'High Salary'
        END AS category
    FROM accounts
)

SELECT
    c.category,
    COUNT(b.category) AS accounts_count
FROM categories AS c
LEFT JOIN bucket AS b
    ON b.category = c.category
GROUP BY c.category