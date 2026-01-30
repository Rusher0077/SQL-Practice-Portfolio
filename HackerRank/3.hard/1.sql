-- Interviews
-- For each contest, calculate the total number of submissions, accepted submissions,
-- views, and unique views across all challenges belonging to that contest.
-- Only include contests where the sum of these four metrics is greater than zero.
-- Return contest_id, hacker_id, name, total_submissions, total_accepted_submissions,
-- total_views, and total_unique_views, ordered by contest_id ascending.

SELECT c.contest_id,
    c.hacker_id,
    c.name,
    SUM(sum_total_submissions),
    SUM(sum_total_accepted_submissions),
    SUM(sum_total_views),
    SUM(sum_total_unique_views)
FROM contests c
    INNER JOIN colleges co ON co.contest_id = c.contest_id
    INNER JOIN challenges ch ON ch.college_id = co.college_id
    LEFT JOIN (
        SELECT challenge_id,
            SUM(total_views) AS sum_total_views,
            SUM(total_unique_views) AS sum_total_unique_views
        FROM view_stats
        GROUP BY challenge_id
    ) vs ON vs.challenge_id = ch.challenge_id
    LEFT JOIN (
        SELECT challenge_id,
            SUM(total_submissions) AS sum_total_submissions,
            SUM(total_accepted_submissions) AS sum_total_accepted_submissions
        FROM submission_stats
        GROUP BY challenge_id
    ) ss ON ss.challenge_id = ch.challenge_id
GROUP BY c.contest_id,
    c.hacker_id,
    c.name
HAVING SUM(sum_total_submissions) + SUM(sum_total_accepted_submissions) + SUM(sum_total_views) + SUM(sum_total_unique_views) > 0
ORDER BY c.contest_id