-- Users to block immediately
SELECT sender_id,
       COUNT(*) AS total_txn,
       SUM(is_fraud) AS fraud_txn,
       ROUND(SUM(is_fraud)/COUNT(*)*100,2) AS fraud_rate
FROM transactions
GROUP BY sender_id
HAVING SUM(is_fraud) >= 1
   AND COUNT(*) >= 2
ORDER BY fraud_rate DESC;

-- High risk transactions for manual review
SELECT transaction_id, sender_id, amount, risk_score
FROM (
    SELECT transaction_id, sender_id, amount,
           CASE
             WHEN balance_mismatch = 1 THEN 30 ELSE 0 END +
           CASE WHEN extreme_amt = 1 THEN 25 ELSE 0 END +
           CASE WHEN zero_balance_flag = 1 THEN 20 ELSE 0 END AS risk_score
    FROM transactions
) t
WHERE risk_score >= 50;
