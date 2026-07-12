-- Final Account Balance
-- Calculate the final balance for each account after applying all transactions.
-- Deposits increase the balance, while withdrawals decrease it.

SELECT
    account_id,
    d - w AS final_balance
FROM (
    SELECT
        account_id,
        SUM(CASE
                WHEN transaction_type = 'Deposit' THEN amount
                ELSE 0
            END) AS d,
        SUM(CASE
                WHEN transaction_type = 'Withdrawal' THEN amount
                ELSE 0
            END) AS w
    FROM transactions
    GROUP BY account_id
) AS t