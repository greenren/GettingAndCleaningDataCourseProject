# 0. DOWNLOAD AND EXTRACT DATA SET

# Downloading and extracting Dataset.zip
if (!"UCI HAR Dataset" %in% dir()){
    file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(file_url, destfile = "./temp.zip", method = "curl")
    unzip('./temp.zip', exdir="./")
    unlink('/temp.zip')
}



# 1. MERGE THE TEST AND TRAINING SETS INTO ONE DATA SET

# (4. LABEL THE DATA WITH DESCRIPTIVE VARIABLE NAMES)
# Load the different feature names (to be used as variable names in the columns)
features <- read.table('./UCI HAR Dataset//features.txt', sep="", col.names=c('index', 'features'))
# Remove punctuation from the feature names, to make it R appropriate
features$features <- gsub("[[:punct:]]", "", features$features)

# Load test set data and train data and merge into one dataframe (using rbind)
test_set <- read.table('./UCI HAR Dataset//test/X_test.txt', sep="", col.names=features$features)
train_set <- read.table('./UCI HAR Dataset//train/X_train.txt', sep="", col.names=features$features)
dataset <- rbind(test_set, train_set)

# Load subject data for the test and train sets, merge them into one column (using rbind) 
# and add to the larger data frame
test_set_subject <- read.table('./UCI HAR Dataset//test/subject_test.txt', sep="")
train_set_subject <- read.table('./UCI HAR Dataset//train/subject_train.txt', sep="")
subject <- rbind(test_set_subject, train_set_subject)
dataset$subject <- unlist(subject)    # Unlisted to make sure it remains an atomic vector column (instead of a data.frame)

# Load activity data for the test and train sets, merge them into one column (using rbind) 
# and add to the larger data frame
test_set_activity <- read.table('./UCI HAR Dataset//test/Y_test.txt', sep="")
train_set_activity <- read.table('./UCI HAR Dataset//train/Y_train.txt', sep="")
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
activity_labels <- read.table('./UCI HAR Dataset//activity_labels.txt', sep="", col.names=c('num', 'activity_labels'))
labels <- activity_labels$activity_labels
# With sapply transform the numbers in the activity column to the activity names
dataset_sub$activity <- sapply(dataset_sub$activity, function(x){labels[x]})



# 4. LABEL THE DATA WITH DESCRIPTIVE VARIABLE NAMES
# Already completed in Step 1, by using the features in features.txt as column names for the dataset
# Also removed punctuation from the column names to make them suitable for R.



# 5. CREATE A SECOND, TIDY DATA SET WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT

# Reshape the data by
# First melting the data, using the activity and subject columns as ids
library(reshape2)
dataset_melt <- melt(dataset_sub, id=c('activity', 'subject'))
# Second casting the data for each activity and for each subject, calculating the mean for each variable
tidy_data <- dcast(dataset_melt, activity + subject ~ variable, mean)

# Save the tidy dataset in a text file without row.names
write.table(tidy_data, file="tidy_data.txt", row.names=FALSE)