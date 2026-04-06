-- Invalid Tweets
-- Find the IDs of the invalid tweets (content of the tweet is strictly greater than 15.)

SELECT tweet_id
FROM tweets
WHERE len (content) > 15