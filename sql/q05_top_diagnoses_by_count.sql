-- Q5: Top 10 diagnoses (ICD-9) by number of claims
SELECT diag1 AS icd9_code, COUNT(*) AS claims,
  SUM(paid_amt) AS total_paid
FROM all_claims
WHERE diag1 IS NOT NULL AND diag1 <> ''
GROUP BY diag1
ORDER BY claims DESC
LIMIT 10;
