# Prior Authorization Analytics Dashboard

## Project Overview

This project analyzes radiology prior authorization requests to evaluate authorization volume, approval performance, denial trends, payer turnaround times, and procedure utilization. The analysis was performed using SQL for data exploration and Tableau for dashboard visualization.

The dashboard provides operational insights that can help healthcare organizations improve authorization workflows, reduce denials, and identify opportunities to optimize payer relationships.

---

## Business Problem

Prior authorizations are a critical component of healthcare operations and revenue cycle management. Delays, denials, and inconsistent payer performance can lead to postponed patient care, increased administrative burden, and lost revenue.

This project was designed to answer key operational questions:

* How many prior authorization requests are being processed?
* What are the overall approval and denial rates?
* Which payers have the highest approval rates?
* What are the most common denial reasons?
* Which payers have the longest turnaround times?
* What procedures require authorization most frequently?
* How do authorization volumes trend over time?

---

## Dataset Information

**Dataset:** Synthetic Radiology Prior Authorization Dataset

**Records:** 5,000 Prior Authorization Requests

**Key Fields:**

* Authorization ID
* Submission Date
* Payer
* Procedure Description
* Authorization Status
* Authorization Required
* Denial Reason
* Turnaround Days
* Modality
* CPT Code

---

## Tools Used

### SQL (SQLite)

Used to:

* Aggregate authorization volume
* Calculate approval and denial rates
* Analyze payer performance
* Identify denial trends
* Calculate turnaround times
* Evaluate procedure utilization

### Tableau

Used to create:

* KPI Cards
* Bar Charts
* Trend Analysis
* Interactive Dashboard Filters
* Custom Tooltips

---

## SQL Analysis Questions

### 1. How many prior authorization requests were processed?

**Result:** 5,000 Total Requests

---

### 2. What is the overall approval rate for requests requiring prior authorization?

**Result:** 64.1%

**Logic Used:**

Only records where:

```sql
authorization_required = 'Yes'
```

were included in the calculation.

---

### 3. What is the overall denial rate for requests requiring prior authorization?

**Result:** 20.5%

**Logic Used:**

Only records where:

```sql
authorization_required = 'Yes'
```

were included in the calculation.

---

### 4. What is the average turnaround time for completed authorization decisions?

**Result:** 9.1 Days

**Logic Used:**

Included only:

```sql
authorization_status IN ('Approved','Denied')
```

and excluded blank turnaround values.

---

### 5. How are authorization requests distributed by status?

| Status       | Count |
| ------------ | ----: |
| Approved     | 2,790 |
| Denied       |   893 |
| Not Required |   622 |
| Pending      |   433 |
| Withdrawn    |   159 |
| Cancelled    |   103 |

---

### 6. Which payers process the highest authorization volume?

| Payer                       | Requests Requiring Authorization |
| --------------------------- | -------------------------------: |
| UnitedHealthcare            |                              740 |
| Aetna                       |                              629 |
| Empire BlueCross BlueShield |                              584 |
| Cigna                       |                              430 |
| Healthfirst                 |                              410 |

---

### 7. Which payers have the highest approval rates?

| Payer                       | Approval Rate |
| --------------------------- | ------------: |
| UnitedHealthcare            |         66.6% |
| Humana                      |         66.2% |
| Healthfirst                 |         65.9% |
| Empire BlueCross BlueShield |         64.6% |
| Medicaid                    |         63.9% |

---

### 8. What are the most common denial reasons?

| Denial Reason                  | Count |
| ------------------------------ | ----: |
| Medical necessity not met      |   239 |
| Missing clinical documentation |   166 |
| Payer requested peer-to-peer   |    97 |
| Member eligibility issue       |    83 |
| Out-of-network provider        |    66 |

---

### 9. Which payers have the longest average turnaround times?

| Payer                       | Avg Turnaround Days |
| --------------------------- | ------------------: |
| Medicaid                    |                 9.5 |
| Empire BlueCross BlueShield |                 9.5 |
| MetroPlus Health            |                 9.3 |
| Medicare                    |                 9.2 |
| Healthfirst                 |                 9.1 |

**Logic Used:**

Included only completed authorization decisions:

```sql
authorization_status IN ('Approved','Denied')
```

and excluded blank turnaround values.

---

### 10. Which procedures most frequently require prior authorization?

| Procedure                                  | Count |
| ------------------------------------------ | ----: |
| MRI Lumbar Spine without Contrast          |   573 |
| MRI Brain without Contrast                 |   552 |
| MRI Lower Extremity Joint without Contrast |   418 |
| CT Abdomen/Pelvis with Contrast            |   418 |
| CT Head without Contrast                   |   321 |

---

## Tableau Dashboard Features

### KPI Cards

* Total Authorizations
* Approval Rate
* Denial Rate
* Average Turnaround Days

### Visualizations

* Authorization Status Distribution
* Approval Rate by Payer
* Top Denial Reasons
* Average Turnaround Time by Payer
* Monthly Authorization Submission Trend
* Top Procedures Requiring Prior Authorization

### Interactive Filters

* Payer
* Authorization Status
* Month of Submission

---

## Key Findings

### Approval Performance

* 64.1% of requests requiring authorization were approved.
* UnitedHealthcare demonstrated the highest approval rate among major payers.

### Denial Trends

* Medical necessity issues represented the leading denial reason.
* Documentation-related denials were also a significant contributor.

### Turnaround Time

* Average completed authorization turnaround time was 9.1 days.
* Medicaid and Empire BlueCross BlueShield had the longest average turnaround times.

### Procedure Utilization

* MRI studies represented the majority of high-volume authorization requests.
* Lumbar Spine and Brain MRI procedures generated the highest authorization demand.

---

## Dashboard Preview

The Tableau dashboard provides a centralized view of prior authorization operations, enabling users to monitor authorization volume, payer performance, denial patterns, turnaround times, and procedure demand through interactive filtering and visual analytics.

---

## Project Files

* SQL Queries (.sql)
* Tableau Dashboard (.twb / .twbx)
* Dashboard Screenshot (.png)
* README.md

---

## Skills Demonstrated

* SQL Aggregations
* Data Cleaning
* Healthcare Analytics
* Revenue Cycle Analysis
* Prior Authorization Operations
* Tableau Dashboard Design
* KPI Development
* Data Visualization
* Business Insights & Storytelling

---

