-- Load and Convert Data Type

CREATE DATABASE covid19;

USE covid19;

DROP TABLE IF EXISTS covid;

CREATE TABLE covid(
	code VARCHAR(40),
    continent VARCHAR(40),
    country VARCHAR(200),
    `date` DATE,
    population BIGINT,
    total_cases BIGINT,
    new_cases INT,
    new_cases_smoothed INT,
    total_deaths BIGINT,
    new_deaths INT,
    new_deaths_smoothed INT,
    total_vaccinations BIGINT,
    people_vaccinated BIGINT
);

SELECT *
FROM covid;

LOAD DATA LOCAL INFILE '/Users/hna/Documents/DA/SQL/Covid19/covid19_export.csv'
INTO TABLE covid
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
code,
continent,
country,
@`date`,
@population,
@total_cases,
@new_cases,
@new_cases_smoothed,
@total_deaths,
@new_deaths,
@new_deaths_smoothed,
@total_vaccinations,
@people_vaccinated
)
SET
`date` = IF(@`date` = '', NULL, STR_TO_DATE(trim(@`date`), '%Y-%m-%d')),
population = IF(@population = '', NULL, @population),
total_cases = IF(@total_cases = '', NULL, @total_cases),
new_cases = IF(@new_cases = '', NULL, @new_cases),
new_cases_smoothed = IF(@new_cases_smoothed = '', NULL, @new_cases_smoothed),
total_deaths = IF(@total_deaths = '', NULL, @total_deaths),
new_deaths = IF(@new_deaths = '', NULL, @new_deaths),
new_deaths_smoothed = IF(@new_deaths_smoothed = '', NULL, @new_deaths_smoothed),
total_vaccinations = IF(@total_vaccinations = '', NULL, @total_vaccinations),
people_vaccinated = IF(@people_vaccinated = '', NULL, @people_vaccinated)
;



-- EDA
SELECT DISTINCT continent, country
FROM covid_staging;

SELECT *
FROM covid_staging
WHERE continent = '';

SELECT DISTINCT country, continent
FROM covid_staging
WHERE continent IS NOT NULL;

SELECT DISTINCT country, continent
FROM covid_staging
WHERE continent = '';

-- By World
-- 1. Number of Cases, Infection Rate, Case Fatality Rate

-- Create a View of World Population
CREATE OR REPLACE VIEW continent_pop AS
SELECT country AS continent, max(population) AS population
FROM covid_staging
WHERE continent = ''
	AND country IN ('Africa', 'Europe', 'North America', 'South America', 'Oceania', 'Asia')
GROUP BY country
;

SELECT sum(population) AS world_population
FROM continent_pop;


-- Calculate number of Cases, Infection Rate, Case Fatality Rate
SELECT 	w.world_pop AS world_population,
		w.world_cases AS world_cases,
        w.world_deaths AS world_deaths,
		round(w.world_cases / w.world_pop,4) AS infection_rate_pct,
		round(w.world_deaths / w.world_cases,4) AS case_fatality_rate_pct
FROM ( 
	SELECT 
		(SELECT sum(population) FROM continent_pop) AS world_pop,
        (SELECT max(total_deaths) FROM covid_staging
			WHERE continent IS NOT NULL
				AND country NOT IN (
                'world', 'european union (27)', 'Africa', 'Europe', 'North America', 'South America', 'Oceania', 
                'Asia', 'Asia excl. China', 'England', 'England and Wales', 'Equatorial Guinea', 'High-income countries',
                'Low-income countries', 'Lower-middle-income countries', 'Northern Ireland', 'Scotland', 'Summer Olympics 2020', 
                'Winter Olympics 2022', 'Upper-middle-income countries', 'Wales', 'World excl. China', 'World excl. China and South Korea',
                'World excl. China, South Korea, Japan and Singapore')
                ) 
                AS world_deaths,
		(SELECT max(total_cases) FROM covid_staging
			WHERE continent IS NOT NULL
				AND country NOT IN (
                  'world', 'european union (27)', 'Africa', 'Europe', 'North America', 'South America', 'Oceania', 
                'Asia', 'Asia excl. China', 'England', 'England and Wales', 'Equatorial Guinea', 'High-income countries',
                'Low-income countries', 'Lower-middle-income countries', 'Northern Ireland', 'Scotland', 'Summer Olympics 2020', 
                'Winter Olympics 2022', 'Upper-middle-income countries', 'Wales', 'World excl. China', 'World excl. China and South Korea',
                'World excl. China, South Korea, Japan and Singapore')
                ) 
                AS world_cases
	) AS w;
    
-- By Continents
-- 2. Number of infected, vaccinated and deaths by Continent
SELECT 	country AS continent, 
		max(population) AS population,
		max(total_cases) AS total_cases,
        max(people_vaccinated) AS total_vaccinations,
        max(total_deaths) AS total_deaths,
		round(max(total_cases) / max(population), 4) * 100 AS infection_rate,
        round(max(total_deaths) / max(population), 4) * 100 AS mortality_rate,
        round(max(people_vaccinated) / max(population), 4) * 100 AS vaccination_rate
FROM covid_staging
WHERE continent = ''
	AND country IN ('Africa', 'Europe', 'North America', 'South America', 'Oceania', 'Asia')
GROUP BY country;

-- First date of Vaccination by Continents
SELECT 	country AS continent,
		min(`date`) AS first_vaccination_date
FROM covid_staging
WHERE total_vaccinations IS NOT NULL
	AND country IN ('Africa', 'Europe', 'North America', 'South America', 'Oceania', 'Asia')
GROUP BY country;


-- First date of Vaccination by Continents and Total Vaccination deployed
SELECT
    country,
    `date`,
    total_vaccinations
FROM (
    SELECT
        country,
        `date`,
        total_vaccinations,
        ROW_NUMBER() OVER (
            PARTITION BY country
            ORDER BY `date`
        ) AS rn
    FROM covid_staging
    WHERE total_vaccinations IS NOT NULL
      AND country IN ('Africa', 'Europe', 'North America', 'South America', 'Oceania', 'Asia')
) t
WHERE rn = 1;

-- % Vaccination collected by Year
SELECT country AS continent,
		YEAR(`date`) AS `year`,
        round((max(people_vaccinated)/ max(population)) * 100, 4) AS vaccination_rate
FROM covid_staging
WHERE country IN ('Africa', 'Europe', 'North America', 'South America', 'Oceania', 'Asia')
GROUP BY `year`, country
ORDER BY continent, `year`;

SELECT
    country AS continent,
    ROUND(
        MAX(CASE WHEN YEAR(`date`) = 2020
                 THEN people_vaccinated / population END) * 100, 2
    ) AS `2020`,
    ROUND(
        MAX(CASE WHEN YEAR(`date`) = 2021
                 THEN people_vaccinated / population END) * 100, 2
    ) AS `2021`,
    ROUND(
        MAX(CASE WHEN YEAR(`date`) = 2022
                 THEN people_vaccinated / population END) * 100, 2
    ) AS `2022`,
    ROUND(
        MAX(CASE WHEN YEAR(`date`) = 2023
                 THEN people_vaccinated / population END) * 100, 2
    ) AS `2023`,
    ROUND(
        MAX(CASE WHEN YEAR(`date`) = 2024
                 THEN people_vaccinated / population END) * 100, 2
    ) AS `2024`

FROM covid_staging
WHERE country IN ('Africa', 'Europe', 'North America', 'South America', 'Oceania', 'Asia')
GROUP BY country
ORDER BY continent;


SELECT *
FROM covid_staging;

-- By Countries
-- 3. Number of infected, vaccinated and deaths by Country (label)
SELECT 	continent,
		country, 
		max(population) AS population,
		max(total_cases) AS total_cases,
        max(people_vaccinated) AS total_vaccinations,
        max(total_deaths) AS total_deaths,
		round(max(total_cases) / max(population), 4) AS infection_rate,
        round(max(total_deaths) / max(population), 4) AS case_fatality_rate,
        round(max(people_vaccinated) / max(population), 4) AS vaccination_rate
FROM covid_staging
WHERE continent IS NOT NULL
	AND country NOT IN (
		'world', 'european union (27)', 'Africa', 'Europe', 'North America', 'South America', 'Oceania', 
		'Asia', 'Asia excl. China', 'England', 'England and Wales', 'Equatorial Guinea', 'High-income countries',
		'Low-income countries', 'Lower-middle-income countries', 'Northern Ireland', 'Scotland', 'Summer Olympics 2020', 
		'Winter Olympics 2022', 'Upper-middle-income countries', 'Wales', 'World excl. China', 'World excl. China and South Korea',
		'World excl. China, South Korea, Japan and Singapore')
GROUP BY country, continent
ORDER BY total_deaths;

-- 4. Daily Confirmed Deaths 
SELECT 	continent,
		country,
        `date`,
        new_deaths_smoothed
FROM covid_staging
WHERE continent IS NOT NULL
	AND country NOT IN ('world', 'european union (27)', 'Africa', 'Europe', 'North America', 'South America', 'Oceania', 
		'Asia', 'Asia excl. China', 'England', 'England and Wales', 'Equatorial Guinea', 'High-income countries',
		'Low-income countries', 'Lower-middle-income countries', 'Northern Ireland', 'Scotland', 'Summer Olympics 2020', 
		'Winter Olympics 2022', 'Upper-middle-income countries', 'Wales', 'World excl. China', 'World excl. China and South Korea',
		'World excl. China, South Korea, Japan and Singapore')
ORDER BY country, `date`;











