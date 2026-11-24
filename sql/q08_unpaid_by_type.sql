-- Q8: Unpaid claims ($0 paid) by claim type
SELECT claim_type, COUNT(*) AS total_claims,
  SUM(CASE WHEN paid_amt = 0 THEN 1 ELSE 0 END) AS unpaid_claims,
  ROUND(100.0 * SUM(CASE WHEN paid_amt = 0 THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_unpaid
FROM all_claims
GROUP BY claim_type
ORDER BY pct_unpaid DESC;
