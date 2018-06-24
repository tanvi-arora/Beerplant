#input, output, purpose
#add header 


# Report the number of NA's in each column.


#change column names 
colnames(beer) <- c("Beer_Name", "Beer_ID", "ABV", "IBU", "Brewery_ID", "Style", "Ounces")
colnames(breweries) <- c("Brewery_ID", "Brewery_Name", "Brewery_City", "Brewery_State")
str(beer)
str(breweries)

#merge beer dataset and breweries dataset
beer_breweries <- merge(beer, breweries, by=c("Brewery_ID"), all=TRUE)
str(beer_breweries)

# report number of NAs in each column 
colSums(is.na(beer_breweries))