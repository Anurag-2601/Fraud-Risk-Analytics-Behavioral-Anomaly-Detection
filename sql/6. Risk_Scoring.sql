WITH risk_base AS (
  SELECT *,
    CASE WHEN balance_mismatch = 1 THEN 30 ELSE 0 END +
    CASE WHEN extreme_amt = 1 THEN 25 ELSE 0 END +
    CASE WHEN zero_balance_flag = 1 THEN 20 ELSE 0 END +
    CASE WHEN amount > 100000 THEN 15 ELSE 0 END +
    CASE WHEN is_flagged_fraud = 1 THEN 10 ELSE 0 END AS risk_score
  FROM transactions
)
SELECT *,
CASE
  WHEN risk_score >= 70 THEN 'HIGH'
  WHEN risk_score >= 40 THEN 'MEDIUM'
  ELSE 'LOW'
END AS risk_category
FROM risk_base;
