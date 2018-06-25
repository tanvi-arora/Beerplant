Codebook for Code/Merge_Beers_Breweries.R
Author: Anjli Solsi

R source code to merge the beer and breweries datasets. The merged data set is also merged with a dataset of state information. 

Source Datafiles: 

Beers.csv
Breweries.csv

Objects Used:

beer - contains the original data from the beer dataset
	Dimensions: 2410 rows, 7 columns
breweries - contains the original data from the breweries dataset
		Dimensions: 558 rows, 4 columns

Objects Created: 

trim - function created to remove leading or trailing whitespaces
breweries$Brewery_State1 - removes leading spaces from the variable Brewery_State in the breweries dataset
state.info - dataset created from exisiting R datasets with state abbreviations, state names, and state regions 
		Variables: State, State_Name, State_Region
beer.breweries - dataset that merges the beer and breweries datasets together, combining variables
		Variables: Brewery_ID, Beer_Name, Beer_ID, ABV, IBU, Style, Ounces, Brewery_Name, Brewery_City, Brewery_State
beer.breweries.state - dataset that merges the previous merged dataset (beer.breweries) with the state.info dataset
			Variables: Brewery_ID, Beer_Name, Beer_ID, ABV, IBU, Style, Ounces, Brewery_Name, Brewery_City, Brewery_State, State_Name, State_Region) 
beer.breweries.state.clean - final dataset created that holds the beer.breweries dataset 

Functions Used:

colnames(): sum columns for numeric arrays or data frames 
trim(), gsub(): function created to remove leading or trailing whitespaces  
cbind.data.frame(): take a sequence of vector or data-frame arguments and combine by columns
names(): set the names of an object 
head(), tail(): return the first or last parts of a vector, table, data frame, or function 




