### Code book for Code/Compare_ABV_IBU.R
**Author :** Tanvi Arora

R source code to compare Alcohol Content(ABV) and International Bitterness Unit ( IBU ) of beer

**source dataset :** 
1) Beers.csv
2) Breweries.csv

**project datasets used :**
1) beer.breweries.state - This dataset is created in Merge_Beers_Breweries.R and combines beer dataset with breweries and stateinfo.

**objects created :**
1. beer.stateABV - stores median ABV value of Beer in Breweries of each state in US
    1. Brewery_State - State code | character | Ex : TX,DC,...
    2. Median_ABV - Median of ABV | numeric | 0.05,0.06,...
    3. Median_ABV_percentage - new field created to store ABV value in percentage | 5,6,...
2. beer.stateIBU - stores median IBU value of Beer in Breweries of each state in US
    1. Brewer_State - State code| character | Ex : TX,DC,...
    2. Median_IBU - Median of IBU | numeric | 60,92,...
    
**plots created :**
R package used is ggplot2

1. Barplot to map states to its median ABV% value stored in beer.stateABV
2. Barplot to map states to its median IBU value stored in beer.stateIBU

*Parameters of barplot for ABV :* 
1. ggplot  
   1. source dataset - beer.stateABV 
   2. variables used - Brewery_State , Median_ABV_Percentage 
   3. ordered by Median_ABV_Percentage using reorder   
2. geom_bar - plots a barplot 
   1. stat = identity : uses datavalues as visual values 
   2. fill = color used to fill the bar plot 
   3. width = width of the bars 
3. coord_flip - owing to the large number of states( 50), flipped the plot to put the group on y-axis and plot the bars horizontally 
4. theme_bw() - bw theme allows to create a white background and use black boxes around the graph 
5. ggtitle -  Title of the graph 
6. ylab - y-label is the label of the continuous variable - median , which after flipping shows on the x-axis 
7. xab - x-label is the label of the grouped variable - State, which after flipping shows on the y-axis 

*Parameters of barplot for Median IBU :*
1. ggplot  
   1. source dataset - beer.stateIBU 
   2. variables used - Brewery_State , Median_IBU 
   3. ordered by Median_IBU using reorder   
2. geom_bar - plots a barplot 
   1. stat = identity : uses datavalues as visual values 
   2. fill = color used to fill the bar plot 
   3. width = width of the bars 
3. coord_flip - owing to the large number of states( 50), flipped the plot to put the group on y-axis and plot the bars horizontally 
4. theme_bw() - bw theme allows to create a white background and use black boxes around the graph 
5. ggtitle -  Title of the graph 
6. ylab - y-label is the label of the continuous variable - median , which after flipping shows on the x-axis 
7. xab - x-label is the label of the grouped variable - State, which after flipping shows on the y-axis 
    
 



