-- Bonus: Prescription drug events, top products
SELECT PROD_SRVC_ID, COUNT(*) AS events,
  SUM(TOT_RX_CST_AMT) AS total_drug_cost,
  SUM(PTNT_PAY_AMT) AS patient_paid
FROM pde
GROUP BY PROD_SRVC_ID
ORDER BY events DESC
LIMIT 10;
