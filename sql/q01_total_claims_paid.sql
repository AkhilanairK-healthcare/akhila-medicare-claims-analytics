-- Q1: Total claims and total paid
SELECT COUNT(*) AS total_claims,
  SUM(paid_amt) AS total_paid,
  AVG(paid_amt) AS avg_paid_per_claim
FROM all_claims;
