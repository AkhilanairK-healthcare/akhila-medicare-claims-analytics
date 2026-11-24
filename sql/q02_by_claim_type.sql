-- Q2: Claims and paid by claim type
SELECT claim_type, COUNT(*) AS claims,
  SUM(paid_amt) AS total_paid,
  AVG(paid_amt) AS avg_paid_per_claim,
  ROUND(100.0 * SUM(paid_amt) / (SELECT SUM(paid_amt) FROM all_claims), 1) AS pct_of_total_paid
FROM all_claims
GROUP BY claim_type
ORDER BY total_paid DESC;
