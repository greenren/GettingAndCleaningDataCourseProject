#Getting And Cleaning Data Course Project
===================================

The run_analysis.R script transforms the [*Human Activity Recognition Using Smartphones 
Data Set*] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
into a tidy data set. This data set lists, for each subject and activity, the average mean 
and standard deviation of the measurements in the original data set.

The 

0. 
1.
2. 
3.
4.
5.


To read more about the variables in the tidy data set, read the CodeBook.md file.


##0.

##1.

##2.


##3.


##4. 


##5.



Finally, to load and view the data in R, run this code:

```R
data <- read.table("tidy_data.txt", header = TRUE) 
View(data)
```