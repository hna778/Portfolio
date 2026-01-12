## COVID-19 Global Impact

### Project Background
The Coronavirus disease 2019 (COVID-19) pandemic has had a profound global impact, both economically and socially, affecting millions of lives worldwide. The dataset used in this project was collected by the [World Health Organization](https://docs.owid.io/projects/etl/api/covid/). Data from **31 December 2019 to 21 March 2020** was sourced through official communications under the International Health Regulations (IHR, 2005), supplement by verified reports from ministries of health and their official social media accounts. **Begining 22 March 2020**, the dataset was compiled through WHO region-specific dashboards and direct country reporting mechanism. 

This project involved cleaning, processing, and analyzing the raw data to provide a comprehensive overview of the pandemic's impact across regions. The main objective is to understing the magnitude of COVID-19's effect on human lives and identify which continents and countries were most affected. Through exploratory data analysis, this project seeks to uncover disparities in pandemic response and offer insights into the relative healthcare capacity of different regions.

### Executive Summary
The COVID-19 dataset comprises 61 columns and 530,291 records. Each record represents a unique country-date observation, allowing for detailed temporal and geographical analysis of key COVID-19 metrics. For the purpose of this analysis, the focus was narrowed to a subset of 13 relevant columns that provide an essential information for understanding infection trends, confirmed deaths and vaccination progress across regions. 

Over the five-year period, the global infection rate was 1.28%, while the case fatality rate stood at 1.19%. At the continent level, Europe and Oceania recorded the highest infection rates, at 34.0% and 33.4% respectively. Despite this, the United States experienced the largest total number of deaths compared to all other countries. Vaccination efforts began on Dec 02, 2020, nearly one year after the first confirmed case reported, highlighting the scale and urgency of global scientific and govermental responses to the pandemic.

<img width="1199" height="682" alt="2601112 covid19_VIsualization" src="https://github.com/user-attachments/assets/ffda6b3a-1c78-4f30-9a73-4dc00699730d" />

### Insight Deep-Dive
#### Infection and Mortality Trend
- 



#### Vaccination Efforts
- As of Sep 07, 2025, South America recorded the highest vaccination rate globally, with 87% of its population vaccinated, while Africa had the lowest coverage at 39%.
- Global vaccination efforts began on Dec 02, 2020. By the end of 2020, Asia had vaccinated 13.5% of its population, whereas all other continents remained below 1% coverage. In the years that followed, South America consistently maintained the highest vaccinated rate among all continents
- From 2021 onward, vaccination rate accelerated worldwide, with most continents sustaining vaccination rate above 60%, except Africa, which continued to lag behind.

### Clarifying Questions, Assumptions, and Caveats
- The data was first collected through International Health Regulations and verified report from ministries of health, which could reflect the incorrect information from E



##

The interactive dashboard can be downloaded [here](https://public.tableau.com/views/Book2_17563327591560/Dashboard3?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link).

The Python scripts used for initial data inspection and preparing data can be found [here](https://github.com/hna778/SQL-Porfoio/blob/main/Covid19/covid19_InitialCheck.ipynb).

Target SQL queries exploring key insights can be found [here](https://github.com/hna778/SQL-Porfoio/blob/main/Covid19/covid19_EDA.sql).
