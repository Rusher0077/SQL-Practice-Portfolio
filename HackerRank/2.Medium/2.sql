-- Occupations
-- Pivot names into columns by occupation (Doctor Professor Singer Actor) with alphabetical sorting
-- and NULL padding
SELECT MAX(
        CASE
            WHEN occupation = 'Doctor' THEN name
        END
    ) AS Doctor,
    MAX(
        CASE
            WHEN occupation = 'Professor' THEN name
        END
    ) AS Professor,
    MAX(
        CASE
            WHEN occupation = 'Singer' THEN name
        END
    ) AS Singer,
    MAX(
        CASE
            WHEN occupation = 'Actor' THEN name
        END
    ) AS Actor
FROM (
        SELECT name,
            occupation,
            ROW_NUMBER() OVER (
                PARTITION BY occupation
                ORDER BY name
            ) AS rn
        FROM occupations
    ) t
GROUP BY rn
ORDER BY rn