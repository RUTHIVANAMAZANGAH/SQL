Prior Authorization Analytics Dashboard
Project Overview

This project analyzes prior authorization requests using a synthetic healthcare dataset modeled after real-world radiology authorization workflows. The objective was to evaluate authorization performance, denial trends, payer behavior, turnaround times, and operational efficiency using SQL and Tableau.

Prior authorization is a critical component of the healthcare revenue cycle. Delays, denials, and documentation issues can impact patient care, reimbursement timelines, and organizational performance. This project demonstrates how healthcare data analytics can be used to identify operational trends and support data-driven decision-making.

Business Problem

Healthcare organizations process thousands of prior authorization requests each year. Revenue cycle leaders need visibility into:

Authorization approval and denial rates
Payer-specific performance
Common denial reasons
Authorization turnaround times
High-volume procedures requiring authorization
Provider authorization patterns
Monthly authorization trends

Without data-driven analysis, delays and denials may negatively affect patient care, operational efficiency, and reimbursement performance.

Project Objectives

The goal of this project was to:

Measure overall authorization performance
Analyze approval and denial trends
Evaluate payer-specific authorization outcomes
Identify common denial drivers
Analyze turnaround times and workflow efficiency
Monitor authorization volume by procedure and provider
Identify opportunities to improve revenue cycle operations
Tools Used
SQL
SQLite
Tableau
Healthcare Analytics
Revenue Cycle Analytics
Data Visualization
Dataset

Dataset Type:

Synthetic Healthcare Dataset Based on Real-World Prior Authorization Workflow

Dataset Size:

5,000 Prior Authorization Records

Key Fields Included:

Authorization ID
Submission Date
Authorization Status
Payer
Procedure Code
Procedure Description
Ordering Provider
Turnaround Days
Denial Reason
Modality
Urgency Level
Peer-to-Peer Requirement
Clinical Documentation Received
Key Business Questions
KPI Analysis
How many total prior authorization records are in the dataset?
What is the overall approval rate?
What is the overall denial rate?
What is the average turnaround time?
Authorization Status Analysis
How many authorizations fall into each authorization status category?
Payer Analysis
Which payers receive the highest authorization volume?
What is the approval rate by payer?
What is the denial rate by payer?
Which payers have the longest turnaround times?
Denial Management Analysis
Which denial reasons occur most frequently?
What is the denial rate when clinical documentation is missing?
Which months have the highest denial rates?
Procedure & Modality Analysis
Which procedures require authorization most frequently?
Which procedure codes require authorization most often?
What is the approval rate by imaging modality?
Workflow & Operations Analysis
What is the average turnaround time by urgency level?
How many authorizations required peer-to-peer review?
Provider Analysis
Which providers submit the most authorization requests?
Which providers have the highest denial rates?
Trend Analysis
What is the monthly trend of authorization submissions?
Key Findings
Authorization Performance
Total Prior Authorizations: 5,000
Overall Approval Rate: 55.8%
Overall Denial Rate: 17.9%
Average Turnaround Time: 8 Days
Payer Performance
UnitedHealthcare had the highest authorization volume.
MetroPlus Health had the highest denial rate.
MetroPlus Health also had the longest average turnaround time.
Denial Management
Medical Necessity Not Met was the most common denial reason.
Missing Clinical Documentation was the second most common denial reason.
Cases missing clinical documentation experienced a denial rate of 36.1%, approximately double the overall denial rate.
Procedure Analysis
MRI Lumbar Spine Without Contrast generated the highest authorization volume.
MRI services represented the largest authorization workload.
Workflow Performance
206 authorizations required peer-to-peer review.
Routine requests experienced significantly longer turnaround times than STAT requests.
Tableau Dashboard

The dashboard includes:

KPIs
Total Authorizations
Approval Rate
Denial Rate
Average Turnaround Days
Visualizations
Authorization Status Distribution
Approval Rate by Payer
Denial Rate by Payer
Turnaround Time by Payer
Top Denial Reasons
Monthly Authorization Trend
Top Procedures Requiring Authorization
Dashboard Preview
Insert Tableau Dashboard Screenshot Here

Example:

![Prior Authorization Analytics Dashboard](prior_authorization_analytics_dashboard.png)
Project Files
README.md
prior_authorization_analytics.sql
prior_authorization_analytics_dashboard.png
Skills Demonstrated
SQL
Aggregations
CASE WHEN Statements
GROUP BY
ORDER BY
Date Functions
Conditional Analysis
KPI Calculations
Healthcare Analytics
Prior Authorization Analysis
Revenue Cycle Analytics
Denial Management
Payer Performance Analysis
Turnaround Time Analysis
Workflow Optimization
Tableau
KPI Development
Interactive Dashboard Design
Healthcare Data Visualization
Executive Reporting
Author

Ruth Mazangah

Healthcare Data Analyst | SQL | Tableau | Revenue Cycle Analytics | Healthcare Analytics

GitHub Portfolio:
https://github.com/RUTHIVANAMAZANGAH

LinkedIn:
(Add your LinkedIn URL here)
