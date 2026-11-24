-- Q3: Claims and paid by year
SELECT SUBSTR(CAST(thru_dt AS TEXT), 1, 4) AS claim_year,
  COUNT(*) AS claims, SUM(paid_amt) AS total_paid
FROM all_claims
GROUP BY claim_year
ORDER BY claim_year;
