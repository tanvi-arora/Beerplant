###########################################################################################
# R code to Create a Scatterplot comparing Alcohol Content and Bitterness of Beer
## Author : Rebecca Holsapple
## Created Date : 06/24/2018
## This script uses the source file breweries.csv  to determine the number of breweries  
## in each US state and to generate a barchart of brewery count by state.
###########################################################################################

## @knitr scatterplotabvibu

# Scatterplot of Beer Bitterness vs Alcohol Content

ggplot(beer.breweries.state.clean, aes(beer.breweries.state.clean$ABV, beer.breweries.state.clean$IBU)) +
  geom_point(shape=18, color="maroon4")+
  geom_smooth(method=lm,  linetype="dashed", color="darkred", fill="blue") +
  scale_color_gradient() +
  theme_bw() +
  ggtitle("Scatterplot Beer Bitterness vs Alcohol Content") + ylab("Bitterness of Beer")   + xlab("Alcohol Content")