-- Teams Power Users
-- Identify the top 2 power users who sent the highest number of messages on Microsoft Teams in August 2022.
-- Return the sender_id and the total number of messages sent, ordered by message count descending.

SELECT
  sender_id,
  COUNT(message_id)
FROM
  messages
WHERE
  sent_date >= '2022-08-01'
  AND sent_date < '2022-09-01'
GROUP BY
  sender_id
ORDER BY
  COUNT(message_id) DESC
LIMIT
  2