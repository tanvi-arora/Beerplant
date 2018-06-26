### Code book for Code/Column_NAs.R
**Author :** Anjli Solsi

R source code to report the number of NA's and blanks in each of the beers and breweries datasets.

**Source Datafiles :** 
1) Beers.csv
2) Breweries.csv

**Objects Used :**
1) beer - contains the original data from the beer dataset
	  Dimensions: 2410 rows, 7 columns
2) breweries - contains the original data from the breweries dataset
		Dimensions: 558 rows, 4 columns

**Objects Created :**
No objects were created

**Functions Used :**
1. *colnames()*: change column names of an object
2. *colSums()*: sum columns for numeric arrays or data frames  
2. *is.na()*: indicate which elements are missing 
3. *length()*, *which()*: get the length of an object, used to identify the condition noted within the function in the dataset
	Since the missing values for the variable Style are not NA, this function is used to identify and count the blank values.
