-- Spotify Streaming History 
-- Calculate the total number of times each user has played each song up to August 4th, 2022.
-- Combine data from songs_history (up to July 31) and songs_weekly (only include listens on or before August 4).
-- Return user_id, song_id, and song_plays (cumulative count).
-- Sort by song_plays in descending order.

SELECT user_id,
    song_id,
    SUM(song_plays) AS song_count
FROM (
        SELECT 
            user_id,
            song_id,
            song_plays
        FROM songs_history

        UNION ALL       --Union places both tables on top of each other

        SELECT 
            user_id,
            song_id,
            COUNT(*) AS song_plays
        FROM songs_weekly
        WHERE listen_time < '2022-08-05'
        GROUP BY user_id,
            song_id
    ) t
GROUP BY 
    user_id,
    song_id
ORDER BY song_count DESC;