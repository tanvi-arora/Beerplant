################################################################
## R code for reporting the number of NAs in each column of the individual beer and breweries datasets
## Author : Anjli Solsi
## Created Date : 06/24/2018
## This script counts and reports the number of NAs in each column of the individual beer and breweries datasets.
## 
################################################################

## @knitr columnNAs

#change column names 
colnames(beer) <- c("Beer_Name", "Beer_ID", "ABV", "IBU", "Brewery_ID", "Style", "Ounces")
colnames(breweries) <- c("Brewery_ID", "Brewery_Name", "Brewery_City", "Brewery_State")
names(beer)
names(breweries)

#report number of NAs in beer and breweries dataset
colSums(is.na(beer))
colSums(is.na(breweries))
#identify the records with blank values for the variable Style in the beer dataset
#beer[which(beer$Style==''),]
length(which(beer$Style==''))

#merge beer dataset and breweries dataset
##beer.breweries <- merge(beer, breweries, by=c("Brewery_ID"), all=TRUE)

#validate merged dataset 
##str(beer.breweries)
##dim(beer.breweries)

#report number of NAs in each column of merged dataset
##colSums(is.na(beer_breweries))

