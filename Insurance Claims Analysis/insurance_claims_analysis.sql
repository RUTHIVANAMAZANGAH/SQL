-- ============================================
-- Insurance Claims Analysis
-- Author: Ruth Mazangah
-- Tool: SQLite
-- ============================================

-- ============================================
-- 1. CLAIM VOLUME ANALYSIS
-- ============================================

-- Query 1: How many insurance claims are in the dataset?

SELECT COUNT(*) AS total_claims
FROM insurance_claims;


-- ============================================
-- 2. FINANCIAL ANALYSIS
-- ============================================

-- Query 2: What is the total billed amount?

SELECT SUM("Billed Amount") AS total_billed_amount
FROM insurance_claims;

-- Query 3: What is the average claim amount?

SELECT ROUND(AVG("Billed Amount"), 0) AS avg_claim_amount
FROM insurance_claims;

-- Query 4: Which claims have the highest billed amounts?

SELECT "Claim ID",
       "Provider ID",
       "Insurance Type",
       "Diagnosis Code",
       "Billed Amount"
FROM insurance_claims
ORDER BY "Billed Amount" DESC;


-- ============================================
-- 3. PROVIDER ANALYSIS
-- ============================================

-- Query 5: Which providers submit the most claims?

SELECT "Provider ID",
       COUNT(*) AS number_of_claims
FROM insurance_claims
GROUP BY "Provider ID"
ORDER BY number_of_claims DESC;


-- ============================================
-- 4. PAYER MIX ANALYSIS
-- ============================================

-- Query 6: How many claims come from each insurance type?

SELECT "Insurance Type",
       COUNT(*) AS number_of_claims
FROM insurance_claims
GROUP BY "Insurance Type"
ORDER BY number_of_claims DESC;


-- ============================================
-- 5. CLAIM STATUS & DENIAL ANALYSIS
-- ============================================

-- Query 7: How many claims are Paid, Denied, or Under Review?

SELECT "Claim Status",
       COUNT(*) AS number_of_claims
FROM insurance_claims
GROUP BY "Claim Status"
ORDER BY number_of_claims DESC;

-- Query 8: What are the most common denial reasons?

SELECT "Reason Code" AS denial_reason,
       COUNT(*) AS number_of_claims
FROM insurance_claims
WHERE "Claim Status" = 'Denied'
GROUP BY "Reason Code"
ORDER BY number_of_claims DESC;

-- Query 9: What is the claim approval rate?

SELECT 
    COUNT(*) AS total_claims,
    SUM(CASE WHEN "Claim Status" = 'Paid' THEN 1 ELSE 0 END) AS paid_claims,
    ROUND(
        100 * SUM(CASE WHEN "Claim Status" = 'Paid' THEN 1 ELSE 0 END) / COUNT(*),
        1) AS approval_rate_percentage
FROM insurance_claims;


-- ============================================
-- 6. DIAGNOSIS & PROCEDURE ANALYSIS
-- ============================================

-- Query 10: Which diagnosis codes appear most often?

SELECT "Diagnosis Code",
       COUNT(*) AS claim_count
FROM insurance_claims
GROUP BY "Diagnosis Code"
ORDER BY claim_count DESC;

-- Query 11: Which procedure codes generate the highest billed amounts?

SELECT "Procedure Code",
       SUM("Billed Amount") AS highest_billed_amount
FROM insurance_claims
GROUP BY "Procedure Code"
ORDER BY highest_billed_amount DESC;











