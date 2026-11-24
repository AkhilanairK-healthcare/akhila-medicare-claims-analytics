-- Q9: Cost per patient
SELECT COUNT(DISTINCT patient_id) AS patients_with_claims,
  SUM(paid_amt) AS total_paid,
  ROUND(SUM(paid_amt) / COUNT(DISTINCT patient_id), 2) AS cost_per_patient
FROM all_claims;
