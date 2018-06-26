### Code book for Code/Merge_Beers_Breweries.R
**Author :** Anjli Solsi

R source code to merge the beer and breweries datasets. The merged data set is also merged with a dataset of state information. 

**Source Datafiles :** 
1) Beers.csv
2) Breweries.csv

**Objects Used :**
1) beer - contains the original data from the beer dataset
	  Dimensions: 2410 rows, 7 columns
2) breweries - contains the original data from the breweries dataset
		Dimensions: 558 rows, 4 columns
3) state.info - dataset created from exisiting R datasets with state abbreviations, state names, and state regions
		Variables: State, State_Name, State_Region

**Objects Created :**
1. trim - function created to remove leading or trailing whitespaces
2. breweries$Brewery_State1 - removes leading spaces from the variable Brewery_State in the breweries dataset
3. beer.breweries - dataset that merges the beer and breweries datasets together, combining variables
		Variables: Brewery_ID, Beer_Name, Beer_ID, ABV, IBU, Style, Ounces, Brewery_Name, Brewery_City, Brewery_State
4. beer.breweries.state - dataset that merges the previous merged dataset (beer.breweries) with the state.info dataset
			Variables: Brewery_ID, Beer_Name, Beer_ID, ABV, IBU, Style, Ounces, Brewery_Name, Brewery_City, Brewery_State, State_Name, State_Region) 
5. beer.breweries.state.clean - final dataset created that holds the beer.breweries dataset 
6. breweries.state - dataset that merges the original breweries dataset with the state.info dataset

**Functions Used :**
1. *trim()*, *gsub()*: function created to remove leading or trailing whitespaces  
2. *head()*, *tail()*: return the first or last parts of a vector, table, data frame, or function
