-- Finding null values
SELECT *
FROM transactions
WHERE sender_id IS NULL
   OR receiver_id IS NULL
   OR amount IS NULL;

-- Remove zero or null critical fields
DELETE FROM transactions
WHERE transaction_id IN (
    SELECT transaction_id
    FROM (
        SELECT transaction_id
        FROM transactions
        WHERE sender_id IS NULL
           OR receiver_id IS NULL
           OR amount IS NULL
    ) AS temp
);

-- Creating index as this will take a lot of time to execute
-- Index speeds up data retrieval
CREATE INDEX idx_txn_dedup
ON transactions (step, amount, sender_id, receiver_id, transaction_id);

-- Finding Duplicate Values
SELECT transaction_id FROM (
    SELECT transaction_id,
	ROW_NUMBER() OVER (PARTITION BY step, amount, sender_id, receiver_id ORDER BY transaction_id
        ) AS rn
    FROM transactions
) t
WHERE rn > 1;

-- Remove exact duplicates (defensive cleaning)
DELETE FROM transactions
WHERE transaction_id IN (
SELECT transaction_id FROM (
	SELECT transaction_id,
	ROW_NUMBER() OVER (PARTITION BY step, amount, sender_id, receiver_id ORDER BY transaction_id
	) AS rn
	FROM transactions
    ) x
    WHERE rn > 1
);

-- Deleting rows where amount is equal to zero
DELETE FROM transactions WHERE amount < 0;

-- Inconsistent Balance
SELECT COUNT(*) AS inconsistent_balance
FROM transactions
WHERE ABS((sender_balance_before - amount) - sender_balance_after) > 0.01;