-- Find All Posts Which Were Reacted To With A Heart (ID 10087)
-- Find all posts that received at least one 'heart' reaction.
-- Return the post_id and the number of hearts each post received.
-- Sort the result by number of hearts in descending order.

SELECT DISTINCT fp.*
FROM facebook_reactions fr
    INNER JOIN facebook_posts fp ON fp.post_id = fr.post_id
WHERE fr.reaction = 'heart'