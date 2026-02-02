-- Pages With No Likes
-- find pages that have zero user likes
SELECT page_id
FROM (
        SELECT DISTINCT p.page_id,
            COUNT(pl.user_id) OVER (
                PARTITION BY p.page_id
            ) AS likes
        FROM pages p
            LEFT JOIN page_likes pl ON pl.page_id = p.page_id
    ) t
WHERE likes = 0
ORDER BY page_id