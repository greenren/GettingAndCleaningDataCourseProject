# SETTING UP DATA DIRECTORY AND COMPLETE DATASET

# Create data directory if it doesn't exist
if(!file.exists("data")) {
    dir.create("data")
}

# Downloading and extracting Dataset.zip
file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(file_url, destfile = "./data/temp.zip", method = "curl")
unzip('./data/temp.zip', exdir="./data")
unlink('/data/temp.zip')

# Load the different feature names (to be used as variable names in the columns)
features <- read.table('./data/UCI HAR Dataset//features.txt', sep="", col.names=c('num', 'features'))

# Load test set data and train data and merge into one dataframe (using rbind)
test_set <- read.table('./data/UCI HAR Dataset//test/X_test.txt', sep="", col.names=features$features)
train_set <- read.table('./data/UCI HAR Dataset//train/X_train.txt', sep="", col.names=features$features)
dataset <- rbind(test_set, train_set)

# Load subject data for the test and train sets, merge them into one column (using rbind) 
# and add to the larger data frame
test_set_subject <- read.table('./data/UCI HAR Dataset//test/subject_test.txt', sep="")
train_set_subject <- read.table('./data/UCI HAR Dataset//train/subject_train.txt', sep="")
subject <- rbind(test_set_subject, train_set_subject)
dataset$subject <- subject

# Load activity data for the test and train sets, merge them into one column (using rbind) 
# and add to the larger data frame
test_set_activity <- read.table('./data/UCI HAR Dataset//test/Y_test.txt', sep="")
train_set_activity <- read.table('./data/UCI HAR Dataset//train/Y_train.txt', sep="")
activity <- rbind(test_set_activity, train_set_activity)
dataset$activity <- activity





