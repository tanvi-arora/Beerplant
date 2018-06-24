## This script loads input dataset
## load Dataset - Beers.csv 

#getwd()
## @knitr loaddataset
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