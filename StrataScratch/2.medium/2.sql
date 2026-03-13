-- New Products (ID 10318)
-- Calculate the net change in the number of products launched by each company in 2020 compared to 2019.
-- Return the company_name and the net difference (2020 count minus 2019 count).

WITH prod_2020 AS (
    SELECT company_name,
        COUNT(product_name) AS net_products
    FROM car_launches
    WHERE YEAR = 2020
    GROUP BY company_name
),
prod_2019 AS (
    SELECT company_name,
        COUNT(product_name) AS net_products
    FROM car_launches
    WHERE YEAR = 2019
    GROUP BY company_name
)
SELECT p2.company_name,
    (p2.net_products - p1.net_products) AS net_diff
FROM prod_2020 AS p2
    LEFT JOIN prod_2019 p1 ON p1.company_name = p2.company_name
     
-- inner join is also working but left join is safe to use cause what if the company
-- from 2019 gets discontinued next year

-- Alternative Approach
select company_name,
    sum(
        case
            when year = 2020 then 1
            else 0
        end
    ) - sum(
        case
            when year = 2019 then 1
            else 0
        end
    ) as net_diff
from car_launches
group by company_name