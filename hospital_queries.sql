-- Task 1: The HRRP Baseline (Total Penalty Rate)
SELECT
    (ROUND(AVG(target_readmitted) * 100, 2) || '%') AS percent_of_penalized_readmissions
FROM 
    patients;

-- Task 2: The Medication Hypothesis
SELECT 
    medical_cohort, 
    (ROUND(AVG(target_readmitted) * 100, 2) || '%') AS avg_penalized_readmissions_rate
FROM    
    patients
GROUP BY 
    medical_cohort
ORDER BY 
    AVG(target_readmitted) DESC;

-- Task 3: The Socioeconomic Signal
SELECT
    payer_code, 
    (ROUND(AVG(target_readmitted) * 100, 2) || '%') AS avg_penalized_readmissions_rate
FROM 
    patients
GROUP BY 
    payer_code
ORDER BY 
    AVG(target_readmitted) DESC;

-- Task 4: Clinical Intersections
SELECT 
    A1CResult, 
    COUNT(*) AS total_patients, 
    (ROUND(AVG(target_readmitted) * 100, 2) || '%') AS avg_penalized_readmissions_rate
FROM 
    patients
WHERE 
    medical_cohort in ('21-30 Meds', '30+ Meds')
GROUP BY 
    A1Cresult
ORDER BY 
    AVG(target_readmitted) DESC
