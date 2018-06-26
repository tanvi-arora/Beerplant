################################################################
## R code for comparing Alcohol COntent ( ABV ) and International Bitterness Unit ( IBU ) of beer
## Author : Tanvi Arora
## Created Date : 06/24/2018
## This script joins dataset beer and breweries and compares median of ABV and IBU for beer from each state
## 
################################################################


## @knitr medianABV
# median of ABV per state
beer.stateABV <- aggregate( ABV ~ State_Name, data=beer.breweries.state , median)
# convert ABV value to percent
beer.stateABV$ABV_per <- beer.stateABV$ABV * 100

# rename field names for beer.stateABV
names(beer.stateABV) <- c("State_Name","Median_ABV","Median_ABV_Percentage")

# display first few records for beer.stateABV
head(beer.stateABV)

## @knitr medianIBU
# median of IBU per state
beer.stateIBU <- aggregate( IBU ~ State_Name, data=beer.breweries.state , median)
# rename field names for beer.stateIBU
names(beer.stateIBU) <- c("State_Name","Median_IBU")

# display first few records for beer.stateIBU
head(beer.stateIBU)



## @knitr barplotABVIBU

# barplot that maps median of ABV percentage per state 

ggplot(beer.stateABV, aes(reorder(State_Name,Median_ABV_Percentage),Median_ABV_Percentage)) + geom_bar(stat="identity" , fill = "salmon" ,width = 0.5)  + coord_flip()  + theme_bw() + ggtitle(" Alcohol Content in US States") + ylab(" Median Alcohol Content(ABV) Percentage")   + xlab("US States")

# barplot that maps median of IBU per state

ggplot(beer.stateIBU, aes(reorder(State_Name,Median_IBU),Median_IBU)) + geom_bar(stat="identity" , fill = "thistle" ,width = 0.5)  + coord_flip()  + theme_bw() + ggtitle(" Bitterness of Alcohol in US States") + ylab(" Median Bitterness of Alcohol(IBU)")   + xlab("US States")
