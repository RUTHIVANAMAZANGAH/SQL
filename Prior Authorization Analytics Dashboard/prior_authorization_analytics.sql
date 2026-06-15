-- =====================================================
-- Prior Authorization Analytics Dashboard
-- Synthetic Healthcare Dataset Based on Real-World Radiology Workflow
-- Author: Ruth Mazangah
-- Tools: SQL, SQLite, Tableau
-- =====================================================


-- =====================================================
-- 1. KPI METRICS
-- =====================================================

-- Query 1: How many total prior authorization records are in the dataset?

SELECT COUNT(*) AS total_prior_authorization
FROM prior_authorizations;

-- Query 2: What is the overall approval rate?

SELECT 
        COUNT(*) AS total_prior_authorization,
        SUM(CASE WHEN authorization_status = "Approved" THEN 1 ELSE 0 END) AS approved_authorizations,
        ROUND(100.0 *SUM(CASE WHEN authorization_status = "Approved" THEN 1 ELSE 0 END)  /COUNT(*),1) AS approval_rate
FROM prior_authorizations;

-- Query 3: What is the overall denial rate?

SELECT  COUNT(*) AS total_prior_authorization,
        SUM(CASE WHEN authorization_status = "Denied" THEN 1 ELSE 0 END) AS denied_authorizations,
        ROUND(100.0 *SUM(CASE WHEN authorization_status = "Denied" THEN 1 ELSE 0 END)  /COUNT(*),1) AS denial_rate
FROM prior_authorizations;

-- Query 4: What is the average turnaround time in days?

SELECT ROUND(AVG(turnaround_days),0) AS average_turnaround_time
FROM prior_authorizations;

-- =====================================================
-- 2. AUTHORIZATION STATUS ANALYSIS
-- =====================================================

-- Query 5: How many authorizations fall into each authorization status category?

SELECT  authorization_status,
        COUNT(*) AS number_authorizations
FROM prior_authorizations
GROUP BY authorization_status
ORDER BY number_authorizations DESC;

-- =====================================================
-- 3. PAYER ANALYSIS
-- =====================================================

-- Query 6: Which payers have the highest number of authorization requests?

SELECT  payer,
        COUNT(*) AS authorization_count
FROM prior_authorizations
GROUP BY payer
ORDER BY authorization_count DESC;

-- Query 7: What is the approval rate by payer?

SELECT payer,
       COUNT(*) AS total_prior_authorization,
       SUM(CASE WHEN authorization_status = "Approved" THEN 1 ELSE 0 END) AS approved_authorizations,
       ROUND(100.0 * SUM(CASE WHEN authorization_status = "Approved" THEN 1 ELSE 0 END)/COUNT(*),1) AS payer_approval_rate
FROM prior_authorizations 
GROUP BY payer
ORDER BY payer_approval_rate DESC;

-- Query 8: What is the denial rate by payer?

SELECT payer,
       COUNT(*) AS total_prior_authorization,
       SUM(CASE WHEN authorization_status = "Denied" THEN 1 ELSE 0 END) AS denied_authorizations,
       ROUND(100.0 * SUM(CASE WHEN authorization_status = "Denied" THEN 1 ELSE 0 END)/COUNT(*),1) AS payer_denial_rate
FROM prior_authorizations 
GROUP BY payer
ORDER BY payer_denial_rate DESC;

-- Query 9: Which payers have the longest average turnaround time?

SELECT payer,
       ROUND(AVG(turnaround_dayS),0) As average_turnaround_time
FROM prior_authorizations
GROUP BY payer
ORDER BY average_turnaround_time DESC;

-- =====================================================
-- 4. DENIAL MANAGEMENT ANALYSIS
-- =====================================================

-- Query 10: Which denial reasons occur most frequently?

SELECT denial_reason,
       COUNT(*) AS total_prior_authorization
FROM prior_authorizations
WHERE authorization_status = "Denied"
GROUP BY denial_reason
ORDER BY total_prior_authorization DESC;

-- Query 11: What is the denial rate for cases where clinical documentation was not received?

SELECT 
       COUNT(*) AS total_cases_missing_clinical_docs,
       SUM(CASE WHEN authorization_status = "Denied" THEN 1 ELSE 0 END) AS denied_cases_missing_clinical_docs,
       ROUND(100.0 * SUM(CASE WHEN authorization_status = "Denied" THEN 1 ELSE 0 END)/COUNT(*),1) AS denial_rate_missing_clinical_docs
FROM prior_authorizations
WHERE clinical_docs_received = "No";

-- Query 12: Which months had the highest denial rates?


SELECT strftime('%Y-%m', submission_date) AS submission_month,
       COUNT(*) AS total_prior_authorization,
       SUM(CASE WHEN authorization_status = "Denied" THEN 1 ELSE 0 END) AS denied_authorization,
       ROUND(100.0 * SUM(CASE WHEN authorization_status = "Denied" THEN 1 ELSE 0 END)/COUNT(*),1) AS denial_rate  
FROM prior_authorizations 
GROUP BY submission_month
ORDER BY submission_month DESC;

-- =====================================================
-- 5. PROCEDURE & MODALITY ANALYSIS
-- =====================================================

-- Query 13: Which procedures require prior authorization most frequently?

SELECT procedure_description,
       COUNT(*) AS total_prior_authorization
FROM prior_authorizations
WHERE authorization_required = "Yes"
GROUP BY procedure_description
ORDER BY total_prior_authorization DESC;

-- Query 14: Which procedure codes require authorization most often?

SELECT procedure_code,
       COUNT(*) AS total_prior_authorization
FROM prior_authorizations
WHERE authorization_required = "Yes"
GROUP BY procedure_code
ORDER BY total_prior_authorization DESC;

-- Query 15: What is the approval rate by imaging modality?

SELECT modality,
       COUNT(*) AS total_prior_authorization,
       SUM(CASE WHEN authorization_status = "Approved" THEN 1 ELSE 0 END) AS approved_authorizations,
       ROUND(100.0 * SUM(CASE WHEN authorization_status = "Approved" THEN 1 ELSE 0 END)/COUNT(*),1) AS modality_approved_rate
FROM prior_authorizations
GROUP BY modality
ORDER BY modality_approved_rate DESC;

-- =====================================================
-- 6. TURNAROUND TIME & URGENCY ANALYSIS
-- =====================================================

-- Query 16: What is the average turnaround time by urgency level?

SELECT  urgency,
        ROUND(AVG(turnaround_days),0) AS average_turnaround_time
FROM prior_authorizations
GROUP BY urgency
ORDER BY average_turnaround_time DESC;

-- Query 17: How many authorizations required peer-to-peer review?

SELECT COUNT(*) AS count_of_peer_to_peer_review
FROM prior_authorizations
WHERE Peer_to_peer_required = "Yes";

-- =====================================================
-- 7. PROVIDER ANALYSIS
-- =====================================================

-- Query 18: Which providers submit the most prior authorization requests?

SELECT ordering_provider_name,
       COUNT(*) AS total_prior_authorization
FROM prior_authorizations
GROUP BY ordering_provider_name
ORDER BY total_prior_authorization DESC;

-- Query 19: Which providers have the highest denial rates?

SELECT ordering_provider_name,
       COUNT(*) AS total_prior_authorization,
       SUM(CASE WHEN authorization_status = "Denied" THEN 1 ELSE 0 END) AS denied_authorizations,
       ROUND(100.0 * SUM(CASE WHEN authorization_status = "Denied" THEN 1 ELSE 0 END)/COUNT(*),1) AS provider_denial_rate
FROM prior_authorizations
GROUP BY ordering_provider_name
ORDER BY provider_denial_rate DESC;

-- =====================================================
-- 8. MONTHLY TREND ANALYSIS
-- =====================================================

-- Query 20: What is the monthly trend of authorization submissions?

SELECT strftime('%Y-%m', submission_date) AS submission_month,
       Count(*) AS authorization_submissions
FROM prior_authorizations
GROUP BY submission_month
ORDER BY submission_month;