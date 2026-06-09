# MIMIC-IV Patient Outcomes Analysis

## Project Overview

This project analyzes patient admissions, demographics, insurance coverage, discharge destinations, and mortality outcomes using the MIMIC-IV Clinical Database (Demo Dataset).

The objective was to identify patterns in hospital utilization, patient outcomes, admission sources, and mortality trends that can support healthcare leadership decision-making, operational planning, and quality improvement initiatives.

This project demonstrates healthcare analytics skills using SQL, SQLite, and Tableau.

---

## Dashboard Preview

![https://public.tableau.com/app/profile/ruth.mazangah/viz/MIMIC-IVPatientOutcomesHospitalOperationsDashboard/MIMIC-IVPatientOutcomesHospitalOperationsDashboard)

---

## Key Business Questions 

1. What are the characteristics of the hospital's patient population?

2. Which admission sources and admission types drive hospital utilization?

3. What discharge patterns exist among hospitalized patients?

4. Which patient groups experience the highest mortality rates?

5. How can mortality and admission trends support operational planning and quality improvement initiatives?

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

Created using SQL, SQLite, and Tableau.

