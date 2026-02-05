SELECT transaction_type, COUNT(*) AS total_txn
FROM transactions
GROUP BY transaction_type;

SELECT
CASE
  WHEN amount < 1000 THEN 'Low'
  WHEN amount BETWEEN 1000 AND 10000 THEN 'Medium'
  WHEN amount BETWEEN 10000 AND 100000 THEN 'High'
  ELSE 'Very High'
END AS amount_bucket,
COUNT(*) AS total_txn,
SUM(is_fraud) AS fraud_txn
FROM transactions
GROUP BY amount_bucket;

SELECT step,
       COUNT(*) AS total_txn,
       SUM(is_fraud) AS fraud_txn,
       ROUND(SUM(is_fraud)/COUNT(*)*100,2) AS fraud_rate
FROM transactions
GROUP BY step
ORDER BY step;

