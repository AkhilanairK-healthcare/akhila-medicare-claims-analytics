# Data notes - CMS DE-SynPUF, Sample 1
Source: CMS Data Entrepreneurs Synthetic Public Use File (DE-SynPUF).
Synthetic data - no real patients. Safe to publish code and results.
Years: claims 2008-2010. Beneficiary file used: 2008.
Diagnoses are ICD-9 (the data predates ICD-10).
There is NO denial flag. Unpaid claim = paid amount of $0 (proxy).
Chronic flags: 1 = has condition, 2 = does not have condition.
Carrier paid amount = sum of LINE_NCH_PMT_AMT_1 to _13.
Join key everywhere: DESYNPUF_ID. Claim key: CLM_ID.
Row counts (fill in from 00_load_data.ipynb):
beneficiary = ___  inpatient = ___  outpatient = ___
carrier = ___  pde = ___
