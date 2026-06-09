# MIMIC-IV Patient Outcomes Analysis

## Project Overview

This project analyzes patient admissions, demographics, insurance coverage, discharge destinations, and mortality outcomes using the MIMIC-IV Clinical Database (Demo Dataset).

The objective was to identify patterns in hospital utilization, patient outcomes, admission sources, and mortality trends that can support healthcare leadership decision-making, operational planning, and quality improvement initiatives.

This project demonstrates healthcare analytics skills using SQL, SQLite, and Tableau.

---

## Dashboard Preview

![https://public.tableau.com/app/profile/ruth.mazangah/viz/MIMIC-IVPatientOutcomesHospitalOperationsDashboard/MIMIC-IVPatientOutcomesHospitalOperationsDashboard?publish=yes](mimic_iv_patient_outcomes_dashboard.png)

---

## Business Questions Answered

### Patient Population Analysis
1. How many unique patients are in the dataset?
2. How many hospital admissions occurred?
3. What is the average patient age?
4. How many patients are male versus female?

### Admission & Utilization Analysis
5. What are the most common admission types?
6. Which admission sources send the most patients to the hospital?
7. Which insurance types are most common?

### Discharge & Care Transition Analysis
8. What are the most common discharge locations?

### Mortality & Outcomes Analysis
9. What percentage of patients died during hospitalization?
10. Which admission type has the highest mortality rate?
11. Which insurance type has the highest mortality rate?
12. Which admission source has the highest mortality rate?

### Advanced SQL Analysis
13. What is the average patient age by admission type?

---

## Tools Used

- SQLite
- SQL
- Tableau
- MIMIC-IV Clinical Database (Demo Dataset)

---

## SQL Skills Demonstrated

- Data Aggregation
- COUNT()
- COUNT(DISTINCT)
- AVG()
- CASE WHEN
- GROUP BY
- ORDER BY
- Percentage Calculations
- JOIN Operations
- Healthcare Outcomes Analysis
- Hospital Operations Analysis

---

## Dashboard Metrics

### Key Performance Indicators (KPIs)

- Total Admissions: 275
- Total Patients: 100
- Average Patient Age: 62
- Mortality Rate: 5%

### Visualizations

- Admissions by Type
- Admissions by Source
- Insurance Distribution
- Discharge Locations
- Mortality Rate by Admission Type
- Mortality Rate by Admission Source

---

## Key Findings

### Patient Population

- The dataset contains 100 unique patients and 275 hospital admissions.
- The average patient age was 62 years.
- Male patients represented the majority of the patient population.

### Admission Patterns

- EW Emergency was the most common admission type with 104 admissions.
- Emergency Room referrals accounted for nearly half of all hospital admissions.
- Physician referrals and hospital transfers were the second and third largest admission sources.

### Insurance Analysis

- "Other" insurance plans represented the largest payer category.
- Medicare was the second most common insurance type, supporting the older patient population observed in the dataset.

### Discharge Trends

- Home Health Care was the most common discharge destination.
- Home discharge was the second most common outcome.
- Skilled Nursing Facility placements represented a significant portion of discharges, reflecting the needs of an older patient population.

### Mortality Analysis

- Overall in-hospital mortality rate was 5%.
- Urgent admissions experienced the highest mortality rate (13%).
- Patients transferred from another hospital had the highest mortality rate among admission sources (13%).
- Medicaid patients showed the highest observed mortality rate among insurance groups (9%).

---

## Business Impact

This analysis demonstrates how healthcare organizations can use patient outcome and operational data to:

- Improve patient care planning
- Identify high-risk patient populations
- Optimize staffing and resource allocation
- Monitor mortality trends
- Support quality improvement initiatives
- Enhance discharge planning and care coordination
- Improve hospital operational efficiency

