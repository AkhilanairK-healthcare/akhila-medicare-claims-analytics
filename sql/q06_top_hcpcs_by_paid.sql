-- Q6: Top 10 procedures (HCPCS, first-listed) by total paid
SELECT hcpcs1 AS hcpcs_code, COUNT(*) AS claims,
  SUM(paid_amt) AS total_paid
FROM all_claims
WHERE hcpcs1 IS NOT NULL AND hcpcs1 <> ''
GROUP BY hcpcs1
ORDER BY total_paid DESC
LIMIT 10;
