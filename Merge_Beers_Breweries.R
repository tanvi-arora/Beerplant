#2. Merge beer data with the breweries data. Print the first 6
#observations and the last six observations to check the merged file.

getwd()

## load Dataset - Beers.csv
beer <- read.csv('Data/Beers.csv', header=TRUE)

##structure of beer dataset
str(beer)
## summary of Beer dataset
summary(beer)

## load Dataset - Brewries.csv
breweries <- read.csv('Data/Breweries.csv', header=TRUE)

##structure of breweries dataset
str(breweries)
## summary of breweies dataset
summary(breweries)

#change column names 
colnames(beer) <- c("Beer_Name", "Beer_ID", "ABV", "IBU", "Brewery_ID", "Style", "Ounces")
colnames(breweries) <- c("Brewery_ID", "Brewery_Name", "Brewery_City", "Brewery_State")
str(beer)
str(breweries)

#merge beer dataset and breweries dataset
beer_breweries <- merge(beer, breweries, by=c("Brewery_ID"), all=TRUE)
str(beer_breweries)

#print first and last 6 observations to check merged file
head(beer_breweries, 6)
tail(beer_breweries, 6)
