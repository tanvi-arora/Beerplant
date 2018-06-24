###########################################################################################
# R code to Create a Scatterplot comparing Alcohol Content and Bitterness of Beer
## Author : Rebecca Holsapple
## Created Date : 06/24/2018
## This script uses the source file breweries.csv  to determine the number of breweries  
## in each US state and to generate a barchart of brewery count by state.
###########################################################################################

## @knitr scatterplotabvibu

# Scatterplot
plot(beer.breweries.state.clean$ABV, beer.breweries.state.clean$IBU, xlab = "Alcohol Content", ylab = "Bitterness of Beer")

# linear regression model
abline(lm(beer.breweries.state.clean$IBU ~ beer.breweries.state.clean$ABV))