## Massachusetts General Hospital - Performance Metrics & KPI

### Project Background
Hospital management depends on the ability to quickly assess performance and identify the areas for improvement. However, the performance indicators are usually dispersed across multiple reports, making it difficult to obtain a comprehensive view. To address this issue, Massachusetts General Hospital (MGH) requested the development of a high-level KPI report that consolidates essential metrics in one single, accessible view. The dashboard enables the executive team to visualize key metrics such as length of stay, treament cost per encounter, number of procedure per encounter, payer distribution and common diagnosis, providing actionable insights to drive decision-making.

### Executive Summary
The analysis utilized over 70,000 [synthetic healthcare records](https://mavenanalytics.io/data-playground/hospital-patient-records) representing about 1,000 patients from Jan 01, 2011 to Feb 05, 2022. Throughout the period analyzed, the hospital maintained an average length of stay around 1 day and 2 procedures for each encounter. On the other hand, the number of encounters increased approximately 2.5 fold over the past decade, with notable peaks in 2014 - attributed to the influenza H3N2 outbreak and in 2021, driven by COVID-10 pandemic. This trend highlights a trade-off between efficient use of hospital beds and the increased need for follow-up care. Within the total claim cost of each encounter, the coverage ratio maintains below 35% of the total claim cost, making the rest is pay out of the pocket. Pay-out-of pocket accounted for the largest shares of the payers mix, medicare and private insurance company are next. Prior to the Covid-19 pandemic, chronic conditions such as cancer and heart failure were the primary drivers of high treatment cost. Following onset of the Covid-19 pandemic, Covid-19 treatment became the highest-cost category.

<img width="1198" height="696" alt="Hospital Dashboard" src="https://github.com/user-attachments/assets/0d6c6162-e91b-44d7-9371-4129b85b836a" />

### Insights Deep-Dives
#### Demand & Utilization
- Annual volume: MGH serves approximately 500 unique patients per year, accounting for 2,000–2,500 total visits. Utilization peaked in 2014 (≈3,800 visits) and 2021 (≈3,500 visits), corresponding to the influenza H3N2 outbreak and the COVID-19 pandemic, respectively.
- Shift in care setting: In both 2014 and 2021, outpatient encounters increased substantially while inpatient admissions declined, reflecting surge-driven demand for rapid access to care during influenza outbreaks and the effects of social distancing and admission avoidance strategies during COVID-19.
- Utilization intensity: Patients averaged ~4 encounters per year, indicating a relatively high frequency of repeat engagement with services.
  
#### Operational efficiency
- Length of stay and repeat utilization: MGH maintains a consistently short average length of stay (LOS) of approximately one day across encounter types, reflecting strong throughput efficiency. However, the ~40% repeat utilization within 30 days suggests a potential trade-off between rapid discharge and continuity of care, with some patients requiring short-term follow-up or revisits.
- Distribution of length of stay: While the overall average LOS is one day, the distribution is right-skewed, driven primarily by a subset of inpatient encounters with substantially longer stays (24 days). In contrast, outpatient, ambulatory, and emergency encounters show greater dispersion, with LOS extending to 1–4 days at the 90th percentile. This indicates that averages mask meaningful variability across encounter classes.
<div align="center"><img width="600" height="300" alt="Screenshot 2026-01-10 at 3 21 21 AM" src="https://github.com/user-attachments/assets/9931df18-b6fc-496c-926b-c232a1f8075d" />

#### Financial Sustainability




### Recommendation


### Clarifying Questions, Assumptions, and Caveats







#

The interactive dashboard can be downloaded [here](https://public.tableau.com/views/Book1_17680100760400/Dashboard2?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link).

The Python scripts used for analysis can be found [here](https://github.com/hna778/Portfolio/blob/main/Hospital/Hospital_EDA.ipynb).
