-- ============================================
-- MIMIC-IV Patient Outcomes Analysis
-- Author: Ruth Mazangah
-- Tool: SQL (SQLite)
-- Dataset: MIMIC-IV Demo Dataset
-- ============================================


-- ============================================
-- 1. PATIENT POPULATION OVERVIEW
-- ============================================

-- Query 1: How many unique patients are in the dataset?

SELECT COUNT(DISTINCT subject_id) AS number_of_patients
FROM mimic_patients;

-- Query 2: How many hospital admissions occurred?

SELECT COUNT(hadm_id) AS number_of_admissions
FROM mimic_admissions;

-- Query 3: What is the average patient age?

SELECT ROUND(AVG(anchor_age), 0) AS avg_patient_age
FROM mimic_patients;

-- Query 4: How many patients are Male vs Female?

SELECT gender,
       COUNT(*) AS number_of_patients
FROM mimic_patients
GROUP BY gender
ORDER BY number_of_patients DESC;


-- ============================================
-- 2. ADMISSION & UTILIZATION ANALYSIS
-- ============================================

-- Query 5: What are the most common admission types?

SELECT admission_type AS most_common_admission_types,
       COUNT(*) AS number_of_admissions
FROM mimic_admissions
GROUP BY admission_type
ORDER BY number_of_admissions DESC;

-- Query 6: Which admission locations send the most patients to the hospital?

SELECT admission_location,
       COUNT(*) AS patient_count
FROM mimic_admissions
GROUP BY admission_location
ORDER BY patient_count DESC;

-- Query 7: What insurance types are most common?

SELECT insurance,
       COUNT(*) AS most_common_used_insurance
FROM mimic_admissions
GROUP BY insurance
ORDER BY most_common_used_insurance DESC;


-- ============================================
-- 3. DISCHARGE & CARE TRANSITION ANALYSIS
-- ============================================

-- Query 8: What are the most common discharge locations?

SELECT discharge_location AS most_common_discharge_locations,
       COUNT(*) AS patient_count
FROM mimic_admissions
WHERE discharge_location <> ''
GROUP BY discharge_location
ORDER BY patient_count DESC;


-- ============================================
-- 4. MORTALITY & OUTCOMES ANALYSIS
-- ============================================

-- Query 9: What percentage of admissions resulted in in-hospital death?

SELECT COUNT(*) AS patient_count,
       SUM(CASE WHEN hospital_expire_flag = '1' THEN 1 ELSE 0 END) AS number_of_death,
       ROUND(100.0 * SUM(CASE WHEN hospital_expire_flag = '1' THEN 1 ELSE 0 END) / COUNT(*), 0) AS mortality_percent
FROM mimic_admissions;

-- Query 10: Which admission type has the highest mortality rate?

SELECT admission_type,
       COUNT(*) AS patient_count,
       SUM(CASE WHEN hospital_expire_flag = '1' THEN 1 ELSE 0 END) AS number_of_death,
       ROUND(100.0 * SUM(CASE WHEN hospital_expire_flag = '1' THEN 1 ELSE 0 END) / COUNT(*), 1) AS mortality_rate
FROM mimic_admissions
GROUP BY admission_type
ORDER BY mortality_rate DESC;

-- Query 11: Which insurance type has the highest mortality rate?

SELECT insurance,
       COUNT(*) AS patient_count,
       SUM(CASE WHEN hospital_expire_flag = '1' THEN 1 ELSE 0 END) AS number_of_death,
       ROUND(100.0 * SUM(CASE WHEN hospital_expire_flag = '1' THEN 1 ELSE 0 END) / COUNT(*), 1) AS mortality_rate
FROM mimic_admissions
GROUP BY insurance
ORDER BY mortality_rate DESC;

-- Query 12: Mortality rate by admission source

SELECT admission_location,
       COUNT(*) AS patient_count,
       SUM(CASE WHEN hospital_expire_flag = '1' THEN 1 ELSE 0 END) AS number_of_death,
       ROUND(100.0 * SUM(CASE WHEN hospital_expire_flag = '1' THEN 1 ELSE 0 END) / COUNT(*), 1) AS mortality_rate
FROM mimic_admissions
WHERE admission_location <> 'INFORMATION NOT AVAILABLE'
GROUP BY admission_location
ORDER BY mortality_rate DESC;


-- ============================================
-- 5. JOIN-BASED PATIENT ANALYSIS
-- ============================================

-- Query 13: What is the average age by admission type?

SELECT adm.admission_type,
       ROUND(AVG(pa.anchor_age), 0) AS average_age
FROM mimic_patients AS pa
JOIN mimic_admissions AS adm
ON pa.subject_id = adm.subject_id
GROUP BY adm.admission_type
ORDER BY average_age DESC;