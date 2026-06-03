## Project Overview

This project analyzes 101,766 hospital encounters to identify readmission patterns, age groups with elevated readmission rates, specialty-level readmission trends, and average length of stay metrics.

## Objectives

- Analyze readmission rates
- Identify high-risk age groups
- Evaluate medical specialty performance
- Analyze average length of stay

## Tools Used

- SQLite
- Tableau

-- Write a query to count the total readmitted patient in the hsopital? 

SELECT COUNT(*)
FROM hospital_readmissions;

--How many patients were readmitted within 30 days, after 30 days, or not readmitted at all?

SELECT readmitted, COUNT(*) as patient_count
FROM hospital_readmissions
Group by readmitted 
Order by patient_count desc;

--What is the average number of days patients stay in the hospital?

SELECT  ROUND(AVG(time_in_hospital),2) as avg_lenght_of_stay
FROM hospital_readmissions;

-- Which age groups experience the highest number of readmissions?

SELECT age, COUNT(*) as total_admissions
FROM hospital_readmissions
WHERE readmitted <> "NO"
GROUP BY age
ORDER BY total_admissions desc;

--Which medical specialties see the highest patient volume?

SELECT medical_specialty , COUNT(*) as patient_volume
FROM hospital_readmissions 
WHERE medical_specialty <> "?"
GROUP by medical_specialty
ORDER BY patient_volume desc;

--How many readmitted patients does each specialty have

SELECT medical_specialty , COUNT(readmitted) AS readmission_rates
FROM hospital_readmissions
WHERE medical_specialty <> "?"
AND readmitted <> "NO"
GROUP BY medical_specialty 
ORDER BY readmission_rates desc;

--Which medical specialties have the highest readmission rates?

SELECT
    medical_specialty,
    COUNT(*) AS total_patient,
    SUM(CASE WHEN readmitted <> 'NO' THEN 1 ELSE 0 END) AS readmitted_patient,
    ROUND(100.0 * SUM(CASE WHEN readmitted <> 'NO' THEN 1 ELSE 0 END) / COUNT(*),2) AS readmission_rate_percent
FROM hospital_readmissions
WHERE medical_specialty <> '?'
GROUP BY medical_specialty
HAVING COUNT(*) >= 100
ORDER BY readmission_rate_percent DESC;

-- Which age group has the longest average hospital stay?

SELECT age, ROUND(AVG(time_in_hospital),2) as average_stay
FROM hospital_readmissions
GROUP BY age
ORDER BY average_stay desc;

--How many patients are in each age group?

SELECT  age , 
        COUNT(*) as total_patient
FROM hospital_readmissions
GROUP BY age
ORDER BY total_patient desc;

--Which age group has the highest readmission rate?

SELECT
    age,
    COUNT(*) AS patient_total,
    SUM(CASE WHEN readmitted <> 'NO' THEN 1 ELSE 0 END) AS readmitted_patient,
    ROUND(
        100 * SUM(CASE WHEN readmitted <> 'NO' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS readmission_rate_percent
FROM hospital_readmissions
GROUP BY age
ORDER BY readmission_rate_percent DESC;
