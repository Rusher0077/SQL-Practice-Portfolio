-- User's Third Transaction 
-- For each user, find their third transaction ordered by transaction_date ascending.
-- Return user_id, spend, and transaction_date.
-- Only include users who have at least 3 transactions.


SELECT user_id,
    spend,
    transaction_date
FROM (
        SELECT user_id,
            spend,
            transaction_date,
            ROW_NUMBER() OVER (
                PARTITION BY user_id
                ORDER BY transaction_date
            ) AS user_rank
        FROM transactions
    ) t
WHERE user_rank = 3