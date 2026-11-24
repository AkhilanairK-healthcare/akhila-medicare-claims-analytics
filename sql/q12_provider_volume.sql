-- Q12: Highest-volume providers
SELECT provider_id, claim_type, COUNT(*) AS claims,
  SUM(paid_amt) AS total_paid
FROM all_claims
WHERE provider_id IS NOT NULL AND provider_id <> ''
GROUP BY provider_id, claim_type
ORDER BY claims DESC
LIMIT 15;
