### Code book for Code/BreweryCountByState.R
**Author :** Anne Francomano

R source code to determine the number of breweries in each US state and to generate a barchart of brewery count with respect to each state.

**source dataset :** 
1) Breweries.csv

**project datasets used :**
1) breweries.state

**objects created :**
1. count - table storing list of US state abbreviations and corresponding number of breweries
    Each entry of 51 total entries is a combination of a char, representing US state name, and an int, indicating the respective brewery count  
    Ex : count[1] = AL 3
2. brew.count.state - dataframe storing list of US state names and corresponding number of breweries;  created by converting count to a dataframe
    1. State - US State name| character | Ex : Alaska,Alabama,...
    2. Brewery_Count - number of breweries in respective state | numeric | 3,11,...
3. sortdescbybrewcount - sorted dataframe storing list of US state names and corresponding number of breweries in descending order by Brewery_Count field;  created by sorting brew.count.state dataframe.
    1. State - US State name| character | Ex : Alaska,Alabama,...
    2. Brewery_Count - number of breweries in respective state | numeric | 3,11,...

**plots created :**
R package used is ggplot2

1. Vertical bar chart of  the number of breweries by US state

*Parameters of plot :* 
1. ggplot  
   1. source dataset - sortdescbybrewcount 
   2. variables used - State, Brewery_Count
   3. ordered by Brewery_Count using reorder   
2. geom_bar - plots a barplot 
   1. stat = identity : uses datavalues as visual values 
   2. fill = color used to fill the bar plot 
   3. width = width of the bars 
3. title -  Title of the bar chart
4. axis.text.x - allows manipulation of x axis text
   1. element_text with angle option allows user to specify display of state names at angle to the x-axis for legibility
5. ylab - y-label is the label of the continuous variable - count of breweries
6. xab - x-label is the label of the grouped variable - State 
    
