-- Q7: Top 10 DRGs, inpatient only
SELECT CLM_DRG_CD AS drg_code, COUNT(*) AS stays,
  SUM(CLM_PMT_AMT) AS total_paid,
  AVG(CLM_PMT_AMT) AS avg_paid_per_stay
FROM inpatient
WHERE CLM_DRG_CD IS NOT NULL AND CLM_DRG_CD <> ''
GROUP BY CLM_DRG_CD
ORDER BY total_paid DESC
LIMIT 10;
