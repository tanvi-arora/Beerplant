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
## @knitr loadbeerdataset
beer <- read.csv('Data/Beers.csv', header=TRUE)

##structure of beer dataset

str(beer)

## @knitr loadbrewdataset
## load Dataset - Brewries.csv

breweries <- read.csv('Data/Breweries.csv', header=TRUE)

##structure of breweries dataset

str(breweries)

## @knitr loadstatedataset
#create state information dataset using available R dataset
state.info <- cbind.data.frame(state.abb, state.name, state.region)
names(state.info) <- c("State", "State_Name", "State_Region")

#validate state.info dataset created correctly
str(state.info)


