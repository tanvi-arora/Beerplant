################################################################
## R code for comparing Alcohol COntent ( ABV ) and International Bitterness Unit ( IBU ) of beer
## Author : Tanvi Arora
## Created Date : 06/23/2018
## This script loads input datasets beer.csv and breweries.csv
## 
################################################################

## This script loads input dataset
## load Dataset - Beers.csv 

#getwd()
## @knitr loaddataset
beer <- read.csv('Data/Beers.csv', header=TRUE)

##structure of beer dataset

str(beer)


## load Dataset - Brewries.csv

breweries <- read.csv('Data/Breweries.csv', header=TRUE)

##structure of breweries dataset

str(breweries)

