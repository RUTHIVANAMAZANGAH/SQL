# Prior Authorization Analytics Dashboard

---

## Project Overview

This project analyzes prior authorization requests using a synthetic healthcare dataset modeled after real-world radiology authorization workflows. The analysis focuses on authorization performance, denial management, payer trends, turnaround times, provider activity, and operational efficiency.

The goal of this project is to demonstrate how SQL and Tableau can be used to support healthcare operations, improve revenue cycle performance, identify authorization bottlenecks, and provide actionable insights for leadership decision-making.

---

## Business Problem

Prior authorization is a critical component of the healthcare revenue cycle. Delays, denials, missing documentation, and payer-specific requirements can impact patient care, reimbursement timelines, and operational efficiency.

Healthcare organizations need visibility into:

* Authorization approval and denial rates
* Payer-specific authorization performance
* Common denial reasons
* Authorization turnaround times
* High-volume procedures requiring authorization
* Provider authorization patterns
* Monthly authorization trends

This project provides a data-driven approach to evaluating authorization performance and identifying opportunities for process improvement.

---

## Tools Used

* SQL
* SQLite
* Tableau
* Healthcare Analytics
* Revenue Cycle Analytics
* Data Visualization

---

## Dataset Information

**Dataset Type:** Synthetic Healthcare Dataset Based on Real-World Prior Authorization Workflow

**Records:** 5,000 Prior Authorization Requests

### Key Fields

* Authorization ID
* Submission Date
* Authorization Status
* Payer
* Procedure Code
* Procedure Description
* Ordering Provider
* Turnaround Days
* Denial Reason
* Modality
* Urgency
* Peer-to-Peer Required
* Clinical Documentation Received

---

## Key Business Questions

### Authorization Performance

1. How many total prior authorization records are in the dataset?
2. What is the overall approval rate?
3. What is the overall denial rate?
4. What is the average turnaround time in days?

### Authorization Status Analysis

5. How many authorizations fall into each authorization status category?

### Payer Analysis

6. Which payers have the highest number of authorization requests?
7. What is the approval rate by payer?
8. What is the denial rate by payer?
9. Which payers have the longest average turnaround times?

### Denial Management Analysis

10. Which denial reasons occur most frequently?
11. What is the denial rate for cases where clinical documentation was not received?
12. Which months had the highest denial rates?

### Procedure & Modality Analysis

13. Which procedures require prior authorization most frequently?
14. Which procedure codes require authorization most often?
15. What is the approval rate by imaging modality?

### Workflow & Operational Analysis

16. What is the average turnaround time by urgency level?
17. How many authorizations required peer-to-peer review?

### Provider Analysis

18. Which providers submit the most prior authorization requests?
19. Which providers have the highest denial rates?

### Trend Analysis

20. What is the monthly trend of authorization submissions?

---

## Key Findings

### Authorization Performance

* Total Prior Authorizations: 5,000
* Overall Approval Rate: 55.8%
* Overall Denial Rate: 17.9%
* Average Turnaround Time: 8 Days

### Payer Performance

* UnitedHealthcare generated the highest authorization volume.
* MetroPlus Health had the highest denial rate.
* MetroPlus Health also had the longest average turnaround time.

### Denial Management

* Medical Necessity Not Met was the most common denial reason.
* Missing Clinical Documentation was the second most common denial reason.
* Requests missing clinical documentation experienced a denial rate of 36.1%, approximately double the overall denial rate.

### Procedure Analysis

* MRI Lumbar Spine Without Contrast generated the highest authorization volume.
* MRI services represented the largest share of authorization requests.

### Workflow Analysis

* 206 authorization requests required peer-to-peer review.
* Routine requests experienced the longest turnaround times compared to Urgent and STAT requests.

---

## Tableau Dashboard

### KPIs

* Total Authorizations
* Approval Rate
* Denial Rate
* Average Turnaround Days

### Visualizations

* Authorization Status Distribution
* Approval Rate by Payer
* Denial Rate by Payer
* Turnaround Time by Payer
* Top Denial Reasons
* Monthly Authorization Trend
* Top Procedures Requiring Authorization

---

## Dashboard Preview

![Prior Authorization Analytics Dashboard](prior_authorization_analytics_dashboard.png)

---

## Files Included

* README.md
* prior_authorization_analytics.sql
* prior_authorization_analytics_dashboard.png

---

## Skills Demonstrated

### SQL Skills

* Aggregations
* CASE WHEN Logic
* GROUP BY
* ORDER BY
* Date Functions
* KPI Calculations
* Conditional Analysis

### Healthcare Analytics Skills

* Prior Authorization Analysis
* Denial Management
* Revenue Cycle Analytics
* Payer Performance Analysis
* Provider Analysis
* Turnaround Time Analysis
* Workflow Optimization

### Tableau Skills

* KPI Development
* Interactive Dashboard Design
* Healthcare Data Visualization
* Executive Reporting

---

## Author

**Ruth Mazangah**

Healthcare Data Analyst | SQL | Tableau | Revenue Cycle Analytics | Healthcare Analytics

GitHub Portfolio:
https://github.com/RUTHIVANAMAZANGAH

LinkedIn:
(https://www.linkedin.com/in/ruth-mazangah-866699105/)

---
