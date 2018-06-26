###########################################################################################
# R code to Create a Scatterplot comparing Alcohol Content and Bitterness of Beer
## Author : Rebecca Holsapple
## Created Date : 06/24/2018
## This script creates a scatterplot of Beer IBU and ABV
###########################################################################################

## @knitr scatterplotabvibu

# Scatterplot of IBU vs ABV Percent, with Customer Median Reference Point (red), and a linar model and confidence interval

IBU.ABV.relation <- ggplot(beer.breweries.state.clean, aes(beer.breweries.state.clean$ABV, beer.breweries.state.clean$IBU)) +
  geom_point(shape=18, color="maroon4")+
  geom_point(aes(x= .0825, y = 32.5), color="darkblue", size = 5)+
  geom_smooth(method=lm,  linetype="dashed", color="forestgreen", fill="darkblue") +
  scale_color_gradient() +
  theme_bw() +
  scale_x_continuous(labels = percent) +
  ggtitle("US IBU vs ABV%, with Customer Median Reference point (dark blue)") + ylab("Bitterness of Beer(IBU)") + xlab("Alcohol Content Percent (ABV%)")
