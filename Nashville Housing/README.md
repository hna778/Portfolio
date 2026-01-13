## Nashville Housing Market 

### Project Background

This report presents analysis of real estate transactions across Tennessee, with a particular focus on the dynamic housing market of Nashville. The primary goal of this analysis is to understand the distribution of property prices and uncover the market trends that reflect inventory levels, pricing dynamics, and the impact of property charateristics. The insights derived from this analysis aim to support strategic decision-making of home buyers by highlighting emerging opportunities, potential risks, and factors driving overall market performance.

### Executive Summary

The [dataset](https://www.kaggle.com/datasets/swsw1717/nashville-housing-sql-project?select=Nashville+Housing.csv.) encompasses approximately 56,000 property transactions recorded between January 2, 2013, and December 13, 2019 in Tennessee. However, the most reflecting a period of sustained growth and heightened real estate activity across Tennessee is between January 2, 2013, and Oct 31, 2016. During this timeframe, annual sales volume peaked in 2015 before slowing down in 2016, with Nashville contributing more than 70% of total transaction values in each year — underscoring its dominant role in statewide housing dynamics. Within Nashville, residential condo and single-family homes represented the largest market share, accounting for almost 75% of total property sales.
Over the four-year period (from 2013 to 2016), number of properties were sold as vacant rose by 10% in 2014 and 2015 compared to previous year, suggesting new area developments and supply-side activity. This may explain the reason home-selling activity began to decelerate in the later years of the dataset, indicating a potential shift toward market stabilization or early signs of saturation

<img width="1202" height="768" alt="Nashville Housing" src="https://github.com/user-attachments/assets/cc3f8047-9243-453e-955d-bd4328b038e8" />


### Insights Deep-Dive
#### Key Products Performances
- Single-family homes and residential condos are the primary drivers of growth in Nashville’s housing market, together accounting for approximately 75% of total home sales in the city.
- Between these two property types, single-family homes dominate, recording over 23K transactions, more than double the ~11K residential condo sales during the active period from 2013 to 2016, underscoring their stronger contribution to Nashville’s housing market dynamics.

#### Sales Trends and Growth Rates
- Residential condos and single-family homes exhibit similar sales growth patterns, with 2015 marking the peak year, followed by a moderate slowdown in 2016.
- Residential condo transactions totaled nearly 2,000 units in 2013, hiked 3,000 units in 2014, and increased stably to 3,500 units in 2015, and then return to levels comparable to 2014.
- Single-family home sales followed a similar trajectory, rising from 5,000 units in 2013 to 5,900 units in 2014, peaking at 6,700 units in 2015, before easing to 5,600 units in 2016.
- On a monthly basis, June consistently emerges as the most active month, recording the highest number of transactions.

#### Distribution of Property Prices Across and Property Types
- Both residential condos and single-family homes experienced upward price trends, with residential condos showing a sharper price increase between 2014 and 2015, while single-family home prices followed a more stable, gradual trajectory.
- The median sale prices for both property types converged at approximately $250,000. This convergence may be attributed to the limited supply of residential condos, contrasted with the higher transaction volume and more stable availability of single-family homes.

#### Inventory exploration
- Vacant single-family homes and residential condos accounted for approximately one-third of total transactions during the examined period, indicating a significant new supply entering the market for homebuyers.
- Single-family homes recorded relatively few vacant-unit transactions in the period, while the vacant residential condo  market became active primarily in June 2014, marked by a notable surge in supply, suggesting that new condominium developments were completed and released for sale at that time.
  
#### Influence of Size and Year Built on Sale Prices.
- Sale prices for both residential condos and single-family homes are higher for properties built after 2000 compared to those constructed earlier, indicating a premium placed on newer housing stock.
- Size data for residential condos are unavailable; however, the majority of single-family home transactions involve properties smaller than 0.5 acres, with prices generally increasing in proportion to lot size, suggesting a positive relationship between property size and sale price.

### Recommendation


### Clarifying Questions, Assumptions, and Caveats
- Sold As Vacant are new constructions

#

The SQL queries utilized to load and organize the data can be found [here](https://github.com/hna778/SQL-Porfoio/blob/main/Nashville%20Housing/housing_Loading.sql).

The SQL queries utilized to clean, perform quality checks, and prepare data can be found [here](https://github.com/hna778/SQL-Porfoio/tree/main/Nashville%20Housing).

Target SQL queries exploring key insights can be found [here](https://github.com/hna778/Portfolio/blob/main/Nashville%20Housing/housing_Full.sql).

Tableau Dashboard can be found [here](https://public.tableau.com/views/NashvilleHousing_17621076696500/Dashboard2?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)




