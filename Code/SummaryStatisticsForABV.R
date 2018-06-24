
##############################################################################################
## R code to list summary statistics for beer ABV
## Author : Anne Francomano
## Created Date : 06/24/2018
## This script uses the source file beer to determine the summary statistics for the ABV
## metric based on a merged dataset comprised of the beers.csv and breweries.csv source files.
##############################################################################################

## @knitr summarystatsabv

#get the statistical summary for the ABV metric from the final merged dataset
beer.stats.abv <- summary(beer.breweries.state.clean$ABV)
beer.stats.abv
