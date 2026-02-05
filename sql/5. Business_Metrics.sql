-- Fraud rate overall
SELECT
COUNT(*) AS total_txn,
SUM(is_fraud) AS fraud_txn,
ROUND(SUM(is_fraud)/COUNT(*)*100,2) AS fraud_rate
FROM transactions;

-- Fraud rate by transaction type
SELECT transaction_type,
       COUNT(*) AS total_txn,
       SUM(is_fraud) AS fraud_txn,
       ROUND(SUM(is_fraud)/COUNT(*)*100,2) AS fraud_rate
FROM transactions
GROUP BY transaction_type
ORDER BY fraud_rate DESC;

-- Contribution of top fraud users
WITH fraud_users AS (
  SELECT sender_id, COUNT(*) AS fraud_count
  FROM transactions
  WHERE is_fraud = 1
  GROUP BY sender_id
)
SELECT
COUNT(*) AS fraud_users,
SUM(fraud_count) AS total_fraud_txn
FROM fraud_users;
