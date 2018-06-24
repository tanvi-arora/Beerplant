################################################################
## R code for finding state with max ABV and IBU
## Author : Tanvi Arora
## Created Date : 06/24/2018
##  
################################################################

## @knitr maxABV_IBU_state

# sort beer.brweries.state.cean dataset in decreasing order of ABV
beer.stateABV.sorted <- beer.breweries.state.clean[order(-beer.breweries.state.clean$ABV),]

# State with highest  value of ABV
beer.stateABV.sorted[1,c("Brewery_State","ABV")]

# sort beer.brweries.state.cean dataset in decreasing order of IBU
beer.stateIBU.sorted <- beer.breweries.state.clean[order(-beer.breweries.state.clean$IBU),]

# State with highest  value of IBU
beer.stateIBU.sorted[1,c("Brewery_State","IBU")]

