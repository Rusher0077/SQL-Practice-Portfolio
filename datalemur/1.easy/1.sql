-- Histogram of Tweets
-- Count how many tweets each user posts per day.
-- Build a histogram showing the tweet count and how many users fall into each count.

select cnt_tweet as tweet_bucket,
  count(user_id) as cnt_user
from(
    select DISTINCT user_id,
      count(tweet_id) over (PARTITION by user_id) as cnt_tweet
    from tweets
    where tweet_date between '01/01/2022' and '01/01/2023'
  ) t
group by cnt_tweet