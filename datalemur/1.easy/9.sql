-- Average Post Hiatus (Part 1)
-- For each user who posted at least twice in 2021, calculate the number of days between their first and last post in 2021.
-- Consider only posts made in 2021 and include users with more than one post.

SELECT
    user_id,
    max(post_date) :: date - min(post_date) :: date AS days_between 
    --We can also use round(EXTRACT(EPOCH FROM (MAX(post_date) - MIN(post_date))) / 86400,0) if we need precise time difference
FROM
    posts
WHERE
    EXTRACT(
        year
        FROM
            post_date
    ) = 2021
GROUP BY
    user_id
HAVING
    count(post_id) > 2