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