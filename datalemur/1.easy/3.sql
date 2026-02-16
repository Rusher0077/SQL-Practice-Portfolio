-- Pages With No Likes
-- find pages that have zero user likes
SELECT page_id
FROM (
        SELECT p.page_id,
            COUNT(pl.user_id) AS cnt
        FROM pages p
            LEFT JOIN page_likes pl ON pl.page_id = p.page_id
        GROUP BY p.page_id
    ) t
WHERE cnt = 0
ORDER BY page_id