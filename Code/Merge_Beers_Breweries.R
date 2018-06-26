################################################################
## R code for merging the beer and breweries datasets 
## Author : Anjli Solsi
## Created Date : 06/24/2018
## This script joins the dataset beer with the breweries dataset. It prints the first 6 observations and last 6 observations of the merged dataset.
################################################################ 

## @knitr mergedatasets

#Remove leading spaces from  Brewery_State data in breweries dataset
#create a function to remove leading or trailing whitespaces
trim <- function(x) gsub("^\\s|\\s+$","",x)

breweries$Brewery_State1 <- trim(breweries$Brewery_State)

#merge beer dataset and breweries dataset
beer.breweries <- merge(beer, breweries, by=c("Brewery_ID"), all=TRUE)

#validate merged dataset 
str(beer.breweries)
dim(beer.breweries)

#merge beer.breweries with the state information dataset 
beer.breweries.state <- merge(beer.breweries, state.info, by.x="Brewery_State1", by.y="State", all = TRUE)

#validate merged dataset
str(beer.breweries.state)
dim(beer.breweries.state)

#print first and last 6 observations to check merged file
head(beer.breweries, 6)
tail(beer.breweries, 6)

summary(beer.breweries.state)

#final dataset
beer.breweries.state.clean <- beer.breweries

#merge breweries with the state information dataset 
breweries.state <- merge(breweries, state.info, by.x="Brewery_State1", by.y="State", all = TRUE)
