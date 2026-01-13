## Nashville Housing Market 

### Project Background

This report presents analysis of real estate transactions across Tennessee, with a particular focus on the dynamic housing market of Nashville. The primary goal of this analysis is to understand the distribution of property prices and uncover the market trends that reflect inventory levels, pricing dynamics, and the impact of property charateristics. The insights derived from this analysis aim to support strategic decision-making of home buyers by highlighting emerging opportunities, potential risks, and factors driving overall market performance.

### Executive Summary

The [dataset](https://www.kaggle.com/datasets/swsw1717/nashville-housing-sql-project?select=Nashville+Housing.csv.) encompasses approximately 56,000 property transactions recorded between January 2, 2013, and December 13, 2019 in Tennessee. However, the most reflecting a period of sustained growth and heightened real estate activity across Tennessee is between January 2, 2013, and Oct 31, 2016. During this timeframe, annual sales volume peaked in 2015 before slowing down in 2016, with Nashville contributing more than 70% of total transaction values in each year — underscoring its dominant role in statewide housing dynamics. Within Nashville, residential condo and single-family homes represented the largest market share, accounting for almost 70% of total property sales.
Over the four-year period (from 2013 to 2016), number of properties were sold as vacant rose by 10% in 2014 and 2015 compared to previous year, suggesting new area developments and supply-side activity. This may explain the reason home-selling activity began to decelerate in the later years of the dataset, indicating a potential shift toward market stabilization or early signs of saturation

<img width="1202" height="768" alt="Nashville Housing" src="https://github.com/user-attachments/assets/cc3f8047-9243-453e-955d-bd4328b038e8" />


### Insights Deep-Dive
#### Key Products Performances
- Among all the property types, Single Family and Residential Condo are the key products driving the growth of the Nashville housing market in Tennessee, taking 75% the sales in Nashville.
- Between these two property types, single-family homes have more than double the sales (~23K transactions) compared to Residential Condos (~11K transactions) contributing to the dynamic housing market during the active period 2013 - 2016.

#### Sales Trends and Growth Rates
- Both Residential condo and Single-family homes have the same patterns in sales growth, with 2015 being the peak sale and gradually slowing down in 2016.
- The total transactions of Residential condo was reported nearly 2,000 units in 2013, but reached 3,500 units in 2015 before going back to 3,000 units in 2016, similar to 2014 performance.
- Similarly, total transactions of Single Family recorded at 5,000 units in 2013, 5,900 units in 2014, and 6,700 units in 2015 before slowing down in 2016 with 5,600 sold units.
- In monthly record, June seems to be the most active market with high peak sold units.

#### Distribution of Property Prices Across and Property Types
- Both residential condo and single family withness the uptrend price which residential condo have a steep price jump from 2014 to 2015. Single family have a stable price trend.
- The median prices of both property types are similar at $250,000 - which could be explained due to the short supply of residential condos while there were active sales transactions of single-family homes. 
#### Influence of Size and Year Built on Sale Prices.



#### Inventory exploration



### Recommendation


### Clarifying Questions, Assumptions, and Caveats
- Sold As Vacant are new constructions

#

The SQL queries utilized to load and organize the data can be found [here](https://github.com/hna778/SQL-Porfoio/blob/main/Nashville%20Housing/housing_Loading.sql).

The SQL queries utilized to clean, perform quality checks, and prepare data can be found [here](https://github.com/hna778/SQL-Porfoio/tree/main/Nashville%20Housing).

Target SQL queries exploring key insights can be found [here](https://github.com/hna778/Portfolio/blob/main/Nashville%20Housing/housing_Full.sql).

Tableau Dashboard can be found [here](https://public.tableau.com/views/NashvilleHousing_17621076696500/Dashboard2?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)




