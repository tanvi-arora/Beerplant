### Code book for Code/SummaryStatisticsForABV.R
**Author :** Anne Francomano

R source code to to determine the summary statistics for the ABV metric 

**source dataset :** 
1) beers.csv
2) breweries.csv

**project datasets used :**
1) beer.breweries.state.clean

**objects created :**
1.beer.stats.abv - default summary structure storing list of statistics names and corresponding statistics value for all values in        
    the abv column
    Each of the seven total entries is a combination of a char, representing a statistic name, and an int, indicating the 
    respective statistical value  
    Ex : beer.stats.abv[1]  = Min. 0.001
