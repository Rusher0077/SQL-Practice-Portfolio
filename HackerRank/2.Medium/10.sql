-- Ollivander 's Inventory
-- For each wand power and wizard age, select the cheapest non-evil wand. 
-- Display wand ID, age, coins_needed, and power, ordered by power desc and age desc.
SELECT w.id,
    wp.age,
    w.coins_needed,
    w.power
FROM wands w
    JOIN wands_property wp ON wp.code = w.code
WHERE is_evil = 0
    AND coins_needed = (
        SELECT MIN(w1.coins_needed) AS coins
        FROM wands w1
            JOIN wands_property wp1 ON wp1.code = w1.code
        WHERE is_evil = 0
            AND w1.power = w.power
            AND wp1.age = wp.age
    )
ORDER BY w.power DESC,
    wp.age DESC