## Massachusetts General Hospital - Performance Metrics & KPI

### Project Background
Hospital management depends on the ability to quickly assess performance and identify the areas for improvement. However, the performance indicators are usually dispersed across multiple reports, making it difficult to obtain a comprehensive view. To address this issue, Massachusetts General Hospital (MGH) requested the development of a high-level KPI report that consolidates essential metrics in one single, accessible view. The dashboard enables the executive team to visualize key metrics such as length of stay, treament cost per encounter, number of procedure per encounter, payer distribution and common diagnosis, providing actionable insights to drive decision-making.

### Executive Summary
The analysis utilized over 70,000 [synthetic healthcare records](https://mavenanalytics.io/data-playground/hospital-patient-records) representing about 1,000 patients from Jan 01, 2011 to Feb 05, 2022. Throughout the period analyzed, the hospital maintained an average length of stay around 1 day and 2 procedures for each encounter. On the other hand, the number of encounters increased approximately 2.5 fold over the past decade, with notable peaks in 2014 - attributed to the influenza H3N2 outbreak and in 2021, driven by COVID-10 pandemic. This trend highlights a trade-off between efficient use of hospital beds and the increased need for follow-up care. Within the total claim cost of each encounter, the coverage ratio maintains below 35% of the total claim cost, making the rest is pay out of the pocket. Pay-out-of pocket accounted for the largest shares of the payers mix, medicare and private insurance company are next. Prior to the Covid-19 pandemic, chronic conditions such as cancer and heart failure were the primary drivers of high treatment cost. Following onset of the Covid-19 pandemic, Covid-19 treatment became the highest-cost category.

<img width="1198" height="696" alt="Hospital Dashboard" src="https://github.com/user-attachments/assets/0d6c6162-e91b-44d7-9371-4129b85b836a" />

### Insights Deep-Dives
#### Demand & Utilization
- Annual volume: MGH serves approximately 500 unique patients per year, accounting for 2,000–2,500 total visits. Utilization peaked in 2014 (≈3,800 visits, increased 56% yoy) and 2021 (≈3,500 visits, increased 40%), corresponding to the influenza H3N2 outbreak and the COVID-19 pandemic, respectively.
- Shift in care setting: In both 2014 and 2021, outpatient encounters increased substantially - 43% and 185% respectively, while inpatient admissions declined, reflecting surge-driven demand for rapid access to care during influenza outbreaks and the effects of social distancing during COVID-19.
- Utilization intensity: Utilization intensity: Patients averaged about 5 encounters per year, indicating frequent repeat use. By encounter class, urgent care users averaged ~6 visits per year, emergency care users ~2 visits, and wellness visits ~1 per year. Ambulatory, inpatient, and outpatient services averaged around 3 visits per patient per year.
  
#### Operational efficiency
- Length of stay and repeat utilization: MGH maintains a consistently short average length of stay (LOS) of approximately one day across encounter types, reflecting strong throughput efficiency. However, the ~40% repeat utilization within 30 days suggests a potential trade-off between rapid discharge and continuity of care.
- Distribution of length of stay: While the overall average LOS is one day, the distribution is right-skewed, driven primarily by a subset of inpatient encounters with substantially longer stays (24 days). In contrast, outpatient, ambulatory, and emergency encounters show greater dispersion, with LOS extending to 1–4 days. This indicates that averages mask meaningful variability across encounter classes.

#### Financial Sustainability
- Total claim cost trend: Total claim costs have remained relatively flat with a negative year-over-year growth rate, reflecting lower encounter volumes or reduced cost per encounter compared with prior years.
- Treatment cost distribution: The average treatment cost is approximately $3,000 per encounter, with at least two procedures performed per visit. 
    - Uninsured patients have higher average cost ~$5,600 versus ~$2,800 of insured patients.
    - The median treatment cost across all encounter classes is ~$300, indicating a highly cost distribution driven by a small number of high-cost encounters.
    - Broad cost cutting to lower the total claim cost would be ineffective as most expensive procedures are for chronic and complex disease.
- Coverage ratio and patient burden: Coverage ratios remain below 35%, with a notable decline in 2018 to 23%. As a result, roughly 75% of treatment costs are paid out-of-pocket, increasing patient financial burden, elevating bad-debt risk, and potentially distorting hospital margins.
    - Among encounters with insurance, approximately 25% received no payer coverage, indicating a substantial share of insured visits still resulted in out-of-pocket payment.
- Payer mix dynamics: Uninsured encounters accounted for approximately 48.5% of total claim costs, followed by Medicare (25.8%), private insurance (16.9%), and Medicaid (8.8%).suggesting increasing dependence on public payer reimbursement

### Recommendation
- Reduce Repeat Utilization: MGH should strengthen post discharge follow up for high-risk patients and frequent utilizer by using encounter history to flag patients mostly to return within 30 days, which could reduce avodable revisits, improve patient outcomes, and better alignment between rapid discharge and longterm care effectiveness.
- Address Cost Concentration through High Cost Encounters: MGH should identify and monitor high cost diagnosis using cost-per-encounter threshold to expand care pathways for chronic and complex conditions to prevent cost escalation without compromising quality and more predictable resource utilzation.
- Mitigate Patient Financial Burden and Reimbursement Risk: With low coverage ratio, MGH should reassess payer contract terms for high volumn service with low reimbursement coverage while expanding assistance program for uninsured patien group and enhancing financial counseling and cost transprency for patients which could reduce unpaid balance and improve financial stability

### Clarifying Questions, Assumptions, and Caveats
- Data quality adjustment: During data exploration, 89 records (out of 28,000+ healthcare records) exhibited negative values when comparing total claim cost to base encounter cost. These anomalies likely reflect billing or data-entry issues rather than true negative costs. To prevent distortion of cost analyses, these values were clipped to zero.
- Payer group classification: Multiple private insurance plans were consolidated into a single Private Insurance category. Patients with dual-eligible status (92 records) were classified under Medicare, which may partially explain the observed increase in Medicare encounter volume and hare of total cost.

#

The interactive dashboard can be downloaded [here](https://public.tableau.com/views/Book1_17680100760400/Dashboard2?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link).

The Python scripts used for analysis can be found [here](https://github.com/hna778/Portfolio/blob/main/Hospital/Hospital_EDA.ipynb).
