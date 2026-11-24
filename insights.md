# Key findings - Medicare Claims Analysis
1. Inpatient drives spend: Inpatient accounts for $639,260,180 of
   $1,278,388,580 total paid (50.0%), with an average of $9,574 per
   claim - so a payer or hospital looking for cost control would
   start with inpatient care.
2. Cost is concentrated in a few diagnoses: the top ICD-9 code
   V5789 alone accounts for $28,649,590; the top 10 together
   account for $168,833,400 (13.2% of paid).
3. Unpaid claims are not evenly spread: Carrier claims are unpaid
   at 10.1%, vs 3.8% for Outpatient and 3.2% for Inpatient -
   measured as paid amount = $0 (proxy; no denial reasons exist
   in data).
4. Chronic cost gap: patients with Stroke/TIA cost on average
   $17,717.87 per year vs $12,883.60 overall cost per patient.
5. Repeat stays: 15,168 of 37,780 patients with an inpatient
   stay (40.15%) had 2 or more stays in 2008-2010.
Method note: every figure above is reproduced by the queries in
sql/ and cross-checked in notebooks/02.
