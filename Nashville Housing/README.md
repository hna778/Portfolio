## Nashville Housing Market 

### Project Background

This report presents analysis of real estate transactions across Tennessee, with a particular focus on the dynamic housing market of Nashville. The primary goal of this analysis is to understand the distribution of property prices and uncover the market trends that reflect inventory levels, pricing dynamics, and the impact of property charateristics. The insights derived from this analysis aim to support strategic decision-making of home buyers by highlighting emerging opportunities, potential risks, and factors driving overall market performance.

### Executive Summary

The [dataset](https://www.kaggle.com/datasets/swsw1717/nashville-housing-sql-project?select=Nashville+Housing.csv.) encompasses approximately 56,000 property transactions recorded between January 2, 2013, and December 13, 2019 in Tennessee. However, the most reflecting a period of sustained growth and heightened real estate activity across Tennessee is between January 2, 2013, and Oct 31, 2016. During this timeframe, annual sales volume peaked in 2015 before slowing down in 2016, with Nashville contributing more than 70% of total transaction values in each year — underscoring its dominant role in statewide housing dynamics. Within Nashville, residential condo and single-family homes represented the largest market share, accounting for almost 75% of total property sales.

Over the four-year period (from 2013 to 2016), number of properties were sold as vacant rose by 10% in 2014 and 2015 compared to previous year, suggesting new area developments and supply-side activity. This may explain the reason home-selling activity began to decelerate in the later years of the dataset, indicating a potential shift toward market stabilization or early signs of saturation

<img width="1202" height="768" alt="Nashville Housing" src="https://github.com/user-attachments/assets/cc3f8047-9243-453e-955d-bd4328b038e8" />


### Insights Deep-Dive
#### Sales Trends and Growth Rates
- Between these two property types, single-family homes dominate, recording over 23K transactions, more than double the ~11K residential condo sales during the active period from 2013 to 2016, underscoring their stronger contribution to Nashville’s housing market dynamics.
- Residential condos and single-family homes exhibit similar sales growth patterns, with 2015 marking the peak year, followed by a moderate slowdown in 2016.
- Residential condo transactions totaled nearly 2,000 units in 2013, increased to approximately 3,000 units in 2014, and rose stadily to 3,500 units in 2015, and then declined to levels comparable to 2014.
- Single-family home sales followed a similar trajectory, rising from 5,000 units in 2013 to 5,900 units in 2014, peaking at 6,700 units in 2015, before easing to 5,600 units in 2016.
- On a monthly basis, June consistently emerges as the most active month, recording the highest number of transactions.

#### Distribution of Property Prices Across and Property Types
- Both residential condos and single-family homes experienced upward price trends, with residential condos showing a sharper price increase between 2014 and 2015 from $200K to $240K, while single-family home prices followed a more stable, gradual trajectory around $185K - $235K
- The median sale prices for both property types converged at approximately $250,000. This convergence may be attributed to the limited supply of residential condos, contrasted with the higher transaction volume and more stable availability of single-family homes.

#### Inventory exploration
- Vacant single-family homes and residential condos accounted for approximately one-third of total transactions sold as vacant in 2014, indicating a significant new supply entering the market for homebuyers. However, only one-tenth of total transactions sold as vacant in other years. 
- Vacant residential land surged as a hot properties among transactions labed as "Sold as vacant", promising high supply in the future.
  
#### Influence of Size and Year Built on Sale Prices.
- Sale prices for both residential condos and single-family homes are higher for properties built after 2000 compared to those constructed earlier, indicating a premium placed on newer housing stock.
- Size data for residential condos are unavailable; however, the majority of single-family home transactions involve properties smaller than 0.5 acres, with prices generally increasing in proportion to lot size, suggesting a positive relationship between property size and sale price.

### Recommendation
- Between residential condos and single family home, buyers should consider single family home as more stable long term option given their higher transaction volume, consistent price appreciation, broader market availability.
- New construction in both the residential condo and single-family home segments continues to experience strong demand. Buyers should carefully weigh location and year built, as properties with year built after 2000 typically command higher prices.
- Moderately sized single family homes (less than 0.5 acres) dominates transaction volume, and demonstrate a clear positive relationship between size and price.
- The market slowdown following the 2015 peak, combined with increased vacant supply may signal a transition toward market stabilization, a potentially favorable entry for new home buyers.

### Clarifying Questions, Assumptions, and Caveats
#### Key Assumptions
- Properties labeled "Sold as vacant" are assumed to represented new construction, different from vacant residential land.
- Median price comparisons assume consistent property quality which may potential variation in location, and renovation status.
#### Data Limitation
- Residential condo size data are unvailalbe, limiting the ability to analyze price sensitive to unit size.
- Extreme price outliers (very low and high prices) may skew the average price metrics, making median prices more reliable indicator
#### Clarifying Questions
- How do neighbohood level factor (proximity to downtown, school, transit) influence price difference within each property type?
- How does affodability relative to income growth affect buyer demand across propery segments?

#

The SQL queries utilized to load and organize the data can be found [here](https://github.com/hna778/SQL-Porfoio/blob/main/Nashville%20Housing/housing_Loading.sql).

The SQL queries utilized to clean, perform quality checks, and prepare data can be found [here](https://github.com/hna778/SQL-Porfoio/tree/main/Nashville%20Housing).

Target SQL queries exploring key insights can be found [here](https://github.com/hna778/Portfolio/blob/main/Nashville%20Housing/housing_Full.sql).

Tableau Dashboard can be found [here](https://public.tableau.com/views/NashvilleHousing_17621076696500/Dashboard2?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)




