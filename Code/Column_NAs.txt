Codebook for Code/Column_NAs.R
Author: Anjli Solsi

R source code to report the number of NA's and blanks in each of the beers and breweries datasets.

Source Datafiles:

Beers.csv
Breweries.csv

Objects Used:

beer - contains the original data from the beer dataset
	Dimensions: 2410 rows, 7 columns 
breweries - contains the original data from the breweries dataset
		Dimensions: 558 rows, 4 columns

Objects Created: 

No objects were created

Functions Used:

colSums(): sum columns for numeric arrays or data frames 
is.na(): indicate which elements are missing 
which(): used to identify the condition noted within the function in the dataset
	 Since the missing values for the variable Style are not NA, this function is used to identify the blank values.



