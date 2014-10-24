# 0. SETTING UP DATA DIRECTORY AND DOWNLOAD DATASET

# Create data directory if it doesn't exist
if(!file.exists("data")) {
    dir.create("data")
}

# Downloading and extracting Dataset.zip
file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(file_url, destfile = "./data/temp.zip", method = "curl")
unzip('./data/temp.zip', exdir="./data")
unlink('/data/temp.zip')



# 1. MERGE THE TEST AND TRAINING SETS INTO ONE DATA SET

# (4. LABEL THE DATA WITH DESCRIPTIVE VARIABLE NAMES)
# Load the different feature names (to be used as variable names in the columns)
features <- read.table('./data/UCI HAR Dataset//features.txt', sep="", col.names=c('index', 'features'))
# Remove punctuation from the feature names, to make it R appropriate
features <- gsub("[[:punct:]]", "", features$features)

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



# 2. EXTRACT ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT

# Use grep to identify the column variables that measure the mean and standard deviation
# Also include the activity and subject columns.
column_variables <- grep("mean|std|^activity$|^subject$", colnames(dataset), ignore.case=TRUE)

# Subset the large dataset to only include the columns with means, standard deviations
# as well as the activity and subject columns.
dataset_sub <- dataset[, column_variables]



# 3. USE DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN THE DATA SET

# Load the activity labels from activity_labels.txt and put the labels in a vector
activity_labels <- read.table('./data/UCI HAR Dataset//activity_labels.txt', sep="", col.names=c('num', 'activity_labels'))
labels <- activity_labels$activity_labels
# With sapply transform the numbers in the activity column to the activity names
dataset_sub$activity <- sapply(dataset_sub$activity, function(x){labels[x]})



# 4. LABEL THE DATA WITH DESCRIPTIVE VARIABLE NAMES
# Already completed in Step 1, by using the features in features.txt as column names for the dataset
# Also removed punctuation from the column names to make them suitable for R.







