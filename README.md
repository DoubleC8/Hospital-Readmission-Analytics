# Healthcare: Hospital Readmission Diagnostic

## Executive Summary

Analyzed over 100,000 patient records from 130 US hospitals to identify the primary drivers of 30-day readmissions, a metric tied to heavy financial penalties under the HRRP. Discovered that polypharmacy (prescribing 21+ medications) and lack of insurance tracking ('Unknown' payer codes) are massive predictors of patient bounce-back.

**[Tableau Dashboard](https://public.tableau.com/app/profile/chris.cortes2425/viz/HRRP30-DayReadmissionDiagnostic/HRRP30-DayReadmissionDiagnostic)**

## The Business Problem

The hospital network is facing government financial penalties due to high 30-day patient readmission rates. The objective of this project is to analyze patient demographics, administrative data, and initial diagnoses to predict which factors most heavily contribute to readmission, allowing the hospital to implement targeted preventative measures before discharge.

## Methodology & Skills

- **Data Engineering (Python/Pandas):** Handled heavy missingness in clinical datasets. Engineered categorical bins for medication counts and preserved crucial clinical signals by re-categorizing null lab results rather than dropping them.
- **Diagnostic Analytics (SQL):** Queried a relational database using `GROUP BY` and conditional aggregations to isolate high-risk cohorts and calculate baseline penalty rates.
- **Data Visualization (Tableau):** Designed an interactive diagnostic dashboard utilizing pre-attentive attributes to highlight critical risk factors for hospital executives.

## Key Insights

1. **The Polypharmacy Danger:** Patients prescribed 21-30 medications and 30+ medications exhibited the highest readmission penalty rates (~12.8%). The risk scales almost perfectly linearly with the number of medications prescribed.
2. **The Socioeconomic Blindspot:** The 'Unknown' insurance category represents a massive patient volume and carries a disproportionately high readmission rate compared to standard commercial insurance.
3. **The "Not Tested" Signal:** Patients who were _not_ tested for A1C (blood sugar) bounced back at higher rates than those who tested with normal levels, indicating a potential blind spot in the initial triage process.

## Strategic Recommendations

1. **Mandatory Polypharmacy Consults:** Any patient flagged for discharge with 21 or more medications must receive a mandatory pharmacist consultation to prevent adverse drug interactions and ensure patient comprehension at home.
2. **Discharge Case Management:** Patients with an 'Unknown' payer code should be automatically flagged for review by a hospital social worker prior to discharge to ensure they have the resources necessary for post-acute care.
