#input, output, purpose
#add header 

## @knitr mergedatasets
#Merge beer data with the breweries data. Print the first 6
#observations and the last six observations to check the merged file.

#change column names 
colnames(beer) <- c("Beer_Name", "Beer_ID", "ABV", "IBU", "Brewery_ID", "Style", "Ounces")
colnames(breweries) <- c("Brewery_ID", "Brewery_Name", "Brewery_City", "Brewery_State")
str(beer)
str(breweries)

#create state information dataset using available R dataset
state.info <- cbind.data.frame(state.abb, state.name, state.region)
names(state.info) <- c("State", "State_Name", "State_Region")

#merge beer dataset and breweries dataset
beer.breweries <- merge(beer, breweries, by=c("Brewery_ID"), all=TRUE)

#validate merged dataset 
str(beer.breweries)
dim(beer.breweries)

#create ........
beer.breweries.state <- merge(beer.breweries, state.info, by.x='Brewery_State', by.y='State', all=TRUE)

#validate merged dataset
str(beer.breweries.state)
dim(beer.breweries.state)

#print first and last 6 observations to check merged file
head(beer.breweries.state, 6)
tail(beer.breweries.state, 6)

#final dataset
beer.breweries.state.clean <- beer.breweries.state
