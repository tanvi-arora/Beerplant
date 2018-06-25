################################################################
## R code for merging the beer and breweries datasets 
## Author : Anjli Solsi
## Created Date : 06/24/2018
## This script joins the dataset beer with the breweries dataset. It prints the first 6 observations and last 6 observations of the merged dataset.
################################################################ 

## @knitr mergedatasets

#change column names for commonality 
colnames(beer) <- c("Beer_Name", "Beer_ID", "ABV", "IBU", "Brewery_ID", "Style", "Ounces")
colnames(breweries) <- c("Brewery_ID", "Brewery_Name", "Brewery_City", "Brewery_State")
str(beer)
str(breweries)

#create state information dataset using available R dataset
##state.info <- cbind.data.frame(state.abb, state.name, state.region)
##names(state.info) <- c("State", "State_Name", "State_Region")

#validate state.info dataset created correctly
##str(state.info)
##dim(state.info)

#merge beer dataset and breweries dataset
beer.breweries <- merge(beer, breweries, by=c("Brewery_ID"), all=TRUE)

#validate merged dataset 
str(beer.breweries)
dim(beer.breweries)

#merge beer.breweries with the state information dataset 
##beer.breweries.state <- merge(beer.breweries, state.info, by.x="Brewery_State", by.y="State", all = TRUE)

#validate merged dataset
##str(beer.breweries.state)
##dim(beer.breweries.state)

#print first and last 6 observations to check merged file
head(beer.breweries, 6)
tail(beer.breweries, 6)

#final dataset
beer.breweries.state.clean <- beer.breweries
