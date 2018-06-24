################################################################
## R code for comparing Alcohol COntent ( ABV ) and International Bitterness Unit ( IBU ) of beer
## Author : Tanvi Arora
## Created Date : 06/24/2018
## This script joins dataset beer and breweries and compares median of ABV and IBU for beer from each state
## 
################################################################


## @knitr medianABVIBU
# median of ABV per state
beer.stateABV <- aggregate( ABV ~ Brewery_State, data=beer.breweries.state.clean , median)
beer.stateABV$ABV_per <- beer.stateABV$ABV * 100

# convert ABV value to percent

head(beer.stateABV)
# median of IBU per state
beer.stateIBU <- aggregate( IBU ~ Brewery_State, data=beer.breweries.state.clean , median)
head(beer.stateIBU)



##  @knitr barplotABVIBU

# barplot that maps median of ABV percentage per state 
ggplot(beer.stateABV, aes(reorder(Brewery_State,ABV_per),ABV_per)) + geom_bar(stat="identity" , fill = "salmon" ,width = 0.5)  + coord_flip()  + theme_bw() + ggtitle("ABV% of beer vs State") + ylab("ABV Percentage")   + xlab("State")

# barplot that maps median of IBU per state
ggplot(beer.stateIBU, aes(reorder(Brewery_State,IBU),IBU)) + geom_bar(stat="identity" , fill = "thistle" ,width = 0.5)  + coord_flip()  + theme_bw() + ggtitle("IBU of beer vs State") + ylab("IBU")   + xlab("State")
