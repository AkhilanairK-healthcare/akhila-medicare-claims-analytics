-- Q11: Repeat admissions, patients with 2 or more inpatient stays
WITH stays AS (
  SELECT patient_id, COUNT(*) AS stay_count
  FROM all_claims
  WHERE claim_type = 'Inpatient'
  GROUP BY patient_id)
SELECT COUNT(*) AS patients_with_any_stay,
  SUM(CASE WHEN stay_count >= 2 THEN 1 ELSE 0 END) AS patients_with_repeat_stays,
  ROUND(100.0 * SUM(CASE WHEN stay_count >= 2 THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_repeat
FROM stays;
