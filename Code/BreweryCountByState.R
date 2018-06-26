
###########################################################################################
## R code to list number of breweries by state
## Author : Anne Francomano
## Created Date : 06/24/2018
## This script uses the source file breweries.csv  to determine the number of breweries  
## in each US state and to generate a barchart of brewery count by state.
###########################################################################################

## @knitr countbystate

#Get the list of brewery counts for each state and verify the output contains one entry per state
count <- table(breweries.state$State_Name)
dim(count)

#Convert the count object to a dataframe, set its column names, verify the structure and contents
brew.count.state <- data.frame(count)
colnames(brew.count.state) <- c("State_Name", "Brewery_Count")
str(brew.count.state)
#brew.count.state

#Sort brew.count.state in descending order by brewery count and 
 
sortdescbybrewcount <- brew.count.state[order(-brew.count.state$Brewery_Count),]   
sortdescbybrewcount

# Plot the brewery list by state in a barchart in descending order by brewery count.
# Note:  even though the sortdescbybrewcount dataframe is already in descending order, ggplot
# must still be told the specific sort to use;  this is achieved with "reorder" segment
ggplot(sortdescbybrewcount,aes(x=reorder(State_Name,-Brewery_Count), y=Brewery_Count)) + 
          geom_bar(stat="identity", width=.5, fill="lightseagreen") + 
          labs(title="Brewery Count for Each US State", 
               caption="source: breweries.csv") + 
          theme(axis.text.x = element_text(angle=65, vjust=0.6)) + ylab("Number of Breweries")+ xlab("US States")
