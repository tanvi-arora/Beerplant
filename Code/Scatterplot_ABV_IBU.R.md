Code book for Code/Compare_ABV_IBU.R
Author : Rebecca Holsapple

R source code to plot and compare International Bitterness Unit (IBU) of beer and Alcohol Content Percent (ABV%)

source dataset :

Beers.csv
Breweries.csv
project datasets used :

beer.breweries.state.clean
objects created :

beer.stateABV - stores median ABV value of Beer in Breweries of each state in US
Brewery_State - State code | character | Ex : TX,DC,...
ABV - Median of ABV | numeric | 0.05,0.06,...
ABV_per - new field created to store ABV value in percentage | 5,6,...
beer.stateIBU - stores median IBU value of Beer in Breweries of each state in US
Brewer_State - State code| character | Ex : TX,DC,...
IBU - Median of IBU | numeric | 60,92,...
plots created : R package used is ggplot2 and scales

Barplot to map states to its median ABV% value stored in beer.stateABV
Barplot to map states to its median IBU value stored in beer.stateIBU
Parameters of plot :

ggplot
source dataset - beer.stateABV
variables used - Brewery_State , ABV_per
ordered by ABV_per using reorder
geom_bar - plots a barplot
stat = identity : uses datavalues as visual values
fill = color used to fill the bar plot
width = width of the bars
coord_flip - owing to the large number of states( 50), flipped the plot to put the group on y-axis and plot the bars horizontally
theme_bw() - bw theme allows to create a white background and use black boxes around the graph
ggtitle - Title of the graph
ylab - y-label is the label of the continuous variable - median , which after flipping shows on the x-axis
xab - x-label is the label of the grouped variable - State, which after flipping shows on the y-axis
