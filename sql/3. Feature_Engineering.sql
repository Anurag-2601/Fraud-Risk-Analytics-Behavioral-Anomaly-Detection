set sql_safe_updates = 0;

-- Adding column Balance Mismatch
ALTER TABLE transactions ADD COLUMN balance_mismatch TINYINT;

UPDATE transactions
SET balance_mismatch =
    CASE
        WHEN ABS((sender_balance_before - amount) - sender_balance_after) > 0.01
        THEN 1
        ELSE 0
    END
WHERE transaction_id IS NOT NULL;

-- Flag extreme transaction amounts using 3-sigma rule
SELECT
    AVG(amount) + 3 * STDDEV(amount) AS threshold
FROM transactions;

SELECT COUNT(*) AS extreme_count
FROM transactions
WHERE amount > (
    SELECT AVG(amount) + 3 * STDDEV(amount)
    FROM transactions
);

-- Updating the Table with column name Extreme Amount
UPDATE transactions
SET extreme_amt = 1
WHERE amount > 1991436.45;

UPDATE transactions
SET extreme_amt = 0
WHERE amount <= 1991436.45;

-- Adding Column for Zero Balance Flag
ALTER TABLE transactions ADD COLUMN zero_balance_flag TINYINT;

UPDATE transactions
SET zero_balance_flag =
CASE WHEN sender_balance_after = 0 THEN 1 ELSE 0 END;
