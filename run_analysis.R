# SETTING UP DATA DIRECTORY AND DATA

# Create data directory if it doesn't exist
if(!file.exists("data")) {
    dir.create("data")
}

# Downloading and extracting Dataset.zip
file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(file_url, destfile = "./data/temp.zip", method = "curl")
unzip('./data/temp.zip', exdir="./data")
unlink('/data/temp.zip')

# Load the different feature names (to be used as variable names)
features <- read.table('./data/UCI HAR Dataset//features.txt', sep="", col.names=c('num', 'features'))

# Load test set
test_set <- read.table('./data/UCI HAR Dataset//test/X_test.txt', sep="", col.names=features$features, nrows=1)
y_test <- read.table('./data/UCI HAR Dataset//test/Y_test.txt', sep="")
subject_test <- read.table('./data/UCI HAR Dataset//test/subject_test.txt', sep="")

# Load train set
train_set <- read.table('./data/UCI HAR Dataset//train/X_train.txt', sep="", col.names=features$features, nrows=1)
y_train <- read.table('./data/UCI HAR Dataset//train/Y_train.txt', sep="")
subject_train <- read.table('./data/UCI HAR Dataset//train/subject_train.txt', sep="")