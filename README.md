#Getting And Cleaning Data Course Project
===================================

The run_analysis.R script transforms the [*Human Activity Recognition Using Smartphones 
Data Set*] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
into a tidy data set. This tidy data set lists, for each subject and each activity, the average mean 
and standard deviation of the measurements in the original data set.

The 

0. SETTING UP DATA DIRECTORY AND DOWNLOAD DATASET
1. MERGE THE TEST AND TRAINING SETS INTO ONE DATA SET
2. EXTRACT ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT
3. USE DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN THE DATA SET
4. LABEL THE DATA WITH DESCRIPTIVE VARIABLE NAMES
5. CREATE THE TIDY DATA SET WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT


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