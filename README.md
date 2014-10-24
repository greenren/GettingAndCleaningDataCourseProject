#Getting And Cleaning Data Course Project
===================================

The run_analysis.R script transforms the [*Human Activity Recognition Using Smartphones 
Data Set*] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
into a tidy data set. This tidy data set lists, for each subject and each activity, the average mean 
and standard deviation of the measurements in the original data set.

To read more about the variables in the tidy data set, read the CodeBook.md file.

What follows is a description of the different steps in the run_analysis.R script that result
in the tidy data set.

##0. Download and extract data set
The script verifies whether the *Human Activity Recognition Using Smartphones Data Set* has
been downloaded. If not, it downloads a zip file of the data and extracts this to the working directory. 

To skip this step in the script, manually download the data from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
and extract it to your working directory. There should then be a folder in your working directory
called "UCI HAR Dataset". The script will then skip this step.

##1. Merge the test and training sets into one data set
The data in the "UCI HAR Dataset" is distributed into two sets (a test set and a training set) 
and over different files. In this step the different sets and files are merged into one large data set.

First, to facilitate the overall data transformations in later stages, the names for the different measurements
are loaded from the 'features.txt' file. These variable names are also stripped from punctuation
to conform to the R variable naming convention. The case of the variables has, however, not been changed to all lowercase because it would affect readability.
These feature variables are used as column names in the next step.

Second, the Test and Training sets are loaded from 'test/X_test.txt' and 'train/X_train.txt' 
and merged into one dataframe. 

Third, the subject data that corresponds to the different measurements is loaded from the 'test/subject_test.txt' 
and 'train/subject_train.txt' files. Merged into one long column and added to the dataframe
that already contains the test and training data, as 'subject'.

Finally, the different activity labels are loaded from 'test/y_test.txt' and 'train/y_train.txt'.
These labels are also merged into one long column and added to the large dataframe as 'activity'.


##2. Extract only the measurements on the mean and standard deviation for each measurement
To extract only the mean and standard deviation for each measurement, grep is used to identify
which columns include the words 'mean' and 'std'. This identification is then used to subset
the large dataset, while also including the 'subject' and 'activity' variables. 

It has been decided to include all measurements of means (i.e., all mentions of the word 'mean'), 
so the averages between vectors, that are part of the 'angle' variable, are also included. 
If in your analysis these variables should be excluded, remove the following variable names from the
tidy data set: "angletBodyAccMeangravity", "angletBodyAccJerkMeangravityMean", "angletBodyGyroMeangravityMean", "angletBodyGyroJerkMeangravityMean", "angleXgravityMean",
"angleYgravityMean", "angleZgravityMean".

##3. Use descriptive activity names to name the activities in the data set
In this step the labels for the different activities, which can be found in the 'activity_labels.txt' file,
are mapped onto the numerical coding of the 'activity' variable. In this way, the column now shows the different
labels of the activities as strings.

##4. Label the data with descriptive variable names
This step has already been completed when loading the datasets in step 1.


##5. Create the tidy data set with the average of each variable for each activity and each subject
In the last step, the reshape2 package is used to first melt the dataset using the 'activity' 
and 'subject' variables as ids (Note that for this step the reshape2 package should be installed already):

```R
dataset_melt <- melt(dataset_sub, id=c('activity', 'subject'))
```
Then the dataset is recast, calculating the mean for each variable for each activity and each subject:
```R
tidy_data <- dcast(dataset_melt, activity + subject ~ variable, mean)
```
The result is a dataframe with 180 rows (6 activities * 30 subjects)


This tidy data set is then saved as 'tidy_data.txt' in the working directory.

Finally, to load and view the tidy data set in R, run this code:

```R
data <- read.table("tidy_data.txt", header = TRUE) 
View(data)
```


###License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.